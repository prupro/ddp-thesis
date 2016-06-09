main: main.tex
	latexmk -pdf -pdflatex="pdflatex --shell-escape %O %S" main.tex
