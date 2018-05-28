all: main main_resum

main: *.tex
	mkdir -p figures
	pdflatex -shell-escape main.tex
silentmain: *.tex
	mkdir -p figures
	pdflatex -halt-on-error -shell-escape main.tex > /dev/null
main_resum:
	pdflatex main_resum.tex
silentmain_resum:
	pdflatex -halt-on-error main_resum.tex > /dev/null

clean:
	rm *.aux *.log *.out *.auxlock *.toc
