.PHONY: help hugo-serve

help:
	@echo 'hugo-serve - serve the web site'

##########
## deploy
deploy: cv
	@hugo
	@rsync -avz --delete public/ perso.website:/home/user-data/www/default

#############
## tools

hugo-serve:
	hugo serve

import-publications:
	@academic import --bibtex content/publication/publi.bib


################
## build my cv

cv:
	@make pdf -C content/cv
	@cp -f ./content/cv/resume.pdf static/files/cv.pdf

##############
## themes

init-theme:
	@git submodule update --init
