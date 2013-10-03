# FILE = presentation
FILE = msr-evoflash

default: $(FILE).pdf

${FILE}.pdf: ${FILE}.tex
	pdflatex ${FILE}
	bibtex ${FILE}
	pdflatex ${FILE}
	pdflatex ${FILE}

edit: ${FILE}.tex
	gvim $<

view: ${FILE}.pdf 
	xpdf ${FILE}.pdf

acro: ${FILE}.pdf
	acroread $<

#.ps.pdf:
#	ps2pdf $<

clean:
	rm -f *.bbl *.aux
	rm -f ${FILE}.pdf 

.SUFFIXES: .png .eps

.png.eps:
	convert $< $@

.jpg.eps:
	convert $< $@
