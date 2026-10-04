##
# MJL Resume
#
# @file
# @version 0.7

LATEX ?= pdflatex

mjl-resume.pdf: mjl-resume.tex
	@$(LATEX) mjl-resume.tex

.PHONY: release
release:
	$(eval ver := v$(shell date +%Y.%-m.%-d))
	@git tag -a $(ver) -m "Resume release $(ver)"
	@git push origin $(ver)

.PHONY: in-docker
in-docker:
	@docker run --rm -v "${PWD}:/scratch" -w "/scratch" texlive/texlive:latest make mjl-resume.pdf

.PHONY: clean
clean:
	@rm -f mjl-resume.aux mjl-resume.out mjl-resume.log mjl-resume.pdf

# end
