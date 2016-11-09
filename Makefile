SUBMISSION_STUB = submission/Schloss_ReproComment_mBio_2016

$(SUBMISSION_STUB).pdf : $(SUBMISSION_STUB).md submission/header.tex
	pandoc -s --include-in-header=submission/header.tex -V geometry:margin=1in -o $@ $<
