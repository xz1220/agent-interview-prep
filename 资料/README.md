# 资料

解答面试题的硬核资料 = **优质开源 Agent 的真实源码** + **源码导读**。

- [`agent-frameworks.md`](agent-frameworks.md) — 15 个优质 Agent 源码索引（含语言、一句话定位、面试看点、git 来源）。源码本体在项目内 `资料/agent-frameworks/`（~2GB，被 `.gitignore` 忽略，跑 `download.sh` 获取）。
- [`download.sh`](download.sh) — 一键 `git clone --depth 1` 重建 15 个源码镜像（幂等，可只下指定子集）。
- [`源码导读.md`](源码导读.md) — 飞书上的深度源码拆解（如《Claude Code 整体架构》+ 源码 MAP）。

## 约定

- **源码不进 git**：15 个仓库的工作副本放在 `资料/agent-frameworks/`，但被 `.gitignore` 忽略，不进版本库（缺了用 [`download.sh`](download.sh) 重建）。git 里只留索引、"看点"和导读链接。
- 想直接读源码：`cd 资料/agent-frameworks/<agent>/`（项目内真实目录）。
