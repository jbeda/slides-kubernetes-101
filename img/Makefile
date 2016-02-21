origfiles = $(wildcard orig/*.jpg)
smallfiles = $(subst orig/,,$(origfiles))
pngfiles = $(patsubst %.dot,%.png,$(dotfiles))

all: $(smallfiles)

%.jpg: orig/%.jpg
	convert -quality 75 -resize 1200x1200 $< $@