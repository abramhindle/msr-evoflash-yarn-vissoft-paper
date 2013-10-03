BASE=defaults.m4 html.m4 presentation.m4
MAX=20
all:
	seq 1 $(MAX) | xargs -i echo rm {}.html \; make {}.html | sh -x -

$(FILE).out.dvi: $(FILE).out.tex ${TRANSITIONSEPS}
	latex $(FILE).out
#	bibtex $(FILE).out
	latex $(FILE).out
	latex $(FILE).out



$(FILE).ps: $(FILE).dvi
	dvips -T 30cm,22cm -o $@ $<

#$(FILE).ps: $(FILE).dvi
#	dvips -T 30cm,22cm -o $@ $<

p1.html:	p1.html.m4 $(BASE)


$(FILE).pdf: $(FILE).ps
	ps2pdf $< $@

.SUFFIXES: .ps .pdf .eps .dia .html .html.m4

.html.m4.html:
	m4 $< > $@

.ps.pdf:
	ps2pdf $<

.dia.eps:
	dia -n -t eps $<


clean:
	rm -f *.bbl *.aux
	rm -f ${FILE}.out.*
	rm -f ${FILE}.out.pdf 
