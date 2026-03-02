.PHONY: build clean serve

build:
	bundle exec jekyll build

clean:
	rm -rf _site

serve:
	bundle exec jekyll serve
