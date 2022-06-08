#!make -f

.SUFFIXES: .pdf .tex

.PHONY : all clean

TEX_FILES = $(wildcard *.tex)
MAIN_FILE = main.tex
PDF_FILES = main.pdf

$(PDF_FILES) : $(TEX_FILES)
	@# Export Chinese Document: PDF(XeTeX)
	@xelatex $(MAIN_FILE) && xelatex $(MAIN_FILE)

all: $(PDF_FILES)

clean :
	@rm -f  main.aux \
		main.log \
		main.out \
		main.pdf \
		main.toc

