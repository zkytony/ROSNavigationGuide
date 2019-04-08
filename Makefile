TARGET = main
pdf:
	pdflatex $(TARGET) && bibtex $(TARGET) && pdflatex $(TARGET) && \
	pdflatex $(TARGET)

quick:
	pdflatex $(TARGET)

clean:
	rm -f *.aux *.log *.blg *.bbl *~ *.dvi *.out *.nav *.snm *.toc $(TARGETS)

final:
	ps2pdf13 -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -dUseFlateCompression=true -dCompatibilityLevel=1.4 $(TARGET).pdf $(TARGET)_final.pdf
