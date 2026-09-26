##
# MJL Resume
#
# @file
# @version 0.7

LATEX ?= pdflatex

mjl-resume.pdf: mjl-resume.tex
	@$(LATEX) mjl-resume.tex

.PHONY: in-docker
in-docker:
	@docker run --rm -v "${PWD}:/scratch" -w "/scratch" texlive/texlive:latest make

.PHONY: clean
clean:
	@rm -f mjl-resume.aux mjl-resume.out mjl-resume.log

# end
