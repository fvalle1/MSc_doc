TOREMOVE = *.toc *.aux *.bbl *.blg *.lof *.log *.lot *.out *.gz

all: thesis

thesis: thesis.tex
	pdflatex $^
	bibtex thesis
	pdflatex $^
	pdflatex $^
	open thesis.pdf

.phony:
clean:
	rm -f $(TOREMOVE)

push:
	git add .
	git commit -m "update"
	git pull
	git  push

pull:
	git pull
