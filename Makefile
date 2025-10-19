# slides/ 폴더의 마크다운 파일들 (README.md 제외)
SRCS = $(wildcard slides/*.md)
# 출력 파일명: slides/index.md → index.html
HTML = $(patsubst slides/%.md,%.html,$(SRCS))
PDFS = $(patsubst slides/%.md,%.pdf,$(SRCS))
PPTS = $(patsubst slides/%.md,%.pptx,$(SRCS))

.PHONY: all clean html pdf ppt

all: html pdf ppt

html: $(HTML)

pdf: $(PDFS)

ppt: $(PPTS)

# slides/에서 읽어서 루트에 생성
%.html: slides/%.md
	npx @marp-team/marp-cli@latest $< -o $@

%.pdf: slides/%.md
	npx @marp-team/marp-cli@latest $< -o $@

%.pptx: slides/%.md
	npx @marp-team/marp-cli@latest $< -o $@ --allow-local-files

clean:
	rm -f $(HTML) $(PDFS) $(PPTS)
