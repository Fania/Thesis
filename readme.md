# Readme


## Pre-requistites

- (Mac) MacTex
- (Win) Tex Live


## Compile
To compile manually via commandline:

pdflatex --file-line-error -shell-escape main

1. pdflatex main
2. biber main
makeglossaries main
3. pdflatex main
4. pdflatex main

(Works both on Mac and Win)


## TODO

- [X] Linepsacing
- [ ] Header and Footer style ?
- [ ] Title, abstract design spacing
- [ ] Finish style
- [ ] Index?
- [ ] Colours
- [ ] Diagrams
- [X] Epigraphs
- [X] Tables, Figures add [htbp!]
- [X] Table style, booktabs style?
- [X] Figures images linewidth [h!]
- [X] Image file size?
- [X] Preface?
- [ ] Code listings math symbols?
- [X] Code style?
- [ ] Align algorithms
- [ ] Flow charts per algorithm
- [X] Debugging stuff
- [X] Comment package
- [X] Align all equations
- [X] Move usepackage statements out
- [ ] Footnotes in captions not working
- [X] Rewrite equations to match double lines
- [X] URL line breaks
- [ ] bit.ly all urls
- [X] Fancyhdr Warnings
- [X] Finish adding table of equations
- [X] Add Phoenix exhibition LMS showcase
- [ ] Margin symbols
- [X] Preface part and postface part
- [X] Appendix alpha numbering
- [X] Table spacing before and after
- [X] Structure of thesis section in introduction
- [X] Remove dotted line from preface and chapter headings in toc
- [ ] Pataphysical chapter numbering (binary)
- [ ] Add crotty to methodology see image
- [ ] Arty Bollocks
- [ ] Add odd pages, pataphysical stuff. comments. jokes. quotes
- [ ] Formatting marks on odd pages
- [ ] Anticipations Introduction chapter rename
- [ ] Lit Review - Contemplations - !=Ignorance
- [ ] Analysis - Considerations
- [ ] Library of Babel
- [X] Hello World
- [ ] Remove all page numbers from references?
- [ ] Chapter sign §
- [ ] Check emphasis notes in citations
- [ ] Conjecture as chapter title in intro?
- [ ] Change note on publications in chapters
- [ ] Table of contents move from left to right, from creative to precise
- [X] Mini index (summary with page numbers) for each chapter
- [ ] Word Count?
- [ ] Inkscape export messes up colour of page?
- [ ] Make sure rejected papers are included in thesis
- [ ] Chapter headings in IPA [pʌtʌfɪzɪks]
- [ ] Change numbering order of chapters?
- [X] Tools of the Trade?
- [ ] Academia it's own chapter?
- [ ] pata.fania.eu stuff
- [X] Change to biblatex
- [ ] Add change-log to website
- [ ] Flowchart of website prototype workflow from query to results
- [ ] Put inspiration into lit review? Queneau and library of faustroll etc
- [ ] Explain why I only use the first occurance
- [ ] PEP20
- [ ] AVOID: so, in principle,
- [ ] double check line numbers in code
- [ ] Rhyming pattern for future work
- [ ] Go over all table of contents figure captions
- [X] glossary entries with back links to pages



## Errors

When LaTeX finds an error like this, it displays the error message and pauses. You must type one of the following letters to continue:

**x**	 Stop and exit
**q** Carry on quietly
**e** Stop the program and open editor at error
**h** Help
**i** Input correction in place of error and carry on
**r**	Run in non-stop mode

To quiet an error of chktex add ```% chktex XX''' to the end of the relevant line.


## WORDCOUNT

```texcount -inc main.tex > count.txt'''



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


<!-- MINTED  -->
\begin{minted}{python}
  def boring(args = None):
  pass
\end{minted}

\mininline{python}{xyz}

\newmintinline['macro name']{'language'}{'options'}. If a 'macro name' is not specified, then the created macro is called \'language'inline
\py{xyz}

\mint{python}|import this|

\inputminted[firstline=2, lastline=12]{octave}{BitXorMatrix.m}
