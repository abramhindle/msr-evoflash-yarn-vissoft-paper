FILE = presentation

TRANSITIONS=
TRANSITIONSEPS=

default: ahindle-vissoft2007-presentation.pdf

ahindle-vissoft2007-presentation.pdf: $(FILE).out.pdf
	cp $(FILE).out.pdf ahindle-vissoft2007-presentation.pdf

edit: ${FILE}.tex
	gvim $<

view: ${FILE}.out.pdf 
	xpdf ${FILE}.out.pdf

acro: ${FILE}.out.pdf
	acroread $<

edit:
	gvim ${FILE}.tex

${FILE}.out.tex: parser.pl ${FILE}.tex 
	perl parser.pl < ${FILE}.tex > ${FILE}.out.tex


transitions: ${TRANSITIONSEPS}



${FILE}.out.pdf:	${FILE}.out.ps
	ps2pdf -dEmbedAllFonts=true $<

#${FILE}.out.pdf:	${FILE}.out.tex 
#	pdflatex ${FILE}.out.tex
#	bibtex ${FILE}.out
#	pdflatex ${FILE}.out.tex
#	pdflatex ${FILE}.out.tex
${FILE}.out.ps:	${FILE}.out.dvi 
	dvips -T 30cm,22cm $< -o $@
#${FILE}.out.ps:	${FILE}.out.dvi 
#	dvips -T 30cm,22cm $< -o $@


#

$(FILE).out.dvi: $(FILE).out.tex ${TRANSITIONSEPS}
	latex $(FILE).out
#	bibtex $(FILE).out
	latex $(FILE).out
	latex $(FILE).out



$(FILE).ps: $(FILE).dvi
	dvips -T 30cm,22cm -o $@ $<

#$(FILE).ps: $(FILE).dvi
#	dvips -T 30cm,22cm -o $@ $<



$(FILE).pdf: $(FILE).ps
	ps2pdf $< $@

.SUFFIXES: .ps .pdf .eps .dia

.ps.pdf:
	ps2pdf $<

.dia.eps:
	dia -n -t eps $<


clean:
	rm -f *.bbl *.aux
	rm -f ${FILE}.out.*
	rm -f ${FILE}.out.pdf 
