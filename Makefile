SRCS = $(wildcard *.md)
HTML = $(SRCS:.md=.html)
PDFS = $(SRCS:.md=.pdf)
PPTS = $(SRCS:.md=.pptx)

.PHONY: all clean

all: html pdf ppt

html: $(HTML)

pdf: $(PDFS)

ppt: $(PPTS)

%.html: %.md
	npx @marp-team/marp-cli@latest $< -o $@

%.pdf: %.md
	npx @marp-team/marp-cli@latest $< -o $@

%.pptx: %.md
	npx @marp-team/marp-cli@latest $< -o $@ --allow-local-files

clean:
	rm -f $(HTML) $(PDFS) $(PPTS)
