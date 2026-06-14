# 바이브 코딩 쇼케이스 🚀

동네 주민 코딩 교육용 포트폴리오 사이트. AI와 함께 만든 30여 개 프로젝트를 분야별로 모았습니다.

## 파일 구성

| 파일 | 설명 |
|------|------|
| `index.html` | 쇼케이스 사이트 본체 (단일 정적 페이지) |
| `projects.json` | 프로젝트 내용 데이터 — **여기만 고치면 사이트가 바뀝니다** |
| `content.md` | 같은 내용을 읽기 좋은 마크다운으로 정리한 본문 |

내용을 추가/수정하려면 `projects.json`의 `categories` → `projects` 배열만 손보면 됩니다.

## 로컬에서 미리보기

브라우저로 `index.html`을 직접 열면 보안 때문에 데이터를 못 불러옵니다. 작은 서버로 띄우세요:

```bash
cd vibe-coding
python3 -m http.server 8799
# 또는: npx serve
```

→ http://localhost:8799 접속

## Cloudflare Pages 배포

이 폴더는 빌드가 필요 없는 정적 사이트라 그대로 올리면 됩니다.

### 방법 1) Wrangler CLI (가장 빠름)

```bash
cd vibe-coding
npx wrangler pages deploy . --project-name vibe-coding
```

처음이면 `npx wrangler login`으로 Cloudflare 계정 인증 한 번만 하면 됩니다.

### 방법 2) 대시보드에서 연결

1. 이 폴더를 GitHub 레포에 올리기
2. Cloudflare 대시보드 → Workers & Pages → Create → Pages → Git 연결
3. 빌드 설정: **Build command 비움**, **Output directory = `/`** (또는 이 폴더)
4. Deploy

배포 후 `https://vibe-coding.pages.dev` 같은 주소가 생깁니다. 동네 분들께 이 링크만 보내면 됩니다.
