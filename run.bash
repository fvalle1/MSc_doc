#|/bin/bash
while true
do 
    echo "Hi"
    pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
    cp thesis.pdf /Volumes/GoogleDrive/My\ Drive/tesi_magistrale/MSc_doc/.
    sleep 80
done
