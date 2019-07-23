#|/bin/bash
while true
do 
    echo "Hi"
    pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
    sleep 80
done
