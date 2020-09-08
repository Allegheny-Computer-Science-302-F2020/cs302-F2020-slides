.PHONY: main clean FORCE

main: cs302-week-one.pdf

%.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf $(patsubst %.pdf,%.tex,$@)

clean:
	latexmk -pdf -C
