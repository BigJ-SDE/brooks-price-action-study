# Al Brooks Price Action Trading Course 学习知识库

本仓库是个人学习 Al Brooks *Price Action Trading Course* 的结构化笔记知识库，
目标是为未来的 AI 辅助知识提取（第二阶段）和交易审计工具（第三阶段）积累
**可追溯来源、区分确定性程度**的学习资料。

## 项目所处阶段

整个项目规划为三个阶段，**当前仓库只实施第一阶段**：

| 阶段 | 内容 | 本仓库是否实施 |
|---|---|---|
| 第一阶段 | 我本人学习课程，记录原始笔记与整理笔记 | ✅ 正在进行 |
| 第二阶段 | AI 结合视频、字幕、时间戳、截图、笔记提取概念/Setup/规则 | ❌ 未来阶段，不在本仓库开发 |
| 第三阶段 | AI 交易审计工具（读取订单/行情，评分与复盘，不自动下单） | ❌ 未来阶段，不在本仓库开发 |

第一阶段的目标**不是**让 AI 替我学习，也不是开发任何程序，而是：

1. 我本人观看并理解课程；
2. 记录概念、时间戳、图表案例和疑问；
3. 明确区分 Al Brooks 原始观点 / 我的理解 / AI 整理内容；
4. 保存结构化资料，供未来阶段使用。

## 目录结构

```
brooks-price-action-study/
├── README.md                   本文件
├── STUDY-PLAN.md                第一阶段学习计划
├── raw-notes/                   观看视频时的原始笔记（AI 不得重写或删除）
├── lessons/                     AI 根据原始笔记整理的课程笔记
├── glossary/                    术语/概念定义，每个概念一个文件
├── market-context/              趋势、震荡区间、突破、通道等市场环境笔记
├── setups/                      High 1/2、Low 1/2、wedge 等 Setup 笔记
├── trade-management/            入场、止损、目标、scalp/swing、持仓管理笔记
├── examples/
│   ├── positive/                  清晰的正面案例
│   ├── negative/                  看似符合但条件不足的反面案例
│   └── ambiguous/                 存在多种合理解释的案例
├── screenshots/                 按视频编号和时间戳保存的截图
├── questions/                   未解决问题与待复查内容
├── reviews/                     按课程模块生成的阶段性复习
├── indexes/                     自动/半自动生成的索引（概念、时间戳、案例、疑问）
├── templates/                   各类 Markdown 模板
└── .github/
    └── copilot-instructions.md  仓库级 Copilot 行为准则
```

## 日常学习工作流

1. 我观看课程视频。
2. 我在 [raw-notes/](raw-notes/) 中用 [raw-note-template.md](templates/raw-note-template.md) 快速记录时间戳、关键词、理解和疑问，**不打断观看节奏**。
3. 一小节或一节课结束后，Copilot 读取对应的原始笔记文件。
4. Copilot 使用 [lesson-template.md](templates/lesson-template.md) 将内容整理进 [lessons/](lessons/)，**不修改或删除原始笔记**。
5. Copilot 列出笔记中可能需要加入 [glossary/](glossary/) 的概念候选，但**不自动创建**正式概念文件。
6. 只有经过我确认，Copilot 才使用 [concept-template.md](templates/concept-template.md) 创建或更新正式概念文件，并按需在 [setups/](setups/)、[market-context/](market-context/)、[trade-management/](trade-management/) 中归档。
7. Copilot 更新 [indexes/](indexes/) 中的索引文件。
8. 每完成一个模块，使用整理笔记和概念文件在 [reviews/](reviews/) 生成一份复习文档。
9. 所有 AI 推导内容在我确认前，状态保持为 `draft` 或 `needs-review`。

## 文件命名规则

### 课程笔记（lessons/）
```
video-{course-number}-{short-topic}.md
```
例如：`video-01-trend-bars.md`

### 截图（screenshots/）
```
V{course-number}_{HH-MM-SS}_{concept}_{type}.png
```
`type` 取值：
- `positive` 正面案例
- `negative` 反面案例
- `ambiguous` 模糊案例
- `pointer` Brooks 用鼠标/画笔指向说明
- `needs-review` 尚不确定分类

例如：`V01_00-12-34_high-2_positive.png`

### 概念 ID（glossary/）
```
PA-CONCEPT-0001
```

### Setup ID（setups/）
```
PA-SETUP-0001
```

### 案例 ID（examples/）
```
PA-EXAMPLE-0001
```

### 疑问 ID（questions/）
```
PA-QUESTION-0001
```

ID 按顺序递增分配，**不预先批量分配**，未确认使用前一律视为占位符。分配前请先检查 [indexes/concepts.md](indexes/concepts.md)、[indexes/examples.md](indexes/examples.md) 等索引，复用已存在的 ID，避免重复。

## 内容状态与来源标签

每份整理笔记、概念文件、案例文件都应在合适的位置（通常是 YAML front matter 或字段值）标注来源类别：

| 标签 | 含义 |
|---|---|
| `source-explicit` | Al Brooks 在课程中明确表达的观点 |
| `student-interpretation` | 我目前的理解，可能不准确 |
| `ai-organized` | AI 仅对已有内容做结构整理，未添加新判断 |
| `ai-derived` | AI 根据多个来源做出的推导，尚未确认 |
| `unresolved` | 尚未解决/尚无结论的问题 |

此外，任何不确定的信息都应标记状态 `needs-review`。

## AI（Copilot）允许与禁止的操作

详见 [.github/copilot-instructions.md](.github/copilot-instructions.md)，核心原则：

**允许：**
- 读取 `raw-notes/` 并在 `lessons/`、`glossary/`、`reviews/`、`indexes/` 中整理、汇总、生成草稿。
- 明确标注来源类别与置信度。
- 指出笔记中的矛盾之处并列出来源。
- 将不确定内容标记为 `needs-review`。

**禁止：**
- 虚构或补全 Al Brooks 未表达过的交易规则。
- 把通用技术分析知识归因于 Al Brooks。
- 修改或删除 `raw-notes/` 中的原始笔记。
- 丢弃视频名称、章节、时间戳、截图来源等溯源信息。
- 让整理后的内容看起来比原始笔记更确定。
- 根据事后价格走势反向评价当时的交易判断（尤其是 Market Replay 记录）。
- 开发第二、第三阶段的任何应用程序、数据库、API 或交易执行功能。

## 第一阶段完成标准

见 [STUDY-PLAN.md](STUDY-PLAN.md#第一阶段完成标准)。
