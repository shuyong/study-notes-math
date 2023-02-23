#!make -f

.SUFFIXES: .pdf .tex

.PHONY : all clean

TEX_FILES = $(wildcard *.tex)
MAIN_FILE = _IvLie.tex
PDF_FILES = _IvLie.pdf

$(PDF_FILES) : $(TEX_FILES)
	@# Export Chinese Document: PDF(XeTeX)
	@xelatex $(MAIN_FILE) && xelatex $(MAIN_FILE)

all: $(PDF_FILES)

clean :
	@rm -f  _IvLie.aux \
		_IvLie.log \
		_IvLie.out \
		_IvLie.pdf \
		_IvLie.toc

