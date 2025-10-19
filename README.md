# 핸즈온 바이브 코딩 워크숍

[![Deploy to GitHub Pages](https://github.com/roboco-io/vibe-coding-workshop/actions/workflows/deploy.yml/badge.svg)](https://github.com/roboco-io/vibe-coding-workshop/actions/workflows/deploy.yml)

**AI 시대의 소프트웨어 엔지니어링 혁신**

로보코에서 제공하는 바이브 코딩 도입 워크숍 자료입니다.

🔗 **[워크숍 자료 보기](https://roboco-io.github.io/vibe-coding-workshop)**

## 📋 워크숍 개요

핸즈온 바이브 코딩 워크숍은 단순한 AI 코드 생성이 아닌, **실무를 전제로 AI 코딩 도구를 활용해서 문서화·테스트·CI/CD·IaC 자동화·구현 등** 소프트웨어 개발 전체 프로세스를 다루는 실습형 교육입니다.

### 핵심 목표

- AI를 통해 개발 효율 극대화
- 자동화된 소프트웨어 엔지니어링 실현
- 코드 품질과 배포 안정성 확보

### 바이브 코딩이란?

> "단순히 AI가 자연어를 코드로 변환시켜주는 것이 아닌, 개발자가 더 높은 수준의 소프트웨어 엔지니어링이 가져오는 이점을 활용해서 문제 해결에 집중할 수 있도록 돕는 것"

## 🎯 워크숍 프로세스

1. **문서화**: AI와 함께 디자인 문서 생성 및 리뷰
2. **계획 및 태스크 분할**: 작업 분할 및 의존성 분석
3. **테스트 구현**: 자동화된 테스트 검증
4. **CI/CD 자동화**: GitHub Hooks를 활용한 파이프라인 구축
5. **코드 리뷰 & 병합**: PR 생성 및 품질 분석

## 🛠️ 기술 스택

- **프레젠테이션**: [Marp](https://marp.app/) (Markdown Presentation Ecosystem)
- **배포**: GitHub Pages (GitHub Actions 자동 배포)
- **빌드**: Make + npx

## 🚀 빌드 및 실행

### 사전 요구사항

- Node.js (npx 사용)
- Make

### 빌드 명령어

```bash
# 모든 형식으로 빌드 (HTML, PDF, PPTX)
make all

# HTML만 생성
make html

# PDF만 생성
make pdf

# PPTX만 생성
make ppt

# 생성된 파일 삭제
make clean
```

### 로컬에서 프레젠테이션 보기

```bash
# HTML 생성 후 브라우저에서 열기
make html
open index.html  # macOS
# 또는
xdg-open index.html  # Linux
# 또는
start index.html  # Windows
```

## 📁 프로젝트 구조

```
.
├── slides/            # 마크다운 소스 파일들
│   └── index.md       # 메인 워크숍 프레젠테이션 (Marp 형식)
├── README.md          # 프로젝트 소개 (빌드 대상 아님)
├── CLAUDE.md          # Claude Code 작업 가이드
├── Makefile           # 빌드 자동화
├── .gitignore         # 빌드 결과물 제외
├── LICENSE            # 라이센스
├── *.html, *.pdf, *.pptx  # 빌드 결과 (Git 제외, GitHub Pages용)
└── .github/
    └── workflows/
        └── deploy.yml # GitHub Pages 자동 배포
```

### 폴더 구조 철학

- **slides/**: 모든 프레젠테이션 마크다운 소스는 이 폴더에서 관리
- **루트**: 빌드 결과물이 생성되는 위치 (GitHub Pages 호환)
- **README.md**: Git으로 관리되지만 Marp 빌드 대상에서 제외
- **빌드 결과물**: .gitignore로 Git에서 제외, GitHub Actions가 자동 생성

## 🔄 CI/CD

`main` 브랜치에 푸시하면 GitHub Actions가 자동으로:
1. Marp를 사용하여 HTML 생성
2. GitHub Pages에 배포

수동 배포는 GitHub Actions 탭에서 "Deploy to GitHub Pages" 워크플로우를 실행하세요.

## 👨‍🏫 강사 정보

**정도현** - ROBOCO.IO 수석 컨설턴트
- 1995년 12월 유니텔 사업부에서 프론트엔드 개발자로 시작
- 일본에서 14년 동안 IT 컨설턴트 및 SI 개발자로 재직
- AWS 시니어 개발자 및 트레이너로 8년 반 재직 (2024년 말까지)

## 📚 실습 프로젝트

워크숍에서는 **RealWorld App (Conduit)**을 사용합니다:
- Medium.com 스타일의 소셜 블로깅 플랫폼
- RESTful API 기반 인증·게시글·댓글 기능
- 다양한 언어/프레임워크로 구현 가능한 표준 스펙 제공

## 📄 라이센스

이 프로젝트는 적절한 라이센스 하에 배포됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

## 🤝 기여

로보코 워크숍 자료에 대한 개선 제안이나 오류 수정은 언제든지 환영합니다.

---

**ROBOCO.IO** - AI Innovation Partner