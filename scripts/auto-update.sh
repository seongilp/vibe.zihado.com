#!/bin/zsh
# 포트폴리오(vibe.zihado.com) 자동 업데이트
# launchd(com.zihado.portfolio-update)가 매주 일요일 21:00 KST에 실행.
# ~/work/playground의 새 디렉토리를 headless Claude가 조사해 쇼케이스에 추가한다.
set -euo pipefail

REPO="$HOME/work/playground/vibe-coding"
LOG_DIR="$HOME/Library/Logs"
LOG="$LOG_DIR/portfolio-update.log"
CLAUDE="$HOME/.local/bin/claude"
export PATH="$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin"

mkdir -p "$LOG_DIR"
{
  echo "===== $(date '+%Y-%m-%d %H:%M:%S') portfolio auto-update start ====="

  if [[ ! -x "$CLAUDE" ]]; then
    echo "ERROR: claude CLI not found at $CLAUDE"
    exit 1
  fi

  cd "$REPO"

  # 사용자가 작업 중인 변경사항이 있으면 건드리지 않고 이번 주기는 건너뛴다
  if [[ -n "$(git status --porcelain)" ]]; then
    echo "SKIP: 워킹 트리에 커밋 안 된 변경사항이 있어 이번 실행을 건너뜁니다."
    exit 0
  fi

  git pull --rebase origin main

  "$CLAUDE" -p "$(cat scripts/update-prompt.md)" \
    --model claude-sonnet-5 \
    --allowed-tools "Read,Write,Edit,Glob,Grep,Bash" \
    --max-turns 100

  echo "===== $(date '+%Y-%m-%d %H:%M:%S') done ====="
} >>"$LOG" 2>&1
