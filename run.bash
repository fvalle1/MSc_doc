while true
do 
    echo "Hi"
    pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
    sleep 60
done
