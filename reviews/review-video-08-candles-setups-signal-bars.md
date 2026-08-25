---
id: review-video-08-candles-setups-signal-bars
title: "复习 - Video 08A-08C Candles, Setups, and Signal Bars"
module: "Video08A-08C"
status: draft
source_lessons:
  - "../lessons/video-08a-trend-bars-and-signal-bars.md"
  - "../lessons/video-08b-reversal-bars-and-outside-bars.md"
  - "../lessons/video-08c-ttr-ioi-and-flags.md"
tags: [review, quiz, video-08]
---

# 复习 - Video 08A-08C Candles, Setups, and Signal Bars

<!-- 考试式复习：先独立作答，再展开文末"参考答案"核对。 -->

## 问题

1. Trend bar 与 Trading Range (TR) bar 的判断标准分别是什么？
2. 当无法明确判断一根 bar 的类型时，应该参考什么？
3. Signal bar 和 Entry bar 分别指什么？
4. 针对 sell signal bar 和 buy signal bar，挂单分别应该挂在哪个位置？
5. 为什么"强 signal bar"很少见（大约占比多少）？这对交易策略意味着什么？
6. Context 越好，对 signal bar 本身完美程度的要求会发生什么变化？
7. Buy/Sell reversal bar 的最低要求是什么？
8. 什么是 Bull/Bear reversal bar（最佳类型）？它和最低要求的 reversal bar 有什么区别？
9. 什么是 2 Bar Reversal 和 Multi Bar Reversal？它们在更高时间级别上会变成什么？
10. Outside bar (ob) 的定义是什么？
11. 为什么同一个 outside bar，在不同 context 下可能是陷阱，也可能是好的 2 bar reversal？
12. 什么是 TTR？为什么"如果 context 不好，TTR 更可能持续"？
13. ib、ii、iii、ioi、oio 这几种命名法分别代表什么组合？
14. 什么是 BOM（BreakOut Mode）？
15. 根据 Slide 23 和 Slide 24，ioi Bull Flag 在什么条件下概率更高？

## 尚未解决的疑问

- [../questions/PA-QUESTION-0011.md](../questions/PA-QUESTION-0011.md)（"sell stop order 买入"疑似笔误）
- [../questions/PA-QUESTION-0012.md](../questions/PA-QUESTION-0012.md)（buy signal bar "最低价"应为"收盘价"疑似理解偏差）

## 笔记间矛盾之处

- 目前未发现 Video08A-08C 笔记之间存在明显矛盾；Video08A 中两处笔误/理解偏差已记录为疑问，等待确认，不视为课件矛盾。

<details>
<summary>参考答案（做完题目再展开）</summary>

1. Trend bar：实体大、引线小，实体至少占 bar 长度 50%；TR bar：实体小、引线大，与前面 bar 重叠多，收盘多在中间。
2. 看 context：强趋势中的小实体更偏向 trend bar（尤其连续同方向、收盘在中点同侧）；横盘市场中较大实体仍是 TR bar。
3. Entry bar：实际入场所在的 bar；Signal bar：引发交易信号的前一根 bar。
4. Sell signal bar 之后，在其低点下方 1 tick/pip 挂卖单；buy signal bar 之后，在其高点上方 1 tick/pip 挂买单。
5. 大约只有 1% 的 bar 是强反转 bar；这意味着如果等待完美信号，就永远无法交易，必须接受不完美的 signal bar。
6. Context 越好，signal bar 本身的完美程度要求越低，弱 signal bar 也能带来好交易。
7. 收盘高于/低于中点，或高于/低于开盘。
8. Bull/Bear reversal bar 是最强类型：开盘接近/低于（或高于）前一根收盘价，收盘远高于（或低于）前一根收盘价，重叠少，跟进要求更严格；比最低要求的 reversal bar 盈利概率更高，但止损更大。
9. 反转跨越 2 根或以上 bar（不必连续）；在更高时间级别图上，它们会合并成单一的 reversal bar / signal bar。
10. 当前 bar 高点≥前一根高点，且低点≤前一根低点。
11. 因为 outside bar 本身止损远、风险大；如果左侧 context 不支持（如连续同方向趋势 bar 后突然出现），更可能是陷阱；如果 context 好（如前一根已是 signal bar），则更可能是高概率的 2 bar reversal。
12. TTR（Tight Trading Range）是小型紧密震荡区间；如果 context 不好，说明目前没有足够理由预期突破，因此更可能继续保持震荡状态。
13. ib：inside bar（相对前一根是 inside）；ii：连续 2 根 inside；iii：连续 3 根 inside；ioi：inside-outside-inside；oio：outside-inside-outside。
14. ii/iii 等重叠 K 线暂停形态，代表市场蓄力，可能是趋势延续，也可能是反转。
15. 当 ioi 回调到移动平均线附近（但不完全超过均线），且第三根 bar 是 ib（孕线）、收盘在高位时，是高概率的买入信号（Higher Probability If Bull Inside Bar）。

</details>
