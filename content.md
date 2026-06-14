# 바이브 코딩 쇼케이스 🚀

> AI와 함께 만든 30여 개의 작은 프로젝트들 — 동네 주민 코딩 교육용 포트폴리오

혼자서, 그리고 AI와 짝을 이뤄 만든 프로젝트 모음입니다.
웹 서비스부터 모바일 앱, 데스크탑 도구, 자동화 봇, 보안 인프라까지 — 거창하지 않아도 **'직접 굴러가는 것'을 만드는 게 코딩의 시작**입니다.

각 프로젝트마다 **"무엇을 만들었나"**와 **"여러분이 배울 수 있는 것"**을 정리했어요.

---

## 한눈에 보기

| 분야 | 프로젝트 수 | 대표작 |
|------|:---:|------|
| 🌐 웹 서비스·대시보드 | 7 | 국회 감시 대시보드, 법령 검색, DART 공시 |
| 🤖 자동화·봇·스크래핑 | 6 | 출석 자동화 봇, 재입고 알림, 상품 스크래퍼 |
| 📱 모바일 앱 | 4 | 사진 정리 앱(루멘), 암기 앱(안키요) |
| 🖥️ 데스크탑·네이티브 도구 | 4 | 파일 검색 CLI, 한글문서 Spotlight 검색 |
| ⌨️ CLI·금융 | 1 | 토스증권 CLI |
| 🔐 보안·인프라·데이터 | 8 | 컨테이너 하드닝, zero-trust, dbt 파이프라인 |

---

## 🌐 웹 서비스 · 대시보드

> 공개 데이터를 가져와 누구나 볼 수 있는 웹페이지로 만든 것들. 대부분 Cloudflare로 무료 배포되어 실제로 돌아갑니다.

### 국회 의정활동 감시 대시보드 · `asm.zihado.com`
대한민국 제22대 국회의원 300명의 의정활동을 실시간으로 추적하는 대시보드.
- 의원 검색·프로필, 계류 의안·표결 결과를 의원별 명단으로 확인
- 위원회·국회 일정과 핵심 지표 대시보드
- **스택**: Nuxt 4 · Tailwind v4 · shadcn-vue · Cloudflare Workers/KV · 국회 Open API
- **🎓 배울 수 있는 것**: 공개 API로 대시보드 만들기 / 3단 엣지 캐싱으로 빠르게 보여주기

### DART 전자공시 조회 · `dart`
금융감독원 전자공시(OpenDART) 기반 기업 공시·재무 조회 + 국민연금 매매 추적.
- 공시·재무제표 조회, 국민연금 순매수 랭킹과 연속 매수/매도 신호
- ⌘K 커맨드 팔레트, 즐겨찾기
- **스택**: Svelte 5 · Tailwind v4 · Cloudflare Pages Functions · OpenDART API
- **🎓 배울 수 있는 것**: Pages Functions로 API 안전하게 프록시 / 다층 캐싱 전략

### ETF 닥터 · `etf-doctor`
국내·미국 ETF의 순매매 흐름과 추정 iNAV를 실시간으로 보여주는 대시보드.
- 오늘 많이 산/판 ETF, 해외형 ETF 다음날 시초가 방향 예측, 최대 4개 비교
- **스택**: Nuxt 4 · Tailwind v4 · Nitro Server API · Cloudflare Pages
- **🎓 배울 수 있는 것**: 실데이터/메타데이터 분리 운영 / prerender로 첫 화면 즉시 띄우기

### 법령 초고속 검색 · `law.zihado.com`
대한민국 법령·판례·행정규칙 약 54만 조문을 조문 단위로 즉시 검색.
- 한국어 토크나이저 기반 instant-search, 패싯 필터, ⌘K 팔레트
- **스택**: Typesense · Python 인덱서 · React · Cloudflare Pages/Workers/Tunnel
- **🎓 배울 수 있는 것**: 전문검색 시스템 구축 / Cloudflare Tunnel로 내 서버를 안전하게 연결

### 북웜 (독서 기록장) · `bookworm`
책에서 만난 좋은 문장을 모으고 나만의 책장을 관리하는 웹앱.
- 제목 검색으로 표지·저자 자동 채우기, 문장 수집·태그·통계
- **스택**: Nuxt 3 · Cloudflare D1(SQLite) · Zod
- **🎓 배울 수 있는 것**: Nuxt 한 앱에 화면+API 두기 / 도서 API 여러 개 이어 호출하기

### 아파트 실거래가 조회 · `landman`
국토교통부 실거래가 API로 아파트 매매를 조회하는 프로토타입.
- 지역·년월 선택 조회, XML→JSON 변환·통계, k6 성능 테스트
- **스택**: Next.js 16 · TypeScript · fast-xml-parser · k6
- **🎓 배울 수 있는 것**: 공공데이터포털 API 연동·CORS 처리 / k6로 부하 테스트

### 유튜브 댓글 라이브챗 · `yaho.rescene.co`
유튜브 채널의 댓글을 스크롤 라이브 채팅처럼 재생하는 웹앱.
- 댓글을 '실시간 채팅' 흐름으로 재생(속도·정렬·반복·시어터 모드)
- **스택**: Next.js 16 · React 19 · Cloudflare Workers · OpenNext
- **🎓 배울 수 있는 것**: YouTube API 연동 / ISR+KV+Cache 캐시 전략

---

## 🤖 자동화 · 봇 · 스크래핑

> 사람이 반복하던 일을 컴퓨터가 대신하게 만든 것들. 정해진 시간에 알아서 돌고, 알림을 보내줍니다.

### 상품 스크래퍼 모음 · `naver-scrap`
쿠팡·네이버·무신사·명품몰 상품 정보와 리뷰를 긁어오는 통합 스크래핑 프로젝트.
- 사이트별 다른 구조(JSON-LD, __PRELOADED_STATE__) 파싱, 봇 차단 우회
- **스택**: Python(requests, BeautifulSoup) · Playwright · Cloudflare Workers
- **🎓 배울 수 있는 것**: 여러 사이트 파싱 전략 / 크롤러를 모듈로 나눠 재사용

### 무신사 갤러리 자동 갱신 · `musinsa.rescene.co`
무신사 추천 상품을 6시간마다 모아 엣지에서 빠르게 보여주는 서비스.
- 자동 갱신→KV 저장(gzip 650KB→60KB), 텔레그램으로 TOP5 알림
- **스택**: Cloudflare Worker · KV · cron · Telegram API · GitHub Actions
- **🎓 배울 수 있는 것**: 서버리스 cron 자동화 / Cache·gzip으로 속도 끌어내리기

### 출석체크 자동화 + 텔레그램 봇 · `opgarun`
웹사이트 출석체크를 자동으로 하고 텔레그램으로 조작하는 봇.
- Playwright로 로그인→출석 클릭, GitHub Actions 3시간 간격 실행
- **스택**: Python(Playwright) · GitHub Actions self-hosted runner · systemd
- **🎓 배울 수 있는 것**: Playwright 브라우저 자동화 / 텔레그램 양방향 봇

### 소니 렌즈 재입고 알림 · `sony-price`
소니 스토어 렌즈 재입고를 감시해 텔레그램으로 알려주는 추적기.
- 10분마다 폴링, 품절→재입고 전이 때만 알림
- **스택**: Cloudflare Workers · KV · Telegram API
- **🎓 배울 수 있는 것**: 엣지 컴퓨팅 감시 봇 / 상태 전이 기반 알림

### X 북마크 수집기 · `x-collection`
X(트위터) 북마크·좋아요를 자동 수집해 로컬 JSON/Markdown으로 저장.
- 로그인 세션 재사용 헤드리스 자동화, 증분 수집, 매일 자동 실행
- **스택**: Node.js · Playwright · Anthropic Claude SDK
- **🎓 배울 수 있는 것**: 세션 재사용 웹 자동화 / git 친화적 파일 데이터 저장

### 네이버 쇼핑 재입고 감시 · `naver-alarm`
네이버 쇼핑 상품의 재입고·가격변동을 감시해 알려주는 봇.
- Safari 쿠키 파싱·주입, macOS launchd 주기 실행
- **스택**: Python · Safari cookies · Telegram API · launchd
- **🎓 배울 수 있는 것**: launchd 스케줄러 / 쿠키 공급·감시 역할 분리 구조

---

## 📱 모바일 앱

> 손안의 기기에서 도는 앱들. 학습 앱부터 사진 정리 앱까지, 스토어 배포 직전까지 다듬은 것들입니다.

### 안키요 (암기 학습 앱) · `ankiyo`
Anki 스타일 간격 반복(SRS) 학습 앱 — Claude로 단어 카드 자동 생성.
- **스택**: Dart · Flutter · SQLite · Anthropic API · Cloudflare Workers
- **🎓 배울 수 있는 것**: 크로스플랫폼 코드 구조 / 학습 스케줄러 단위 테스트

### 루멘 (사진 정리 앱) · `ios`
제스처로 사진·동영상을 빠르게 정리하는 무료 네이티브 iOS 앱.
- 위로 올려 삭제, 아래로 당겨 보관, 수십만 장도 즉시 로딩
- **스택**: Swift 5.9 · SwiftUI · PhotoKit · XcodeGen
- **🎓 배울 수 있는 것**: PhotoKit 안전하게 다루기 / 대규모 미디어 성능 최적화

### 일본어 학습 (Watch 지원) · `watch`
iPhone과 Apple Watch에서 일본어 가나·단어를 학습하는 앱.
- 플래시카드·퀴즈·간격 반복 알림·TTS, Anki 덱 가져오기
- **스택**: Swift(SwiftUI) · watchOS · Swift Package
- **🎓 배울 수 있는 것**: iPhone+Watch 동시 지원 / 로직을 패키지로 분리해 테스트

---

## 🖥️ 데스크탑 · 네이티브 도구

> 내 컴퓨터에서 도는 진짜 프로그램들. 파일 검색, 사진 뷰어, 브라우저까지 직접 만들었습니다.

### macOS 네이티브 앱 모음 · `macos`
직접 만든 macOS 앱들 — 파일 브라우저, 사진 뷰어, 문서 검색, Markdown 뷰어.
- 분할뷰 파일 브라우저, NAS 사진 관리자, SQLite FTS5 문서 검색
- **스택**: Swift 6 + SwiftUI/AppKit · Rust + GPUI · SQLite FTS5
- **🎓 배울 수 있는 것**: 대용량 앱 성능 최적화 / Homebrew 배포·코드서명

### 한글 문서 Spotlight 검색 · `hwpx`
한글(.hwpx) 문서 본문을 macOS Spotlight로 검색하게 해주는 인덱서.
- .hwpx(ZIP+XML) 본문 추출, Finder·mdfind 검색
- **스택**: Objective-C/C · Spotlight MDImporter · zlib
- **🎓 배울 수 있는 것**: macOS 시스템 프로그래밍 / ZIP·XML 저수준 파싱

### ev (파일 통합 검색 CLI) · `cli`
터미널에서 파일명과 내용을 동시에 실시간 검색하는 Everything 스타일 도구.
- 타이핑마다 실시간 재검색, 한글 문서 속 내용도 검색·미리보기
- **스택**: zsh · ripgrep · fzf · fd · bat · bats-core
- **🎓 배울 수 있는 것**: 쉘 스크립트로 대화형 TUI / Homebrew tap 배포

---

## ⌨️ CLI · 금융 도구

### 토스증권 CLI · `toss-cli`
토스증권 공식 Open API로 시세·주문·포트폴리오를 다루는 커맨드라인 도구.
- 대화형 REPL, 주문 미리보기(--dry-run)·확인, 시뮬레이션 모드, Keychain 보관
- **스택**: Python · Typer · httpx · rich · prompt_toolkit
- **🎓 배울 수 있는 것**: 안전한 CLI 설계(dry-run·확인) / OAuth2·토큰 캐싱

---

## 🔐 보안 · 인프라 · 데이터

> 눈에 잘 안 보이지만 시스템을 지탱하는 영역. 컨테이너 보안, 접근제어, 데이터 파이프라인을 직접 실습했습니다.

### 컨테이너 이미지 하드닝 · `image-harden`
Chainguard Wolfi/melange/apko로 컨테이너 이미지를 최소화·보안 강화.
- 일반 이미지(CVE 80+) vs 하드닝 이미지(CVE 0) 비교, 서명·SBOM·검증
- **🎓 배울 수 있는 것**: 컨테이너 보안 / 소프트웨어 서명·검증

### Zero-Trust 접근제어 실습 · `boundary`
HashiCorp Boundary + Vault + Keycloak을 Docker로 직접 띄워 배우는 실습.
- 접근제어(RBAC), SSO, 동적 자격증명, 셀프서비스 포털
- **🎓 배울 수 있는 것**: GitOps 접근제어 / zero-trust 전체 구성 흐름

### 취약점 스캔·조치 자동화 · `oy-guard`
컨테이너 취약점을 스캔·패치·서명까지 자동화하는 풀스택 시스템.
- Trivy+Grype 스캔, OS 패치, cosign 서명, 웹 대시보드+CLI
- **🎓 배울 수 있는 것**: 비동기 작업·상태 관리 / 웹·CLI 코드 재사용

### API 보안 점검 리포트 · `oy-hack`
개발 환경 API 게이트웨이의 보안 취약점을 점검·분석한 리포트.
- 인증 없는 노출·CORS 반사·에러 누출 발굴, 엔드포인트 카탈로깅
- **🎓 배울 수 있는 것**: API 보안 점검 방법론 / 위험도 우선순위화

### POS 키관리 개선 제안 · `kms`
POS 카드정보 암호화 키관리 개선 제안서 (AWS KMS vs Vault).
- 현재 문제 분석, KMS 솔루션 제안, 대안 비교
- **🎓 배울 수 있는 것**: 키관리 아키텍처 설계 / 트레이드오프 비교

### MCP 게이트웨이 · `mcp-gateway`
여러 MCP 서버를 하나의 엔드포인트로 묶는 프록시 게이트웨이.
- aggregation, 웹 UI·인증·관측성, 단일 주소 노출
- **🎓 배울 수 있는 것**: MCP 프로토콜 / API 게이트웨이 패턴

### dbt 데이터 파이프라인 놀이터 · `dbt-playground-repo`
DuckDB로 노트북에서 dbt를 갖고 노는 데이터 파이프라인 놀이터.
- 6개 도메인 seed→staging→mart, 다양한 데이터 소스, lineage 그래프
- **🎓 배울 수 있는 것**: dbt 계층 설계 / 커스텀 테스트로 규칙 검증

---

## 💡 여러분이 배울 수 있는 5가지 (요약)

1. **공개 데이터를 가져와 화면으로** — 정부·금융·쇼핑몰 API를 가져와 누구나 보는 웹페이지로. 코딩의 가장 빠른 보람.
2. **반복은 컴퓨터에게** — 매일 손으로 하던 일을 스케줄러·봇으로 자동화하고 텔레그램으로 알림 받기.
3. **공짜로 배포하기** — Cloudflare Pages·Workers·KV로 서버 비용 없이 전 세계에 띄우기.
4. **내 손안의 앱** — Flutter·SwiftUI로 진짜 스마트폰 앱을 만들고 스토어에 올리기까지.
5. **AI와 짝코딩** — Claude 같은 AI를 도구로 끼워 함께 만드는 '바이브 코딩'.
