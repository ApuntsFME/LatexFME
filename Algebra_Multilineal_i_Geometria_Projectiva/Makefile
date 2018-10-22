all: main

main: *.tex
	mkdir -p figures
	pdflatex -shell-escape main.tex
	python ../script.py main.idx
	pdflatex -shell-escape main.tex
silentmain: *.tex
	mkdir -p figures
	pdflatex -halt-on-error -shell-escape main.tex > /dev/null
	python ../script.py main.idx > /dev/null 2> /dev/null
	pdflatex -shell-escape main.tex > /dev/null
clean:
	rm -f *.aux *.log *.out *.auxlock *.toc *.ind *.ilg *.idx *.pdf
