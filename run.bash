while true
do 
    echo "Hi"
    pdflatex -synctex=1 thesis.tex
    sleep 60
done
