---
id: PA-QUESTION-0011
status: needs-review     # unresolved | needs-review | resolved
---

# 问题 PA-QUESTION-0011

## 问题

Video08A 原始笔记中记录了"sell stop order 就是低于 X 价再买入"的表述，但 sell stop order 触发的应该是卖出（sell），而不是买入（buy），这可能是笔误或理解偏差。

## 产生问题的课程和时间戳

- Video08A, 16:35（Slide 10，Signal Bars and Entry Bars 挂单方式）

## 我当前的理解

- （student-interpretation，needs-review）课件原文是 "Entry bar / Sell 1 tick/pip below signal bar"，即在 sell signal bar 低点下方挂卖出止损单（sell stop order），触发后应为卖出（做空），不是买入。笔记中"买入"的措辞很可能是我自己的笔误。

## 可能相关概念

- [../glossary/PA-CONCEPT-0003-signal-bar-entry-bar.md](../glossary/PA-CONCEPT-0003-signal-bar-entry-bar.md)

## 后续课程是否再次提到

- 截至目前已整理的课程未见进一步说明。

## AI 找到的候选答案

- （ai-derived，未经用户确认）正确说法应为：sell stop order 触发后是卖出（做空），挂在 sell signal bar 低点下方 1 tick/pip 处。

## 是否经过人工确认

- [ ] 已确认

## 最终结论

- 待用户确认笔记中的"买入"是否为笔误，正确说法应为"卖出"。
