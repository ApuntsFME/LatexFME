main: *.tex
	mkdir -p figures
	pdflatex -shell-escape main.tex
formulari: formulari.tex codi_form.tex
	pdflatex codi_form.tex
	pdflatex formulari.tex
	rm codi_form.aux
	rm codi_form.log
	rm codi_form.out
	rm codi_form.pdf
silentformulari: formulari.tex codi_form.tex
	pdflatex -halt-on-error codi_form.tex > /dev/null
	pdflatex -halt-on-error formulari.tex > /dev/null
	rm codi_form.aux
	rm codi_form.log
	rm codi_form.out
	rm codi_form.pdf
silentmain: *.tex
	mkdir -p figures
	pdflatex -halt-on-error -shell-escape main.tex > /dev/null