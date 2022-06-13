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


[Citations](https://www.dtsheffler.com/blog/2014-07-09-bibdesk-and-latex-citations/#fn1)


pandoc -f latex -t html5 --biblatex --citeproc -H css -B nav -A nav--bibliography=htmlrefs.bib --mathjax -o abstract.html abstract.tex


Use defaults yaml file instead:


pandoc --defaults defs.yaml -o new/abstract.html abstract.tex -M title='TL;DR'
pandoc --defaults defs.yaml -o new/dedication.html dedication.tex -M title='Acknowledgments'
pandoc --defaults defs.yaml -o new/publications.html publications.tex -M title='Publications'
pandoc --defaults main.yaml -o new/introduction.html introduction.tex -M title='Introduction'
