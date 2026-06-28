# Agent 面试题库 + 资料

一个用来 **系统复习 AI Agent 面试** 的知识枢纽：**题库**（飞书）+ **资料**（优质 Agent 源码 + 源码导读）+ **题→料映射**。

## 为什么有这个仓库

- 目标：把飞书《知识分享》里的面经，整理成 **能系统刷、能查、能深挖** 的题库。
- 解答面试题时最硬的资料 = **优质开源 Agent 的真实源码**。本仓库把「题」和「该读哪段源码」挂上钩，刷题卡住时直接跳到原物源码精读。

## 三块内容

| 模块 | 是什么 | 在哪 |
|---|---|---|
| 📝 题库 | ~4424 道母题、10 大分类，**正文在飞书**（随飞书更新） | [`题库/`](题库/) → 飞书链接索引 |
| 📚 资料 | 15 个优质 Agent **源码** + 飞书**源码导读** | [`资料/`](资料/) |
| 🔗 题→料映射 | 哪类题该读哪个 agent 的哪段源码 | [`题→料映射.md`](题→料映射.md) |

## 怎么用来复习

1. 进 [`题库/`](题库/README.md) 选一个分类 → 打开飞书页刷题。
2. 某道题答不上来 → 查 [`题→料映射.md`](题→料映射.md) 找对应的 agent 源码。
3. 去 [`资料/agent-frameworks.md`](资料/agent-frameworks.md) 定位到具体 agent 的具体目录精读原物。

## 来源

- 飞书《知识分享》主页：<https://enbmphajlu.feishu.cn/wiki/PycowmdZPiMERHkU6hmcAZ0onpg>
- 🎯 面经题库总入口：<https://enbmphajlu.feishu.cn/wiki/YWrLwIkiniY7wbkvHdVc620onbb>
- 资料·源码：`life-os/intake/github-trending/agent-frameworks/`（15 个 agent，本仓库以 `资料/agent-frameworks` 软链接接入）。**首次使用先跑 `bash 资料/download.sh` 把 15 个源码 clone 到本地**（git 来源逐个核实，见 [`资料/agent-frameworks.md`](资料/agent-frameworks.md)）

## 约定

- **不把源码复制进本仓库**：源码留在 `life-os/intake/...`，这里只做索引、"看点"和映射（遵循 life-os 仓库约定）。
- 题目正文 **以飞书为准**：本仓库的题库部分是链接 + 统计 + 复习路线，不镜像几千道题。
