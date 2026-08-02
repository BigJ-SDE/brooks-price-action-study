# Copilot Instructions — Al Brooks Price Action 学习知识库

本仓库是个人学习 Al Brooks *Price Action Trading Course* 的结构化笔记知识库。
当前只处于**第一阶段**（学习与记录），请严格遵守以下规则。

## 项目范围

- **不要**开发第二阶段（视频/字幕/截图自动提取工具）或第三阶段（交易审计工具、订单/行情读取、评分程序）的任何代码、数据库、API 或应用程序。
- 本仓库当前只包含 Markdown 笔记、模板和索引，**不添加**应用程序代码，除非用户明确要求。
- 课程材料仅用于个人学习，**不开发**任何公开分发功能。

## 绝对不能做的事

1. **不得虚构 Al Brooks 的交易规则。** 如果不确定 Brooks 是否说过某个规则，不要编造，改为标记 `needs-review` 并说明依据不足。
2. **不得把常见技术分析知识自动归因于 Al Brooks。** 只有笔记中明确记录 Brooks 讲过的内容，才能标记为 `source-explicit`。
3. **不得因为笔记不完整而擅自补全内容。** 缺失的部分保持缺失，并标注 `needs-review`，不要用常识或推测填补。
4. **不得修改或删除 `raw-notes/` 中的原始笔记文件。** 只能读取。整理结果写入 `lessons/` 等其他目录。
5. **不得丢弃来源信息**：视频名称/编号、章节、时间戳、截图文件名，在整理时必须保留并向下传递。
6. **不得根据事后价格走势反向评价当时的交易决策**，尤其是 `market-replay` 记录中"继续播放前"的判断部分，一旦写下不得因为看到结果而修改。
7. **不得让盈亏直接等同于交易质量**：盈利不自动等于好交易，亏损不自动等于坏交易，决策质量与结果质量分开记录。
8. **不得脱离市场环境评价 Setup**：同一形态必须结合市场环境、位置和风险回报理解，不要孤立评价。
9. **发现笔记之间矛盾时，只标记矛盾并列出各自来源，不要自行裁决哪个是对的。**

## 必须做的事

1. **区分来源类别**，在整理内容时为每条信息标注：
   - `source-explicit`：Al Brooks 明确表达的观点
   - `student-interpretation`：用户目前的理解
   - `ai-organized`：AI 仅对已有内容的整理
   - `ai-derived`：AI 根据多个来源做出的推导，尚未确认
   - `unresolved`：尚未解决的问题
2. **AI 整理后的内容不能表现得比原始笔记更确定。** 使用"笔记记录为……""可能指……"等表述，避免过度自信的措辞。
3. **无法确定的信息标记为 `needs-review`**，包括状态字段和正文中的显式标注。
4. **所有截图使用相对路径链接**，例如 `../screenshots/V01_00-12-34_high-2_positive.png`。
5. **复用已存在的概念/Setup/案例 ID**：创建新条目前，先检查 [../indexes/concepts.md](../indexes/concepts.md)、[../indexes/examples.md](../indexes/examples.md)、[../indexes/timestamps.md](../indexes/timestamps.md)，避免重复分配 ID。
6. **修改任何文件前，先检查相关文件**：整理 `lessons/` 前读取对应 `raw-notes/`；创建/更新 `glossary/` 前检查是否已有同名或近似概念；更新索引前检查索引现有内容，做增量更新而非整体重写。
7. **遵循命名规范**（详见 [../README.md](../README.md#文件命名规则)）：
   - 课程笔记：`video-{course-number}-{short-topic}.md`
   - 截图：`V{course-number}_{HH-MM-SS}_{concept}_{type}.png`
   - 概念 ID：`PA-CONCEPT-0001`
   - Setup ID：`PA-SETUP-0001`
   - 案例 ID：`PA-EXAMPLE-0001`
   - 疑问 ID：`PA-QUESTION-0001`
8. **正式概念/Setup 文件只在用户确认后创建或更新**；在此之前，只能在 `lessons/` 或复习草稿中提出候选建议，状态标记为 `draft`。
9. 使用 [../templates/](../templates/) 下对应模板创建新文件，保持结构一致，便于未来程序解析。

## 工作流参考

读取 [../README.md](../README.md) 的"日常学习工作流"和 [../STUDY-PLAN.md](../STUDY-PLAN.md) 了解完整流程。
