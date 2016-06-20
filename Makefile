PAGES=2d box bracket constraints contact download examples features index library linkage \
	ref tech tutorial
HTMLPAGES=$(patsubst %,html/%.html,$(PAGES))

html/%.html: %.pl
	HTML=1 perl $^ | sed -e '1,/^$$/d' >$@

all: $(HTMLPAGES)

clean:
	rm $(HTMLPAGES)

gh-pages: all
	if [ -z "$(SUBDIR)" -o -z "$(REMOTE)" ]; then \
		echo "Usage: make gh-pages SUBDIR=master REMOTE=git@github.com:solvespace/solvespace"; \
	fi
	git clone `git config --get remote.origin.url` .gh-pages --reference .
	git -C .gh-pages checkout gh-pages
	rm -rf .gh-pages/$(SUBDIR)
	cp -rL html .gh-pages/$(SUBDIR)
	git -C .gh-pages add -A
	git -C .gh-pages commit -m "Documentation update."
	git -C .gh-pages push $(REMOTE) gh-pages
	rm -rf .gh-pages

.PHONY: all clean
