#!make -f

.SUFFIXES: .pdf .lyx

.PHONY : all clean

LYX_FILES = $(wildcard *.lyx)
PDF_FILES = $(patsubst %.lyx,%.pdf,$(LYX_FILES))

%.pdf : %.lyx
	@# Export Chinese Document: PDF(XeTeX) -> pdf4
	@lyx -e pdf4 $< | :

all: $(PDF_FILES)

clean :
	@rm *.pdf

