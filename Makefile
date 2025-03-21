##
# MJL Resume
#
# @file
# @version 0.7

LATEX ?= pdflatex

mjl-resume.pdf: mjl-resume.tex
	@$(LATEX) mjl-resume.tex

.PHONY: clean
clean:
	@rm mjl-resume.pdf mjl-resume.aux mjl-resume.out mjl-resume.log

# end
