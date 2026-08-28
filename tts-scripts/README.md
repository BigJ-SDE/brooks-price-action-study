# TTS 语音复习稿

<!-- ai-organized：本文件夹存放根据 raw-notes/ 改写成的口语化文字稿，用于配合 generate-audio.ps1 生成 MP3，供只用耳朵回顾一节课要点时使用。 -->

## 用途

- 文字稿（`VideoXX-tts-script.md`）：由 AI 根据对应的 `raw-notes/VideoXX-raw-note.md` 改写而成，把原始笔记中的关键词、我的理解、Brooks 指向的图表说明，改写成适合朗读、适合只靠听觉理解的连贯口语文字。
- 文字稿仍然保留来源区分（课件原文 / 我的理解 / 待确认疑问），只是用口语化的方式表达，不是逐字照搬 raw note 的项目符号格式。
- 如果文字稿的转述与原始笔记有出入，以 `raw-notes/` 中的原始笔记为准；文字稿状态视为 `ai-organized`/`ai-derived`，`needs-review`。

## 生成 MP3

使用 [generate-audio.ps1](generate-audio.ps1)：

```powershell
./generate-audio.ps1 -ScriptPath ./Video08A-tts-script.md
```

- 默认使用系统自带的 SAPI 中文语音（Microsoft Huihui Desktop），离线运行，不需要联网或安装额外软件。
- 会先在同目录生成一个 `.wav` 文件；如果系统 PATH 中能找到 `ffmpeg`，会自动转换为 `.mp3` 并删除中间的 `.wav`（可用 `-KeepWav` 保留）。
- 如果没有安装 `ffmpeg`，脚本会提示可以用 `winget install ffmpeg` 安装，之后只保留 `.wav` 文件（可以直接播放，只是不是 mp3 格式）。

## 命名规则

```
VideoXX-tts-script.md
```

例如：`Video08A-tts-script.md`，对应 `raw-notes/Video08A-raw-note.md`。
