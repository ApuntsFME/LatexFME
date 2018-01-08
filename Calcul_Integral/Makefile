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
