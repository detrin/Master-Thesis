export TEXINPUTS=../tex//:

all: thesis.pdf abstractCZ.pdf abstractEN.pdf

# LaTeX must be run multiple times to get references right
thesis.pdf: thesis.tex $(wildcard *.tex) bibliography.bib thesis.xmpdata
	pdflatex $<
# bibtex thesis
# pdflatex $<
# pdflatex $<

abstractCZ.pdf: abstractCZ.tex abstractCZ.xmpdata
	pdflatex $<

abstractEN.pdf: abstractEN.tex abstractEN.xmpdata
	pdflatex $<

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg *.xmpi
