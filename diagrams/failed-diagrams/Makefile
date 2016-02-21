dotfiles = $(wildcard *.dot)
svgfiles = $(patsubst %.dot,%.svg,$(dotfiles))
pngfiles = $(patsubst %.dot,%.png,$(dotfiles))

all: $(svgfiles) $(pngfiles)

%.svg: %.dot
	dot -Tsvg $< > $@

%.png: %.dot
	dot -Tpng $< > $@

watch:
	fswatch -e '.*\.(svg|png)' -o *.dot | xargs -n1 -I{} make