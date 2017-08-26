REMOTE ?= git@github.com:solvespace/solvespace-web

PAGES  := \
	index examples tutorial bracket box constraints linkage 2d \
	features download ref tech library contact
ASSETS := \
	$(wildcard pics/*) $(wildcard vids/*) $(wildcard dl/*) \
	style.css support.js
OUTPUT := \
	$(patsubst %,html/%.html,$(PAGES)) \
	$(patsubst %,html/%,$(ASSETS))

html/%.html: %.pl TEMPL.pm
	HTML=1 perl -I. $< >$@

html/%: %
	@mkdir -p $(dir $@)
	cp $< $@

all: $(OUTPUT)

check: all
	# requires w3c-linkchecker
	checklink -qr html/index.html -X 'html/forum.html$$' | tee checklink.txt
	if grep "Code:\ 404" checklink.txt >/dev/null; then exit 1; else rm checklink.txt; fi

clean:
	@rm -rf html/*

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
