all: main formulari

main: *.tex
	mkdir -p figures
	pdflatex -shell-escape main.tex
formulari: formulari.tex aux_form_main.tex
	pdflatex aux_form_main.tex
	pdflatex formulari.tex
silentformulari: formulari.tex aux_form_main.tex
	pdflatex -halt-on-error aux_form_main.tex > /dev/null
	pdflatex -halt-on-error formulari.tex > /dev/null
silentmain: *.tex
	mkdir -p figures
	pdflatex -halt-on-error -shell-escape main.tex > /dev/null

clean:
	rm *.aux *.log *.out *.auxlock *.toc aux_form_main.pdf
