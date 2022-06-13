# How to

pandoc 
  -f latex
  -t html5 
  --biblatex
  --citeproc
  --css htmlstyle.css
  -H css
  -B nav
  -B arrow
  -A nav
  --bibliography=htmlrefs.bib
  --mathjax
  -m title='TL;DR'
  -o XYZ.html
  <!-- --metadata=title:'TL DR' -->
  <!-- --M=title='TL DR' -->
  <!-- link-citations=true -->
  <!-- --shift-heading-level-by=1 -->
<!-- top-level-division: chapter -->


pandoc -f latex -t html5 --biblatex --citeproc -H css -B nav -A nav--bibliography=htmlrefs.bib --mathjax -o abstract.html abstract.tex

pandoc --defaults defs.yaml -o abstract.html abstract.tex


pandoc --defaults defs.yaml -o abstract.html abstract.tex -M title='TL;DR'