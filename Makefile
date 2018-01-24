SUBMISSION_STUB = submission/manuscript

$(SUBMISSION_STUB).pdf : $(SUBMISSION_STUB).md submission/header.tex
	pandoc -s --include-in-header=submission/header.tex -V geometry:margin=1in -o $@ $<
