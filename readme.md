# How to

pandoc 
  -f latex 
  -t html5 
  -o XYZ.html
  --biblatex
  link-citations
  <!-- --shift-heading-level-by=1 -->
  -H css
  -B nav
  --bibliography=htmlrefs.bib