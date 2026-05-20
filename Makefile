.PHONY: all clean

all: resume.pdf resume.png

resume.pdf: resume.tex
	lualatex -interaction=nonstopmode resume.tex

resume.png: resume.pdf
	pdftoppm -png -r 150 -singlefile resume.pdf resume

clean:
	rm -f resume.aux resume.log resume.out resume.synctex.gz
