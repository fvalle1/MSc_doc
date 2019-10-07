TOREMOVE = *.toc *.aux *.bbl *.blg *.lof *.log *.lot *.out *.gz

all: thesis

thesis: thesis.aux
	cp thesis.pdf /Volumes/GoogleDrive/My\ Drive/tesi_magistrale/MSc_doc/.
	open thesis.pdf

%.aux: %.tex
	pdflatex $^
	bibtex thesis
	pdflatex $^
	pdflatex $^

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
