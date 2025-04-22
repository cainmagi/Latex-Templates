
default: book.pdf

#  = PDF workflow =
#  = tex -> pdf   =
#
%.pdf: %.tex .FORCE
	pdflatex -recorder -synctex=1 $<
#	makeindex $*
#	bibtex $*
#	pdflatex -recorder -synctex=1 $<

#
#  = DVIPS workflow    =
#  = tex->dvi->ps->pdf =
#
# %.pdf: %.ps
# 	ps2pdf $<

# %.ps: %.dvi
# 	dvips -j1 $*

# %.dvi: %.tex .FORCE
# 	latex -recorder -synctex=1 $<
# 	makeindex $*
# 	bibtex $*
# 	latex -recorder -synctex=1 $<


clean:
	rm -f *.aux *.idx *.ilg *.lof *.log *.maf *.mtc* *.pdf *.toc *.fls *.synctex*
	rm -f *.ind

.PHONY:

.FORCE:
