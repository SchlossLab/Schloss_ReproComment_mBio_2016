SUBMISSION_STUB = submission/manuscript

$(SUBMISSION_STUB).pdf : $(SUBMISSION_STUB).md submission/header.tex submission/reference.bib
	pandoc -s --include-in-header=submission/header.tex -V geometry:margin=1in -o $@ $< --bibliography=submission/reference.bib --csl=submission/mbio.csl
