#!make -f

.SUFFIXES: .pdf .tex

.PHONY : all clean

TEX_FILES = $(wildcard *.tex)
MAIN_FILE = spitzer_error_metrics.tex
PDF_FILES = spitzer_error_metrics.pdf

$(PDF_FILES) : $(TEX_FILES)
	@# Export Chinese Document: PDF(XeTeX)
	@xelatex $(MAIN_FILE) && xelatex $(MAIN_FILE)

all: $(PDF_FILES)

clean :
	@rm -f  spitzer_error_metrics.aux \
		spitzer_error_metrics.log \
		spitzer_error_metrics.out \
		spitzer_error_metrics.pdf \
		spitzer_error_metrics.toc
	@rm -f  commands.aux

