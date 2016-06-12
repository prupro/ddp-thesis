TEX=pdflatex
LATEXOPT=--shell-escape
NONSTOP=-interaction=nonstopmode

LATEXMK=latexmk
LATEXMKOPT=-pdf

MAIN=main
SOURCES=$(MAIN).tex Makefile $(wildcard *.tex) $(wildcard chapters/*.tex)
FIGURES=$(wildcard images/*)

all: $(MAIN).pdf


$(MAIN).pdf: $(MAIN).tex $(SOURCES) $(FIGURES)
	$(LATEXMK) $(LATEXMKOPT) \
		-pdflatex="$(TEX) $(LATEXOPT) $(NONSTOP) %O %S" $(MAIN)

clean:
	$(LATEXMK) -c 
#	rm -f $(MAIN).pdfsync
#	rm -rf *~ *.tmp
#	rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk

.PHONY: clean all
