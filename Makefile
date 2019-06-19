all:
	rm -rf _site
	bundle exec jekyll serve -l 

install:Gemfile
	bundle install
