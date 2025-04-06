
.SUFFIXES: .pic .ms .pdf .ps .eps .xml
.DEFAULT: .xml.ms .ms.pdf .ps.pdf .eps.pdf

default: article.pdf

.xml.ms:
	xsltproc teip5toms.xsl  $< | grep -v '^$$' >  $*.ms

.ms.pdf:
	pdfroff -U  -m pdfpic -m pdfmark -ms -k  -s -t -P-pa4 -Tps parameters.ms  $< >  $*.pdf
.eps.pdf:
	epstopdf  $<

clean:
	rm -f *~ *.ps *.pdf article.ms

article.pdf: parameters.ms article.ms  Makefile \
	characters_per_year.pdf \
	cladogram-poetry.pdf \
	cladogram-prose.pdf \
	distribution.pdf \
	refs_1corinthians_13_12.pdf \
	refs_1corinthians_13_13.pdf \
	refs_genesis_1_27.pdf \
	refs_genesis_2_7.pdf \
	refs_in_poetry_per_year.pdf \
	refs_john_6_23.pdf \
	refs_matt_16_18.pdf \
	refs_per_year.pdf \
	refs_proverbs_4_23.pdf \
	refs_psalm_23_4.pdf \
	selected_poetry_refs_per_year.pdf \
	selected_prose_refs_per_year.pdf \
	selected_refs_per_year.pdf \
	words_per_year.pdf


article.ms: article.xml

characters_per_year.pdf: characters_per_year.eps
cladogram-poetry.pdf: cladogram-poetry.eps
cladogram-prose.pdf: cladogram-prose.eps
distribution.pdf: distribution.eps
refs_1corinthians_13_12.pdf: refs_1corinthians_13_12.eps
refs_1corinthians_13_13.pdf: refs_1corinthians_13_13.eps
refs_genesis_1_27.pdf: refs_genesis_1_27.eps
refs_genesis_2_7.pdf: refs_genesis_2_7.eps
refs_in_poetry_per_year.pdf: refs_in_poetry_per_year.eps
refs_john_6_23.pdf: refs_john_6_23.eps
refs_matt_16_18.pdf: refs_matt_16_18.eps
refs_per_year.pdf: refs_per_year.eps
refs_proverbs_4_23.pdf: refs_proverbs_4_23.eps
refs_psalm_23_4.pdf: refs_psalm_23_4.eps
selected_poetry_refs_per_year.pdf: selected_poetry_refs_per_year.eps
selected_prose_refs_per_year.pdf: selected_prose_refs_per_year.eps
selected_refs_per_year.pdf: selected_refs_per_year.eps
words_per_year.pdf: words_per_year.eps


