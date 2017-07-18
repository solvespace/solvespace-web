REMOTE?=git@github.com:solvespace/website

PAGES=2d box bracket constraints contact download examples features index library linkage \
	ref tech tutorial
HTMLPAGES=$(patsubst %,html/%.html,$(PAGES))

html/%.html: %.pl
	HTML=1 PERL5LIB=. perl $^ | sed -e '1,/^$$/d' >$@

all: $(HTMLPAGES)

clean:
	rm -f $(HTMLPAGES)

gh-pages: all
	mkdir .gh-pages
	cp .gitattributes .gh-pages/
	git -C .gh-pages init -q
	git -C .gh-pages checkout -q -b gh-pages
	cp -rLT html .gh-pages
	git -C .gh-pages add .
	git -C .gh-pages commit -q -m "Generate documentation."
	git -C .gh-pages push -f -q $(REMOTE) gh-pages
	rm -rf .gh-pages

.PHONY: all clean
