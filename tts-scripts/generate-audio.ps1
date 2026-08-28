#Requires -Version 5.1
<#
.SYNOPSIS
    将 tts-scripts/ 下的口语化文字稿转换为语音文件（wav，若有 ffmpeg 则转为 mp3）。

.PARAMETER ScriptPath
    文字稿 markdown/文本文件的路径。

.PARAMETER OutputName
    输出音频文件的基础名（不含扩展名）。默认使用文字稿文件名。

.PARAMETER Voice
    SAPI 语音名称，默认使用系统自带的中文语音 "Microsoft Huihui Desktop"。

.PARAMETER Rate
    朗读速度，范围 -10（慢）到 10（快），默认 0。

.PARAMETER KeepWav
    转换为 mp3 后仍保留中间生成的 wav 文件。

.EXAMPLE
    ./generate-audio.ps1 -ScriptPath ./Video08A-tts-script.md
#>
param(
    [Parameter(Mandatory = $true)]
    [string]$ScriptPath,

    [string]$OutputName,

    [string]$Voice = "Microsoft Huihui Desktop",

    [ValidateRange(-10, 10)]
    [int]$Rate = 0,

    [switch]$KeepWav
)

if (-not (Test-Path -LiteralPath $ScriptPath)) {
    throw "找不到文字稿文件：$ScriptPath"
}

$ScriptPath = (Resolve-Path -LiteralPath $ScriptPath).Path
if (-not $OutputName) {
    $OutputName = [System.IO.Path]::GetFileNameWithoutExtension($ScriptPath)
}
$outDir = Split-Path -Parent $ScriptPath
$wavPath = Join-Path $outDir "$OutputName.wav"
$mp3Path = Join-Path $outDir "$OutputName.mp3"

# 读取文字稿，去掉 markdown 标记（标题符号、列表符号、加粗、链接、HTML 注释），避免朗读时读出符号本身
$rawText = Get-Content -LiteralPath $ScriptPath -Raw -Encoding UTF8
$text = $rawText
$text = $text -replace '<!--[\s\S]*?-->', ''          # 去掉 HTML 注释
$text = $text -replace '(?m)^#{1,6}\s*', ''            # 去掉标题的 # 符号
$text = $text -replace '(?m)^\s*[-*]\s+', ''            # 去掉无序列表符号
$text = $text -replace '\[([^\]]+)\]\([^)]+\)', '$1'    # [文字](链接) -> 文字
$text = $text -replace '\*\*([^*]+)\*\*', '$1'          # 去掉加粗
$text = $text -replace '`([^`]+)`', '$1'                # 去掉行内代码反引号

Add-Type -AssemblyName System.Speech
$synth = New-Object System.Speech.Synthesis.SpeechSynthesizer

$installedVoice = $synth.GetInstalledVoices() | Where-Object { $_.VoiceInfo.Name -eq $Voice }
if (-not $installedVoice) {
    Write-Warning "未找到语音 '$Voice'，使用系统默认语音。可用语音列表："
    $synth.GetInstalledVoices() | ForEach-Object { Write-Host "  $($_.VoiceInfo.Name) ($($_.VoiceInfo.Culture))" }
} else {
    $synth.SelectVoice($Voice)
}
$synth.Rate = $Rate

$synth.SetOutputToWaveFile($wavPath)
$synth.Speak($text)
$synth.SetOutputToDefaultAudioDevice()
$synth.Dispose()

Write-Host "已生成 WAV：$wavPath"

$ffmpeg = Get-Command ffmpeg -ErrorAction SilentlyContinue
if ($ffmpeg) {
    & ffmpeg -y -i $wavPath -codec:a libmp3lame -qscale:a 4 $mp3Path 2>$null
    if (Test-Path -LiteralPath $mp3Path) {
        Write-Host "已生成 MP3：$mp3Path"
        if (-not $KeepWav) {
            Remove-Item -LiteralPath $wavPath -Force
        }
    } else {
        Write-Warning "ffmpeg 转换失败，保留 wav 文件：$wavPath"
    }
} else {
    Write-Warning "未检测到 ffmpeg，暂时只生成了 wav 文件。如需 mp3，可运行：winget install ffmpeg，然后重新执行本脚本。"
}
