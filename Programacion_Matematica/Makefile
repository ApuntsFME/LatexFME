main: *.tex
	mkdir -p figures
	pdflatex -shell-escape main.tex
silentmain: *.tex
	mkdir -p figures
	pdflatex -halt-on-error -shell-escape main.tex > /dev/null
clean:
	rm *.aux *.log *.out *.auxlock *.toc
