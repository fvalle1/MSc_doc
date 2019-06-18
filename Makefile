TOREMOVE = *.toc *.aux *.bbl *.blg *.lof *.log *.lot *.out *.gz

all: thesis

thesis: thesis.tex
	pdflatex $^
	pdflatex $^
	bibtex thesis
	pdflatex $^
	open thesis.pdf

.phony:
clean:
	rm -f $(TOREMOVE)

push:
	git add .
	git commit -m "update"
	git  push

pull:
	git pull
