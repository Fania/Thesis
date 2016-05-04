# Readme


## Pre-requistites

- (Mac) MacTex
- (Win) Tex Live


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


## To add a word to spell check ignore
```alt + .'''


## TODO

- [x] Linespacing
- [ ] Header and Footer style ?
- [ ] Title, abstract design spacing
- [ ] Finish style
- [ ] Index?
- [ ] Colours
- [ ] Diagrams
- [x] Epigraphs
- [x] Tables, Figures add [htbp!]
- [x] Table style, booktabs style?
- [x] Figures images linewidth [h!]
- [x] Image file size?
- [x] Preface?
- [ ] Code listings math symbols?
- [x] Code style?
- [ ] Align algorithms
- [ ] Flow charts per algorithm
- [x] Debugging stuff
- [x] Comment package
- [x] Align all equations
- [x] Move usepackage statements out
- [x] Footnotes in captions not working
- [x] Rewrite equations to match double lines
- [x] URL line breaks
- [ ] bit.ly all urls
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
- [ ] Arty Bollocks
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
- [ ] Change note on publications in chapters
- [ ] Table of contents move from left to right, from creative to precise
- [x] Mini index (summary with page numbers) for each chapter
- [x] Word Count?
- [ ] Inkscape export messes up colour of page?
- [ ] Make sure rejected papers are included in thesis
- [ ] Chapter headings in IPA [pʌtʌfɪzɪks]
- [ ] Change numbering order of chapters?
- [x] Tools of the Trade?
- [ ] Academia it's own chapter?
- [ ] pata.fania.eu stuff
- [x] Change to biblatex
- [ ] Add change-log to website
- [ ] Flowchart of website prototype workflow from query to results
- [x] Put inspiration into lit review? Queneau and library of faustroll etc
- [ ] Explain why I only use the first occurance
- [x] PEP20
- [ ] AVOID: so, in principle,
- [ ] double check line numbers in code
- [ ] Rhyming pattern for future work
- [ ] Go over all table of contents figure captions
- [x] glossary entries with back links to pages
- [x] add line with three stars/spirals in middle to separate paragraphs
- [ ] state of the art versus state of the science
- [ ] when to use italics and when quotes
- [x] Use Avant Garde font
- [ ] double check hyperref links in pdf toc
- [ ] Add stars line where appropriate (\spirals)
- [x] fix overflow of minicontents for each chapter
- [ ] make sure I mention everything covered in foundations in the lit review
- [ ] add some \nameref{ch:test} references instead of just \ref{}
- [ ] add margin notes for references to my publications
- [ ] Boden argues ?? Boden argued ??
- [x] Redesign chapter title pages (put toc on new page)
- [x] Redesign part title pages (fonts?)
- [ ] Check spelling of Web/web and Internet/internet
- [x] TODO add new spiral for techno-practice
- [ ] Set caption font to sans serif?
- [ ] do todos for pata.physics.wtf and fania.uk
- [ ] deal with Hongji's feedback
- [ ] add gource, gitgraph.js
- [ ] list of equations
- [ ] fix all citations (to autocite or not?)
- [x] make main TOC only show sections, not subsections (chapter TOC will show all detail)
- [ ] put link to TOC into footer?
- [ ] add header and footer again?


## Hongji feedback
- [x] I like the structure in terms that you divided it into parts, chapters and sections.
- [x] You can have a bibliography but please have a reference.
- [x] I like that you use the phrase of Algorithmic Meta-Creativity
- [ ] Research questions in Section 1.2: it is best not to use yes or no question and it will be better to make these questions more quantitative.
- [ ] Chapter 3, do you use an existing research method? Or do you hope to develop a new one? I read that you wrote about workflow -- are steps here corresponding to steps in your chosen method?
- [ ] Chapter 8 is a key chapter. I am sure that you have a plan to expand the discussion.
- [x] I liked that chosen topics in Part II, in particular, Chapter 7, Evaluation.
- [x] Finally, the structure is very clear and presentation is technically artistic.


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
