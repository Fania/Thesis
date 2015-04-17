# Readme


## Pre-requistites

- (Mac) MacTex
- (Win) Tex Live


## Compile
To compile manually via commandline:

1. pdflatex main
2. bibtex main
3. pdflatex main
4. pdflatex main

(Works both on Mac and Win)


## TODO

* [X] Linepsacing
* [ ] header footer ?
* [ ] title, abstract design spacing
- [ ] Finish style
- [ ] Index?
- [ ] Colours
- [ ] Diagrams
- [X] Epigraphs
- [X] Tables, Figures add [htbp!]
- [X] Table style, booktabs style?
- [X] Figures images linewidth [h!]
- [X] Image file size?
- [ ] Preface?
- [ ] code listings math symbols?
- [ ] Code style?
- [ ] Align algorithms
- [ ] flow charts per algorithm
- [ ] Debugging stuff
- [ ] Comment package?
- [X] Align all equations
- [ ] Move usepackage statements out
- [ ] Footnotes in captions not working
- [X] Rewrite equations to match double lines
- [X] URL line breaks
- [ ] bit.ly all urls
- [ ] Fancyhdr Warnings
- [ ] Finish adding table of equations
- [ ] Add Phoenix exhibition LMS showcase



## Errors

When LaTeX finds an error like this, it displays the error message and pauses. You must type one of the following letters to continue:

Key	Meaning
x	Stop immediately and exit the program.
q	Carry on quietly as best you can and don't bother me with any more error messages.
e	Stop the program but re-position the text in my editor at the point where you found the error (This only works if you're using an editor which LaTeX can communicate with).
h	Try to give me more help.
i	(followed by a correction) means input the correction in place of the error and carry on (This is only a temporary fix to get the file processed. You still have to make that correction in the editor).
r	run in non-stop mode. Plow through any errors, unless too many pile up and it fails (100 errors).
