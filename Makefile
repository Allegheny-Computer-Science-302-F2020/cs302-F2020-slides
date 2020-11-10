.PHONY: main clean FORCE

main: cs302-week-one.pdf cs302-week-two.pdf cs302-week-three.pdf cs302-week-four.pdf cs302-week-five.pdf cs302-week-six.pdf cs302-week-seven.pdf cs302-week-eight.pdf cs302-week-nine.pdf cs302-week-ten.pdf cs302-week-eleven.pdf

%.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode --shell-escape' -pdf $(patsubst %.pdf,%.tex,$@)

clean:
	latexmk -pdf -C
