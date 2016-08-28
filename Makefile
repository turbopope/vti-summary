all: summary.pdf definitions.pdf

%.pdf: %.md
	pandoc $< -o $@ --mathjax

clean:
	rm -f summary.pdf definitions.pdf
