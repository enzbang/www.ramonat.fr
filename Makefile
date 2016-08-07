all:  jean.html

.PHONY: clean

jean-content.html: jean.md
	pandoc -S -o jean-content.html -t html -f markdown jean.md

jean.html: jean-header.html jean-footer.html jean-content.html
	cat jean-header.html jean-content.html jean-footer.html > jean/index.html


#%.html: %.md
#	pandoc -S -o $@ -t html -f markdown $<

