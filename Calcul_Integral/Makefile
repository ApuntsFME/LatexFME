all: main formulari
silentall: silentmain silentformulari

main: *.tex
	mkdir -p figures
	pdflatex -shell-escape main.tex
	python ../script.py main.idx
	pdflatex -shell-escape main.tex
formulari: formulari.tex aux_form_main.tex
	pdflatex aux_form_main.tex
	pdflatex formulari.tex
silentmain: *.tex
	mkdir -p figures
	pdflatex -halt-on-error -shell-escape main.tex > /dev/null
	python ../script.py main.idx > /dev/null 2> /dev/null
	pdflatex -shell-escape main.tex > /dev/null
silentformulari: formulari.tex aux_form_main.tex
	pdflatex -halt-on-error aux_form_main.tex > /dev/null
	pdflatex -halt-on-error formulari.tex > /dev/null

clean:
	rm -f *.aux *.log *.out *.auxlock *.toc *.ind *.ilg *.idx *.pdf
