all:
	+make help

help:
	@echo "Run as 'make <target>' where <target> is:"
	@echo "  pdf - make slides from tex"
	@echo "  clean - clean temp files"

pdf:
	@pdflatex *.tex
	@pdflatex *.tex
	@pdflatex *.tex
	+make clean

clean: 
	@find . -type f \( -name '*.aux' -o -name '*.log' -o -name '*.out' -o -name '*.nav' -o -name '*.snm' -o -name '*.toc' -o -name '*.vrb' \) -exec rm -f {} +
