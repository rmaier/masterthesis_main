all:	main

main:	main.tex
	
	pdflatex main.tex
#	gnuplot main-gnuplottex-fig*.gnuplot
#	bibtex main
	biber main
	pdflatex main.tex
	pdflatex main.tex
#	evince	main.pdf
	mv *.toc *.lot *.out *.aux *.log *.glo *.backup  *.bbl *.bak *.blg  *.al* *.ac* *.run.xml *.ist *.lof *.bcf latex_settings/*.aux log
    


paper:	paper.tex
	
	pdflatex paper.tex
#	gnuplot main-gnuplottex-fig*.gnuplot
#	bibtex main.aux
	pdflatex paper.tex
	pdflatex paper.tex
	evince	paper.pdf
clean:
	rm *.toc *.lot *.out *.aux *.log  *.backup  *.bbl *.bak *.blg *.xml *blx.bib *.bcf *.dvi 
#	rm *toc *aux *log 
#	rm *gnuplot*  		#for gnuplottex
#	rm *.bbl *.blg 		#for bibtex


final:	main.tex
	
	pdflatex main.tex
#	gnuplot main-gnuplottex-fig*.gnuplot
#	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex
	mv main.pdf final.pdf
