# Readme


## Pre-requistites

- (Mac) MacTex
- (Win) Tex Live


## HTML Conversion

<img class="triplespiral" src="../images/triplespiral.png">


<div class="sourceCode">
<figure id="code:B.1">
<pre class="sourceCode haskell">
<code class="sourceCode haskell scrollbar">
  
</code></pre>
<figcaption>Code B.1 – Adding text files to the corpus library</figcaption>
</figure>
</div>

<pre class="text"><code>
</code></pre>

<figure id="tab:12.1">
<div class="scrollbar">
<table>
</table>
</div>
<figcaption>Table 12.1 - Comparison of patalgorithms showing a selection of results for each</figcaption>
</figure>

<figure id="eq:10.1" class="equation scrollbar">
<span class="math display">
<figcaption>(10.1)</figcaption>
</figure>

<figure id="fig:3.2">
<img src="../images/tmpr.png" alt="Edmonds and Candy's trajectory model (TMPR)">
<figcaption>Figure 3.2 Edmonds and Candy's trajectory model (TMPR)</figcaption>
</figure>
<a href="#fig:mytmpr">Figure 3.3</a>

<figure id="eq:6.1" class="equation scrollbar">
<img src="../images/tdm.png" alt="Term-Document Matrix">
<figcaption>(6.1)</figcaption>
</figure>

<span class="blockcitation" data-cites="Hendler2013">(Hendler and Hugill <a href="#ref-Hendler2013">2013</a>)</span>

<div class="sourceCode">
<figure id="code:10.1">
<pre class="sourceCode python">
<code class="sourceCode python scrollbar">library <span class="op">=</span> PlaintextCorpusReader(corpus_root, <span class="st">&#39;.*\.txt&#39;</span>)
l_00 <span class="op">=</span> library.words(<span class="st">&#39;00.faustroll.txt&#39;</span>)
l_01 <span class="op">=</span> library.words(<span class="st">&#39;01.poe1.txt&#39;</span>)
...
l_27 <span class="op">=</span> library.words(<span class="st">&#39;27.verne.txt&#39;</span>)
</code></pre>
<figcaption>Code 10.1 – Adding text files to the corpus library</figcaption>
</figure>
</div>

```
pandoc title.tex -f latex -t html5 -o title.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav"
'''

```
pandoc abstract.tex -f latex -t html5 -o abstract.html  --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav"
'''

```
pandoc dedication.tex -f latex -t html5 -o dedication.html  --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav"
'''

```
pandoc publications.tex -f latex -t html5 -o publications.html  --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav"
'''

```
pandoc introduction.tex -f latex -t html5 -o introduction.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc inspirations.tex -f latex -t html5 -o inspirations.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=1 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc methodology.tex -f latex -t html5 -o methodology.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=2 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc pataphysics.tex -f latex -t html5 -o pataphysics.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=3 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc creativity.tex -f latex -t html5 -o creativity.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=4 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc technology.1.tex -f latex -t html5 -o technology.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=5 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc evaluation.tex -f latex -t html5 -o evaluation.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=6 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc foundation.tex -f latex -t html5 -o foundation.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=7 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc interpretation.tex -f latex -t html5 -o interpretation.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=8 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc implementation.tex -f latex -t html5 -o implementation.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=9 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc applications.tex -f latex -t html5 -o applications.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=10 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc analysis.tex -f latex -t html5 -o analysis.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=11 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc aspirations.tex -f latex -t html5 -o aspirations.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=12 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc observations.tex -f latex -t html5 -o observations.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=13 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

Appendix

```
pandoc random.tex -f latex -t html5 -o random.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=13 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc code.tex -f latex -t html5 -o code.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=13 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc wordnet.tex -f latex -t html5 -o wordnet.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=13 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc git.tex -f latex -t html5 -o git.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=13 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''

```
pandoc publications.tex -f latex -t html5 -o publications.html --toc --toc-depth=3 --number-sections --section-divs --include-in-header="../pandoc/css" --include-before-body="../pandoc/nav" --include-after-body="../pandoc/nav" --number-offset=13 --filter pandoc-citeproc --metadata link-citations="true" --metadata reference-section-title="References" --bibliography="../pandoc/htmlrefs.bib"
'''


--mathjax

link-citations

pandoc-citeproc link-citations


--reference-location = block|section|document
--mathjax
--bibliography=FILE
--css=URL
--template=FILE
--data-dir
--include-in-header=FILE
--include-before-body=FILE
--include-after-body=FILE

--csl="../bibtex.csl"
--bibliography="../back/refs.bib" 







## WORDCOUNT

```texcount -inc main.tex > count.txt'''


<!-- \colorbox{red!30}{text} -->


## Compile

To compile manually via commandline:

pdflatex --file-line-error -shell-escape main

1. pdflatex main
2. biber main
  makeglossaries main
3. pdflatex main
4. pdflatex main

(Works both on Mac and Win)


## Turn Black and White

gswin32c -sOutputFile=grayscale.pdf -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 -dNOPAUSE -dBATCH main281116.pdf 






## To add a word to spell check ignore

```alt + .'''


## TODO

- [x] Linespacing
- [x] Header and Footer style ?
- [x] Title, abstract design spacing
- [x] Finish style
- [ ] Index?
- [x] Colours
- [x] Diagrams
- [x] Epigraphs
- [x] Tables, Figures add [htbp!]
- [x] Table style, booktabs style?
- [x] Figures images linewidth [h!]
- [x] Image file size?
- [x] Preface?
- [x] Code listings math symbols?
- [x] Code style?
- [x] Align algorithms
- [x] Flow charts per algorithm
- [x] Debugging stuff
- [x] Comment package
- [x] Align all equations
- [x] Move usepackage statements out
- [x] Footnotes in captions not working
- [x] Rewrite equations to match double lines
- [x] URL line breaks
- [x] bit.ly all urls
- [x] Fancyhdr Warnings
- [x] Finish adding table of equations
- [x] Add Phoenix exhibition LMS showcase
- [x] Margin symbols
- [x] Preface part and postface part
- [x] Appendix alpha numbering
- [x] Table spacing before and after
- [x] Structure of thesis section in introduction
- [x] Remove dotted line from preface and chapter headings in toc
- [ ] Pataphysical chapter numbering (binary)
- [ ] Add crotty to methodology see image
- [x] Arty Bollocks
- [ ] Add odd pages, pataphysical stuff. comments. jokes. quotes
- [ ] Formatting marks on odd pages
- [x] Anticipations Introduction chapter rename
- [x] Lit Review - Contemplations - !=Ignorance
- [x] Analysis - Considerations
- [x] Library of Babel
- [x] Hello World
- [ ] Remove all page numbers from references?
- [x] Chapter sign §
- [ ] Check emphasis notes in citations
- [x] Conjecture as chapter title in intro?
- [x] Change note on publications in chapters
- [ ] Table of contents move from left to right, from creative to precise
- [x] Mini index (summary with page numbers) for each chapter
- [x] Word Count?
- [x] Inkscape export messes up colour of page?
- [ ] Make sure rejected papers are included in thesis
- [ ] Chapter headings in IPA [pʌtʌfɪzɪks]
- [ ] Change numbering order of chapters?
- [x] Tools of the Trade?
- [ ] Academia it's own chapter?
- [x] pata.fania.eu stuff
- [x] Change to biblatex
- [ ] Add change-log to website
- [x] Flowchart of website prototype workflow from query to results
- [x] Put inspiration into lit review? Queneau and library of faustroll etc
- [x] Explain why I only use the first occurance
- [x] PEP20
- [ ] AVOID: so, in principle,
- [x] double check line numbers in code
- [x] Rhyming pattern for future work
- [x] Go over all table of contents figure captions
- [x] glossary entries with back links to pages
- [x] add line with three stars/spirals in middle to separate paragraphs
- [ ] state of the art versus state of the science
- [x] when to use italics and when quotes
- [x] Use Avant Garde font
- [ ] double check hyperref links in pdf toc
- [x] Add stars line where appropriate (\spirals)
- [x] fix overflow of minicontents for each chapter
- [x] make sure I mention everything covered in foundations in the lit review
- [ ] add some \nameref{ch:test} references instead of just \ref{}
- [x] add margin notes for references to my publications
- [ ] Boden argues ?? Boden argued ??
- [x] Redesign chapter title pages (put toc on new page)
- [x] Redesign part title pages (fonts?)
- [ ] Check spelling of Web/web and Internet/internet
- [x] TODO add new spiral for techno-practice
- [x] Set caption font to sans serif?
- [ ] do todos for pata.physics.wtf and fania.uk
- [x] deal with Hongji's feedback
- [x] add gource, gitgraph.js
- [ ] list of equations
- [ ] fix all citations (to autocite or not?)
- [x] make main TOC only show sections, not subsections (chapter TOC will show all detail)
- [x] put link to TOC into footer?
- [x] add header and footer again?
- [x] add "interludes" ? pages containing relevant quotes and sayings for the upcoming chapter? 
- [x] remove page num from parts in toc
- [ ] make pre and postface fonts italic in toc
- [x] indent parts in toc
- [x] weird space after mini toc?
- [ ] turn code into art. each aspect of phd is art.
- [ ] remove publications in preface and just describe fully in first chapter
- [x] make all chapter poems sans serif or monospace
- [ ] remove spacing between preface and postface items in toc 
- [x] replace some chapter poems with shakespeare versions to be able to refer back to them later
- [x] key of code stuff in intro (e.g. oreilly)
- [x] Make it clear that you are presenting a thesis that embodies knowledge in an artefact (the software) but avoid the "practice-based" argument altogether. 
- [x] format all numbers using \num{} also \num{1.5e10}
- [ ] check spelling of all names (foreign ones especially)
- [ ] add glossary at beginning of pata terms
- [x] different style (underline) subsubsections?
- [ ] add images as seperate figure items, also in toc
- [ ] convert all urls to proper references
- [x] pataphysicalised terms == patadata
- [x] quotations in gray
- [x] table captions on top?
- [ ] add space before floats
- [x] description list spacing by adding [longest word] after environment
- [x] cut pdf with spiral in it for line \spirals
- [x] remove indent in inline code style
- [x] add Olston2010 reference and Gulli2005 on crawling and size of web
- [x] sourceatright font and size
- [x] refer back to oulipo technique table in later chapters
- [ ] capitalise web or not? internet?
- [ ] capitalise disciplines or not?
- [ ] remove syntax highlighting? make background gray
\todo{check if i need to submit a CD?}



Wordcount after Boot Camp 54715 total
11.08.16 56630
11.11.16 65564


## Hongji feedback
- [ ] Research questions in Section 1.2: it is best not to use yes or no question and it will be better to make these questions more quantitative.
- [ ] Chapter 3, do you use an existing research method? Or do you hope to develop a new one? I read that you wrote about workflow -- are steps here corresponding to steps in your chosen method?



## GOURCE

--hide bloom,date,dirnames,files,filenames,mouse,progress,tree,users,usernames


Interactive keyboard commands:
    (V)   Toggle camera mode
    (C)   Displays Gource logo
    (K)   Toggle file extension key
    (M)   Toggle mouse visibility
    (N)   Jump forward in time to next log entry
    (S)   Randomize colours
    (D)   Toggle directory name display mode
    (F)   Toggle file name display mode
    (U)   Toggle user name display mode
    (G)   Toggle display of users
    (T)   Toggle display of directory tree edges
    (R)   Toggle display of root directory edges
    (+-)  Adjust simulation speed
    (<>)  Adjust time scale
    (TAB) Cycle through visible users
    (F12) Screenshot
    (Alt+Enter) Fullscreen toggle
    (ESC) Quit

something.aux
something.blg test.pyg

<!-- --file-filter "/((Bash|Miscellaneous|Python)/.*|Blogger/\w+\.\w+)" -->

.+\.(c(c|pp|s(proj)?|xx)?|d(ll|sp)|exe|filters|h(pp)?|i(n(c|l)|pp)|lib|sln|vcx?proj)$

```
gource -w -800x600 --key --disable-bloom --hide filenames --title "Fania's PhD" --seconds-per-day 0.1 --transparent --highlight-dirs --file-filter '.*\.(aux|pyg|old)'
--background FFFFFF
```


## Errors

http://www.cs.utexas.edu/~witchel/errorclasses.html

When LaTeX finds an error like this, it displays the error message and pauses. You must type one of the following letters to continue:

**x**	 Stop and exit
**q** Carry on quietly
**e** Stop the program and open editor at error
**h** Help
**i** Input correction in place of error and carry on
**r**	Run in non-stop mode

To quiet an error of chktex add ```% chktex XX''' to the end of the relevant line.


## ARTY BOLLOCKS


1 My work explores the relationship between multiculturalism and multimedia experiences.

2 With influences as diverse as Kierkegaard and Roy Lichtenstein, new insights are synthesised from both explicit and implicit dialogues.

3 Ever since I was a teenager I have been fascinated by the traditional understanding of the human condition. What starts out as triumph soon becomes debased into a hegemony of defeat, leaving only a sense of what could have been and the unlikelihood of a new synthesis.

4 As shimmering phenomena become frozen through studious and personal practice, the viewer is left with a clue to the limits of our culture.

http://www.artybollocks.com/#abg_full

% MEMOIR Division Level
% \book -2
% \part -1
% \chapter 0
% \section 1
% \subsection 2
% \subsubsection 3
% \paragraph 4
% \subparagraph 5
