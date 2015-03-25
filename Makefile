PROJECT = teze

all: $(PROJECT).pdf

view: $(PROJECT).pdf
	nohup evince $< &>/dev/null &

%.pdf: %.tex
	pdflatex $<
	bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

clean:
	rm -f $(PROJECT).aux $(PROJECT).bbl $(PROJECT).blg $(PROJECT).log $(PROJECT).pdf $(PROJECT).toc nohup.out
