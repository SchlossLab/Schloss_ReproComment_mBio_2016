SUBMISSION_STUB = submission/manuscript
RESPONSE_STUB = submission/response_to_reviewers
TRACK_CHANGES = submission/track_changes.pdf

$(SUBMISSION_STUB).pdf : $(SUBMISSION_STUB).md submission/header.tex submission/reference.bib
	pandoc -s --include-in-header=submission/header.tex -V geometry:margin=1in -o $@ $< --bibliography=submission/reference.bib --csl=submission/mbio.csl

$(SUBMISSION_STUB).tex : $(SUBMISSION_STUB).md submission/header.tex submission/reference.bib
	pandoc -s --include-in-header=submission/header.tex -V geometry:margin=1in -o $@ $< --bibliography=submission/reference.bib --csl=submission/mbio.csl

$(SUBMISSION_STUB).docx : $(SUBMISSION_STUB).md submission/header.tex submission/reference.bib
	pandoc -s --include-in-header=submission/header.tex -V geometry:margin=1in -o $@ $< --bibliography=submission/reference.bib --csl=submission/mbio.csl

$(RESPONSE_STUB).pdf : $(RESPONSE_STUB).md submission/header.tex
	pandoc -s --include-in-header=submission/header.tex -V geometry:margin=1in -o $@ $< --bibliography=submission/reference.bib --csl=submission/mbio.csl

$(TRACK_CHANGES) : submission/manuscript.tex
	git show 17d32eb82:submission/manuscript.md > submission/original.md
  git show 17d32eb82:submission/reference.bib > submission/original.bib
	pandoc -s --include-in-header=submission/header.tex -V geometry:margin=1in -o submission/original.tex submission/original.md --bibliography=submission/reference.bib --csl=submission/mbio.csl
	latexdiff submission/original.tex submission/manuscript.tex > submission/track_changes.tex
	pdflatex submission/track_changes.tex
	rm submission/original.*
	mv track_changes.pdf submission/
	rm track_changes.*

all: $(SUBMISSION_STUB).pdf $(SUBMISSION_STUB).docx $(RESPONSE_STUB).pdf $(TRACK_CHANGES)
