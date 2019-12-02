#!make -f

.SUFFIXES: .pdf .tex

.PHONY : all clean

TEX_FILES = $(wildcard *.tex)
PDF_FILES = kinematics.pdf

$(PDF_FILES) : $(TEX_FILES)
	@# Export Chinese Document: PDF(XeTeX)
	@xelatex $< && xelatex $<

all: $(PDF_FILES)

clean :
	@rm -f kinematics.aux kinematics.log kinematics.out kinematics.pdf kinematics.toc

