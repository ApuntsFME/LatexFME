main: *.tex
	mkdir -p figures
	pdflatex -shell-escape main.tex
formulari: formulari.tex codi_form.tex
	pdflatex codi_form.tex
	pdflatex formulari.tex
silentformulari: formulari.tex codi_form.tex
	pdflatex -halt-on-error codi_form.tex > /dev/null
	pdflatex -halt-on-error formulari.tex > /dev/null
silentmain: *.tex
	mkdir -p figures
	pdflatex -halt-on-error -shell-escape main.tex > /dev/null
clean:
	rm *.aux *.log *.out *.auxlock *.toc codi_form.pdf
