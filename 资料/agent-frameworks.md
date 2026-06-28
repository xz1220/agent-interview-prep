# Agent 源码库（15 个）

源码本体就在本目录下 [`./agent-frameworks/<agent>/`](agent-frameworks/)，直接 `cd 资料/agent-frameworks/<agent>` 读。
注意：这 ~2GB 源码被 `.gitignore` 忽略、**不进版本库**，所以 clone 本仓库后该目录是空的——跑下面的 `download.sh` 拉回来即可。

> **首次使用 / 源码不见了**：跑 [`./download.sh`](download.sh) 一键把这 15 个仓库 `git clone --depth 1` 到 `资料/agent-frameworks/`（`bash 资料/download.sh`；只下缺失的，幂等）。`claude-code` 是作者自己的私有库，脚本靠 `gh` 鉴权。
> "看点"列指：这个 agent 在面试题哪些桶上是好参考。详细映射见 [`../题→料映射.md`](../题→料映射.md)。

| Agent | 语言 | Git 来源 | 一句话定位 | 面试看点 |
|---|---|---|---|---|
| **claude-code** | TS/Bun | `xz1220/claude-code-main` 🔒 | Anthropic 官方 CLI agent（2026-03 源码泄露版） | 工程化标杆，几乎全覆盖：query loop、工具权限门禁、历史压缩、MCP、子 agent、skills → 架构 / Tool·MCP / Memory / Safety / Prompt |
| **OpenHands** | Python | `OpenHands/OpenHands` | 自主软件开发 agent（原 OpenDevin） | sandbox 执行、SWE-bench eval、agent runtime 架构 → 架构 / Eval·观测 / Safety |
| **AutoGPT** | Python | `Significant-Gravitas/AutoGPT` | 最早出圈的"自主 agent"，现为可视化 agent 搭建平台 | 目标分解→自循环、长任务规划、记忆机制 → 架构·规划 / Memory |
| **aider** | Python | `Aider-AI/aider` | 终端 AI 结对编程 | repo map（代码库检索 / 上下文压缩）、diff·edit 格式、git 自动提交 → RAG·检索 / Prompt·Context |
| **cline** | TS | `cline/cline` | VSCode 里的自主编码 agent | plan/act 模式、人类确认、MCP 接入、上下文管理 → 架构 / Tool·MCP / Safety |
| **codex** | TS + Rust | `openai/codex` | OpenAI Codex CLI | 终端编码、沙箱执行、审批策略 → AI Coding / Safety |
| **gemini-cli** | TS | `google-gemini/gemini-cli` | Google 官方 Gemini CLI agent | 开源、工具 / MCP、大上下文 → Tool·MCP / AI 产品 |
| **qwen-code** | TS | `QwenLM/qwen-code` | 阿里 Qwen 的终端 AI agent（gemini-cli 系） | 终端 coding agent、工具 / MCP → AI Coding / Tool·MCP |
| **opencode** | TS | `anomalyco/opencode` | 开源终端编码 agent（原 SST，现迁 anomalyco） | provider 抽象、终端 coding agent 架构 → AI Coding / 架构 |
| **crush** | Go | `charmbracelet/crush` | Charm 出品的终端 AI 编码 agent | 多模型接入、LSP 集成、TUI → Tool / AI 产品 |
| **goose** | Rust | `aaif-goose/goose` | 可扩展本地 AI agent（原 Block，现迁 AAIF） | extensions / MCP 架构、本地执行 → Tool·MCP / 架构 |
| **plandex** | Go | `plandex-ai/plandex` | 面向大型任务 / 真实项目的 AI 编码 agent | 强在规划与长任务拆分、diff 管理 → 架构·规划 / AI Coding |
| **hermes-agent** | Python | `NousResearch/hermes-agent` | Nous Research 的自我改进 agent | 内置学习循环（self-improving）、经验 / 记忆积累 → Memory / 架构 / LLM 训练 |
| **openclaw** | TS | `openclaw/openclaw` | 跑在自有设备上的个人 AI 助手 | 个人助理形态、本地化运行 → AI 产品 |
| **pi** | TS | `earendil-works/pi` | Agent 工具箱：统一 LLM API + agent loop + TUI + 编码 CLI | agent loop / 多 provider 统一封装、终端 coding agent → 架构 / AI Coding |

> 语言与定位抓取于 2026-06-23（README + 目录特征）；**Git 来源逐个核实于 2026-06-27**（`pi` 由本地幸存副本的 remote 实测确认；`OpenHands` / `goose` / `opencode` 为迁移后的新地址，旧地址会重定向）。如源码库新增 / 删除 agent，同步更新本表与 [`download.sh`](download.sh)。
