all: formulari

formulari: formulari.tex main_aux parcial1.tex parcial2.tex 
	pdflatex formulari.tex
silentformulari: formulari.tex silentmain_aux
	pdflatex -halt-on-error formulari.tex > /dev/null
main_aux: main_aux.tex parcial2.tex 
	pdflatex main_aux.tex
silentmain_aux:
	pdflatex -halt-on-error main_aux.tex > /dev/null

clean:
	rm *.aux *.log *.out *.auxlock *.toc main_aux.pdf
