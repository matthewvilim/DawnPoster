PAPER = poster2
TEX = $(wildcard *.tex text/*.tex)
BIB = references.bib
FIGS = $(wildcard figs/*.pdf figs/*.png graphs/*.pdf graphs/*.png)

.PHONY: all export clean lunch

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS)
	echo $(FIGS)
	xelatex $(PAPER)
	#bibtex $(PAPER)
	#lualatex $(PAPER)
	#lualatex $(PAPER)

# figs/speedupbars.tex: figs/speedupbars.gp figs/speedupbars.dat
# 	cd figs && gnuplot speedupbars.gp
# 	cd figs && sed -i.bak 's/speedupbars/figs\/speedupbars/' speedupbars.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf

