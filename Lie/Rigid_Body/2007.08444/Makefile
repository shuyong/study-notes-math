#!make -f

.SUFFIXES: .pdf .tex

.PHONY : all clean

TEX_FILES = $(wildcard *.tex)
MAIN_FILE = JMR2021_SilvaQuiroz-OmanaAdorno.tex
PDF_FILES = JMR2021_SilvaQuiroz-OmanaAdorno.pdf

$(PDF_FILES) : $(TEX_FILES)
	@# Export Chinese Document: PDF(XeTeX)
	@xelatex $(MAIN_FILE) && xelatex $(MAIN_FILE)

all: $(PDF_FILES)

clean :
	@rm -f  JMR2021_SilvaQuiroz-OmanaAdorno.aux \
		JMR2021_SilvaQuiroz-OmanaAdorno.log \
		JMR2021_SilvaQuiroz-OmanaAdorno.out \
		JMR2021_SilvaQuiroz-OmanaAdorno.pdf \
		JMR2021_SilvaQuiroz-OmanaAdorno.toc

