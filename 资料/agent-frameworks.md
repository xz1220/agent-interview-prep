# Agent 源码库（15 个）

源码本体：`life-os/intake/github-trending/agent-frameworks/`
本仓库软链接：[`./agent-frameworks/`](agent-frameworks/) → 同一目录，直接 `cd 资料/agent-frameworks/<agent>` 读源码。

> "看点"列指：这个 agent 在面试题哪些桶上是好参考。详细映射见 [`../题→料映射.md`](../题→料映射.md)。

| Agent | 语言 | 一句话定位 | 面试看点 |
|---|---|---|---|
| **claude-code** | TS/Bun | Anthropic 官方 CLI agent（2026-03 源码泄露版） | 工程化标杆，几乎全覆盖：query loop、工具权限门禁、历史压缩、MCP、子 agent、skills → 架构 / Tool·MCP / Memory / Safety / Prompt |
| **OpenHands** | Python | 自主软件开发 agent（原 OpenDevin） | sandbox 执行、SWE-bench eval、agent runtime 架构 → 架构 / Eval·观测 / Safety |
| **AutoGPT** | Python | 最早出圈的"自主 agent"，现为可视化 agent 搭建平台 | 目标分解→自循环、长任务规划、记忆机制 → 架构·规划 / Memory |
| **aider** | Python | 终端 AI 结对编程 | repo map（代码库检索 / 上下文压缩）、diff·edit 格式、git 自动提交 → RAG·检索 / Prompt·Context |
| **cline** | TS | VSCode 里的自主编码 agent | plan/act 模式、人类确认、MCP 接入、上下文管理 → 架构 / Tool·MCP / Safety |
| **codex** | TS + Rust | OpenAI Codex CLI | 终端编码、沙箱执行、审批策略 → AI Coding / Safety |
| **gemini-cli** | TS | Google 官方 Gemini CLI agent | 开源、工具 / MCP、大上下文 → Tool·MCP / AI 产品 |
| **qwen-code** | TS | 阿里 Qwen 的终端 AI agent（gemini-cli 系） | 终端 coding agent、工具 / MCP → AI Coding / Tool·MCP |
| **opencode** | TS | 开源终端编码 agent（SST） | provider 抽象、终端 coding agent 架构 → AI Coding / 架构 |
| **crush** | Go | Charm 出品的终端 AI 编码 agent | 多模型接入、LSP 集成、TUI → Tool / AI 产品 |
| **goose** | Rust | 可扩展本地 AI agent（原 Block，现迁 AAIF） | extensions / MCP 架构、本地执行 → Tool·MCP / 架构 |
| **plandex** | Go | 面向大型任务 / 真实项目的 AI 编码 agent | 强在规划与长任务拆分、diff 管理 → 架构·规划 / AI Coding |
| **hermes-agent** | Python | Nous Research 的自我改进 agent | 内置学习循环（self-improving）、经验 / 记忆积累 → Memory / 架构 / LLM 训练 |
| **openclaw** | TS | 跑在自有设备上的个人 AI 助手 | 个人助理形态、本地化运行 → AI 产品 |
| **pi** | TS | （待核实定位） | 待核 —— 先读其 README / 架构再补这一行 |

> 语言与定位抓取于 2026-06-23（README + 目录特征）；`pi` 暂未确认，标记待核。如源码库新增/删除 agent，更新本表。
