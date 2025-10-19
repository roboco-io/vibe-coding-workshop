# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 프로젝트 개요

로보코 바이브 코딩 워크숍 자료를 관리하는 저장소입니다. Marp를 사용하여 마크다운 파일을 프레젠테이션 형식(HTML, PDF, PPTX)으로 변환합니다.

## 빌드 시스템

이 프로젝트는 **Marp CLI**를 사용하여 마크다운 파일을 프레젠테이션으로 변환합니다.

### 주요 명령어

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

### Marp 직접 사용

```bash
# HTML 생성
npx @marp-team/marp-cli@latest slides/index.md -o index.html

# PDF 생성
npx @marp-team/marp-cli@latest slides/index.md -o index.pdf

# PPTX 생성 (로컬 파일 허용)
npx @marp-team/marp-cli@latest slides/index.md -o index.pptx --allow-local-files
```

## 프로젝트 구조

```
.
├── slides/            # 마크다운 소스 파일들
│   └── index.md       # 메인 워크숍 프레젠테이션 (Marp 형식)
├── README.md          # 프로젝트 소개 (빌드 대상 아님)
├── CLAUDE.md          # Claude Code 작업 가이드
├── Makefile           # 빌드 자동화
├── .gitignore         # 빌드 결과물 제외
├── *.html, *.pdf, *.pptx  # 빌드 결과 (Git 제외, GitHub Pages용)
└── .github/
    └── workflows/
        └── deploy.yml # GitHub Pages 자동 배포
```

### 폴더 구조 철학

- **slides/**: 모든 프레젠테이션 마크다운 소스 파일 관리
- **루트**: 빌드 결과물 생성 (GitHub Pages 호환)
- **README.md**: Git으로 관리되지만 빌드 대상에서 제외
- **빌드 결과물**: .gitignore로 Git에서 제외

## 콘텐츠 작성 규칙

### Marp 프론트매터

모든 프레젠테이션 마크다운 파일은 다음 프론트매터로 시작해야 합니다:

```yaml
---
marp: true
theme: default
paginate: true
---
```

### 슬라이드 구분

슬라이드는 `---`로 구분됩니다:

```markdown
# 첫 번째 슬라이드

내용...

---

# 두 번째 슬라이드

내용...
```

## CI/CD

### GitHub Actions 자동 배포

- `main` 브랜치에 푸시 시 자동으로 GitHub Pages에 배포
- 워크플로우: `.github/workflows/deploy.yml`
- 배포 과정:
  1. 코드 체크아웃
  2. `make html`로 HTML 생성
  3. GitHub Pages 설정 및 아티팩트 업로드
  4. GitHub Pages에 배포

### 수동 배포

GitHub Actions 탭에서 "Deploy to GitHub Pages" 워크플로우를 수동으로 실행할 수 있습니다.

## 워크숍 콘텐츠 철학

이 워크숍은 **바이브 코딩**을 주제로 하며, 다음 핵심 원칙을 따릅니다:

1. **AI는 개발 파트너**: 단순한 코드 생성이 아닌, 문서화·테스트·CI/CD·IaC 자동화를 포함한 전체 소프트웨어 엔지니어링 프로세스 지원
2. **구조적 사고와 자동화**: 명확한 가드레일과 프롬프트 엔지니어링을 통한 체계적 개발
3. **5단계 프로세스**: 요건 정의 → 계획 및 태스크 분할 → TDD 구현 → CI/CD 자동화 → PR 생성/리뷰/병합

### 콘텐츠 수정 시 유의사항

- 새 프레젠테이션 추가 시 `slides/` 폴더에 .md 파일 생성
- 워크숍 실습 섹션(Hands-On 실습 ①~④)은 순서대로 진행되도록 구성
- 각 슬라이드는 간결하게 유지 (불릿 포인트 3-5개)
- 실습 예제는 실제 동작 가능한 코드/시나리오 사용
- 한국어로 작성 (워크숍 대상이 한국 개발자)
- 빌드 후 생성되는 HTML/PDF/PPTX 파일은 Git에 커밋하지 않음
