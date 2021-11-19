#!make -f

.SUFFIXES: .pdf .tex

.PHONY : all clean

TEX_FILES = QuaternionsAndDynamics.tex \
	    SubDocuments/Q2E_latex/Eul2Quat.tex \
	    SubDocuments/QuadraticFormDerivative/QuadFormDeriv.tex \
	    SubDocuments/Quaternions/Quaternions.tex \
	    SubDocuments/SpeedComposition/SpeedComposition.tex
PDF_FILES = QuaternionsAndDynamics.pdf

$(PDF_FILES) : $(TEX_FILES)
	@# Export Chinese Document: PDF(XeTeX)
	@xelatex $< && xelatex $<

all: $(PDF_FILES)

clean :
	@rm -f  QuaternionsAndDynamics.aux \
		QuaternionsAndDynamics.log \
		QuaternionsAndDynamics.out \
		QuaternionsAndDynamics.pdf \
		QuaternionsAndDynamics.toc

