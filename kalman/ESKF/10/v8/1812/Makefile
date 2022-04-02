#!make -f

.SUFFIXES: .pdf .tex

.PHONY : all clean

TEX_FILES = $(wildcard *.tex)
MAIN_FILE = micro_Lie_theory.tex
PDF_FILES = micro_Lie_theory.pdf

$(PDF_FILES) : $(TEX_FILES)
	@# Export Chinese Document: PDF(XeTeX)
	@xelatex $(MAIN_FILE) && xelatex $(MAIN_FILE)

all: $(PDF_FILES)

clean :
	@rm -f  micro_Lie_theory.aux \
		micro_Lie_theory.log \
		micro_Lie_theory.out \
		micro_Lie_theory.pdf \
		micro_Lie_theory.toc

