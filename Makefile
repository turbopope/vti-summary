all: summary.md
	pandoc summary.md -o summary.pdf --mathjax

clean:
	rm -f summary.pdf
