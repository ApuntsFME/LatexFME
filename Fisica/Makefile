all: formulari

formulari: formulari.tex main_aux.tex
	pdflatex main_aux.tex
	pdflatex formulari.tex
silentformulari: formulari.tex main_aux.tex
	pdflatex -halt-on-error main_aux.tex > /dev/null
	pdflatex -halt-on-error formulari.tex > /dev/null

clean:
	rm *.aux *.log *.out *.auxlock *.toc main_aux.pdf
