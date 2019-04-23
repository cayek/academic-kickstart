.PHONY: help hugo-serve

help:
	@echo 'hugo-serve - serve the web site'

hugo-serve:
	hugo serve

import-publications:
	@academic import --bibtex content/publication/publi.bib


################
## build my cv

cv:
	@make pdf -C content/cv
	@cp -f ./content/cv/resume.pdf static/files/cv.pdf
