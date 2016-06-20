PAGES=2d box bracket constraints contact download examples features index library linkage \
	ref tech tutorial
HTMLPAGES=$(patsubst %,html/%.html,$(PAGES))

html/%.html: %.pl
	HTML=1 perl $^ | sed -e '1,/^$$/d' >$@

all: $(HTMLPAGES)

clean:
	rm $(HTMLPAGES)

.PHONY: all clean
