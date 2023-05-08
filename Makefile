.PHONY: all
all: exception.pdf index.html

exception.pdf: exception.tex
	xelatex $<

index.html: README.md
	pandoc -f gfm -t html --standalone -i $< --metadata title='Worldwide AGPL Exception for Modifications for the Purposes of Flood Control, Security, and CAPTCHA Software Integration' > $@
