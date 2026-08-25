---
id: PA-CONCEPT-0003
name: "Signal Bar / Entry Bar"
aliases: []
category: "trade-management"
status: confirmed
confidence: source-explicit
---

# Signal Bar / Entry Bar

## 简单定义

- （source-explicit，Video08A Slide 9）入场所在的 bar 是 entry bar；因前一根 bar（signal bar）产生的信号而入场；如果 context 良好，最好的 signal bar 是 reversal bar。

## Brooks 明确表达

- （source-explicit，Video08A Slide 10, 16:35）挂单方式：卖出时，在 sell signal bar 之后的 entry bar 上，于 signal bar 低点下方 1 tick/pip 处挂卖单；买入时，在 buy signal bar 之后的 entry bar 上，于 signal bar 高点上方 1 tick/pip 处挂买单。
- （source-explicit，Video08A Slide 12, 22:54）强 signal bar 罕见（约 1% 的 bar 是强反转 bar）；如果等待完美，就永远不会交易。
- （source-explicit，Video08A Slide 21, 31:35）Context 越好，signal bar 本身越不重要；差的 signal bar 若 context 好，也常常能带来好的交易。

## 我的理解

- （student-interpretation）先找到 signal bar，如果是下跌趋势 bar，就在它下面挂突破单（stop order）；sell stop order 触发的是卖出，不是买入（注意与 [../questions/PA-QUESTION-0011.md](../questions/PA-QUESTION-0011.md) 中记录的笔误区分）。

## 有利环境

- Context 好时（如强突破后的回调、Wedge/Sell Climax 末端），即使 signal bar 本身较弱，仍可能是好的入场点。

## 不利环境

- Context 差时，即使 signal bar 形态完美，也不能保证盈利概率高。

## 容易混淆的概念

- [PA-CONCEPT-0004-reversal-bar.md](PA-CONCEPT-0004-reversal-bar.md)
- [PA-CONCEPT-0005-outside-bar.md](PA-CONCEPT-0005-outside-bar.md)

## 正面案例

- 暂无（待从 examples/positive 补充）

## 反面案例

- 暂无（待从 examples/negative 补充）

## 模糊案例

- 暂无（待从 examples/ambiguous 补充）

## 尚未解决的问题

- [../questions/PA-QUESTION-0011.md](../questions/PA-QUESTION-0011.md)（sell stop order 表述疑似笔误）
- [../questions/PA-QUESTION-0012.md](../questions/PA-QUESTION-0012.md)（buy signal bar "最低价"应为"收盘价"疑似理解偏差）

## 来源和时间戳

| 视频/课程 | 时间戳 | 说明 |
|---|---|---|
| Video08A | 15:02 | Slide 9，Signal Bars and Entry Bars 定义 |
| Video08A | 16:35 | Slide 10，挂单方式 |
| Video08A | 22:54 | Slide 12，Strong Signal Bars: Not Common |
| Video08A | 31:35 | Slide 21，Weak Signal Bars: Still Can Be Good |
