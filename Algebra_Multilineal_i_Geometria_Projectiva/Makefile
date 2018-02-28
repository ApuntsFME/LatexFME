main: *.tex
	mkdir -p figures
	pdflatex -shell-escape main.tex
silentmain: *.tex
	mkdir -p figures
	pdflatex -halt-on-error -shell-escape main.tex > /dev/null
mr_propper: tema_*.tex
	for i in tema_*.tex; do ../prettify $$i; done
clean:
	rm *.aux *.log *.out *.auxlock *.toc
