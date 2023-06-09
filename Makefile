.PHONY: all
all: exception.pdf index.html exception.html

exception.pdf: exception.tex
	xelatex $<

exception.html: exception.tex
	pandoc -f latex -t html --standalone $< > $@

exception.md: exception.tex
	pandoc -f latex -t gfm --standalone $< > $@

index.html: README.md
	pandoc -f gfm -t html --standalone -i $< --metadata title='Worldwide AGPL Exception for Modifications for the Purposes of Flood Control, Security, and CAPTCHA Software Integration' > $@
