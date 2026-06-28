#!/usr/bin/env bash
# 下载 / 重建 15 个优质 Agent 源码镜像
#
# 目标目录：资料/agent-frameworks/<name>/
#   （软链 → life-os/intake/github-trending/agent-frameworks/，被 life-os 的 .gitignore 忽略，不进版本库）
# 约定：git clone --depth 1（与 life-os manifest 一致）；幂等——已存在则跳过。
# 依赖：gh（GitHub CLI，已 `gh auth login`）。claude-code 是作者自己的私有库，需要 gh 鉴权。
#
# 用法：
#   bash 资料/download.sh                 # 下载全部缺失的
#   bash 资料/download.sh aider codex     # 只下载指定的
#   MAX_PAR=8 bash 资料/download.sh        # 调并发（默认 4）
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LINK="$SCRIPT_DIR/agent-frameworks"
REAL_ROOT="$(readlink -f "$LINK")"
mkdir -p "$REAL_ROOT"

command -v gh >/dev/null 2>&1 || { echo "需要 gh (GitHub CLI) 且已 gh auth login"; exit 1; }

# 目录名 -> GitHub owner/repo（逐个核实存在；claude-code 用作者自己的私有库）
REPOS="\
AutoGPT|Significant-Gravitas/AutoGPT
OpenHands|OpenHands/OpenHands
aider|Aider-AI/aider
claude-code|xz1220/claude-code-main
cline|cline/cline
codex|openai/codex
crush|charmbracelet/crush
gemini-cli|google-gemini/gemini-cli
goose|aaif-goose/goose
hermes-agent|NousResearch/hermes-agent
openclaw|openclaw/openclaw
opencode|anomalyco/opencode
pi|earendil-works/pi
plandex|plandex-ai/plandex
qwen-code|QwenLM/qwen-code"

WANT=("$@")
want() { [ ${#WANT[@]} -eq 0 ] && return 0; for w in "${WANT[@]}"; do [ "$w" = "$1" ] && return 0; done; return 1; }

clone_one() {
  local name="$1" slug="$2" dest="$REAL_ROOT/$1"
  if [ -d "$dest/.git" ]; then echo "SKIP  $name  (已存在)"; return 0; fi
  rm -rf "$dest"
  if timeout 600 gh repo clone "$slug" "$dest" -- --depth 1 -q >/dev/null 2>&1; then
    echo "OK    $name  $slug  $(du -sh "$dest" 2>/dev/null | cut -f1)"
  else
    echo "FAIL  $name  $slug"
  fi
}

MAX_PAR="${MAX_PAR:-4}"
while IFS='|' read -r name slug; do
  [ -z "$name" ] && continue
  want "$name" || continue
  clone_one "$name" "$slug" &
  while [ "$(jobs -rp | wc -l)" -ge "$MAX_PAR" ]; do wait -n 2>/dev/null || sleep 1; done
done <<< "$REPOS"
wait

echo "----"
echo "完成。源码在：$REAL_ROOT"
