default: pdf
all: pdf mobi epub

# 10-12" screen readers, tablets, etc
pdf: Open-Advice2.pdf

# only really useful as a e-reader pre-stage
html: Open-Advice2.html

# recommended for Amazon Kindle 7/8" screen readers
mobi: Open-Advice2.mobi

# for everyone elses 7/8" screen readers
epub: Open-Advice2.epub

AUTHORS = "Lydia Pintscher"
COVER 	= "frontcover.jpg"

####### Helpers #######

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

%.html:	%.tex
	htlatex $< "xhtml,fn-in"

%.epub:	%.html
	# requires calibre
	ebook-convert $< $(basename $<).epub \
		--cover $(COVER) \
		--authors $(AUTHORS) \
		--change-justification justify

%.mobi:	%.html
	# requires calibre
	ebook-convert $< $(basename $<).mobi \
		--cover $(COVER) \
		--authors $(AUTHORS) 

clean:
	-rm -rf Open-Advice2.pdf Open-Advice2.log Open-Advice2.toc Open-Advice2.aux
	-rm -rf Open-Advice2.out Open-Advice2.tdo Open-Advice2.xmpi
	-rm -rf Open-Advice2*.html Open-Advice2.css Open-Advice2.4* Open-Advice2.idv
	-rm -rf Open-Advice2.lg Open-Advice2.dvi Open-Advice2.tmp Open-Advice2.toc Open-Advice2.xref
	-rm -rf Open-Advice2.epub Open-Advice2.mobi
	-find . -name "*.aux" -and -not -path ./.git -prune | xargs rm -f
