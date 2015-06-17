% !TEX root = ../main.tex

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2015 DMU Thesis]
\def\baseclass{book}

\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}
  {\baseclass}
}

\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}

\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\ProcessOptions\relax
\LoadClass[a4paper,oneside,cmyk]{\baseclass}

\hfuzz=7pt
\vfuzz=7pt

% ---------------

% \usepackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10]{microtype}
% \microtypecontext{spacing=nonfrench}
% activate={true,nocompatibility} - activate protrusion and expansion
% final - enable microtype; use "draft" to disable
% tracking=true, kerning=true, spacing=true - activate these techniques
% factor=1100 - add 10% to the protrusion amount (default is 1000)
% stretch=10, shrink=10 - reduce stretchability/shrinkability (default is 20/20)

\overfullrule=2cm



% \usepackage{import}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
% \usepackage[bitstream-charter]{mathdesign} % TEST
% \usepackage{lmodern} % load a font with all the characters

\usepackage[main=UKenglish,french]{babel}
\usepackage[UKenglish]{isodate}


% FONTS

% Default font (\familydefault = \rmdefault = Computer Modern Roman)
% \renewcommand*{\familydefault}{\sfdefault}
% \renewcommand*\rmdefault{ppl}

% \usepackage{qagr}
\renewcommand*\rmdefault{pbk} % Bookman
\renewcommand*\sfdefault{lmssq} % Latin Modern Sans Extended

% EB Garamond
% \usepackage[cmintegrals,cmbraces]{newtxmath}
% \usepackage{garamond}
% \renewcommand*\rmdefault{garamond}

% \setmainfont{tgschola} % sets the roman font
% \setsansfont{tgadventor} % sets the sans font
% \setmonofont{<name of font>} % sets the monospace font

% TEX Gyre Schola
% \usepackage{tgschola}
% \renewcommand{\rmdefault}{}
% \renewcommand*\familydefault{\rmdefault}

% TEX Gyre Adventor
% \usepackage{tgadventor}
% \renewcommand*\sfdefault{tgadventor}
% \renewcommand*\familydefault{\sfdefault}


% TITLE STYLES

% \usepackage{titlesec}
% \titleformat{\chapter}[display]
%   {\normalfont\sffamily\huge\bfseries}
%   {\chaptertitlename\ \thechapter}{20pt}{\Huge}
% \titleformat{\section}
%   {\normalfont\sffamily\Large\bfseries}
%   {\thesection}{1em}{}


% OVERVIEW

% \usepackage{shorttoc}


% QUOTES

% \usepackagee[autostyle,english=british,french=guillemets]{csquotes}
% \usepackage{dirtytalk}
\renewenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax\sffamily\singlespacing\ignorespaces}
               {\unskip\unskip\endlist}


% MULTICOLUMN

\usepackage{multicol, ragged2e}


% LINKS

\usepackage[pdfencoding=auto,
            colorlinks=true,
            citecolor=green,
            linkcolor=blue,
            pdftex,
            pdfauthor={Fania Raczinski},
            pdftitle={PhD Thesis},
            pdfsubject={Web Collider},
            pdfkeywords={Pataphysics, Creative Computing, Interdisciplinary Research}]{hyperref}


% VERBATIM

\usepackage{alltt}


% SPACING

% environments: singlespace, onehalfspace, doublespace, spacing
\usepackage{setspace}
% \singlespacing
\onehalfspacing
% \doublespacing
% \setstretch{1.1}

\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}

\setlength{\intextsep}{20pt} % Vertical space above & below [h] floats
\setlength{\textfloatsep}{20pt} % Vertical space below (above) [t] ([b]) floats
\setlength{\abovecaptionskip}{10pt}
\setlength{\belowcaptionskip}{5pt}


% LIST SPACING

\usepackage{enumitem}
% or \setlist{noitemsep} to leave space around whole list
% \setlist{nosep}
\setlist{noitemsep}
\setlist[description]{style=nextline}


% TODONOTES

\usepackage[colorinlistoftodos]{todonotes}
%Place notes in left margin where there is more space
\reversemarginpar
%Number the todo item according to section numbering
% \newcommand{\ntodo}[2][]{\todo[#1]{\thesubsubsection{}. #2}}
\presetkeys{todonotes}{backgroundcolor=blue!20!white, linecolor=black, inline}{}

% \todoin{}
\newcommand\todoin[2][]{\todo[inline, caption={2do}, #1]{
\begin{minipage}{\textwidth-4pt}#2\end{minipage}}}
% \todo[done]{Stuff}


% MARGINS

\usepackage[a4paper, % twoside=false,
            left=4cm, right=2cm,
            top=2cm, bottom=4cm % ,showframe, showcrop
            ]
            {geometry}
% bindingoffset=6mm


% BIBLIOGRAPHY

\usepackage[sort&compress]{natbib}
\bibliographystyle{unsrtnat}
\setcitestyle{aysep={}}

% IMAGES

\usepackage{graphicx}
\graphicspath{ {images/} }


% HEADER & FOOTER

\usepackage{fancyhdr}
\pagestyle{fancy}
% \pagestyle{empty}
% Right Odd Left Even Center
% \renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
% \renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ #1}{}}
\lhead{\nouppercase{\leftmark}}
\rhead{\nouppercase{\rightmark}}
% \fancyhead{}
% \fancyhead[L]{\chaptermark}
% \fancyhead[R]{\sectionmark}
\fancyfoot{}
\fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0.1pt}
% \renewcommand{\footrulewidth}{0.1pt}

\setlength{\headheight}{13.6pt}


% COLOUR STUFF

\usepackage[cmyk]{xcolor}
\newenvironment{comment}{\par\color{cyan}}{\par}
\newenvironment{draft}{\par\color{magenta}}{\par}

\usepackage{framed}
\colorlet{shadecolor}{yellow!20}


% CODE

\usepackage{listings}
% \usepackage{color}
%
% \definecolor{dkgreen}{rgb}{0,0.6,0}
% \definecolor{gray}{rgb}{0.5,0.5,0.5}
% \definecolor{mauve}{rgb}{0.58,0,0.82}
% \definecolor{creme}{rgb}{1,1,0.9}

\renewcommand\lstlistlistingname{List of Code Snippets}

\lstset{frame=none,
  language=Python,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=left,
  numberstyle=\tiny\color{red},
  keywordstyle=\color{cyan},
  commentstyle=\color{green},
  stringstyle=\color{magenta},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
  backgroundcolor=\color{lightgray},
}


% TABS

\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\newcommand{\tab}[1]{\hspace{.2\textwidth}\rlap{#1}}


% MATHS BULLSHIT

\usepackage{amsmath}
\usepackage{tikz}
\usetikzlibrary{quotes,arrows,angles,decorations,
fit,shapes,backgrounds,positioning,shapes.symbols,chains,trees}
% pathmorphing
\usepackage{qtree}
\usepackage{mathtools}

% BORDER MATRIX SQUARE

\usepackage{etoolbox}
\let\bbordermatrix\bordermatrix
\patchcmd{\bbordermatrix}{8.75}{4.75}{}{}
\patchcmd{\bbordermatrix}{\left(}{\left[}{}{}
\patchcmd{\bbordermatrix}{\right)}{\right]}{}{}


% TABLES

\usepackage{booktabs}
\usepackage{tabu}
\newtabulinestyle{outer=1.2pt}
\tabulinesep = 2mm

% \usepackage{caption} % for subtables
% \usepackage{subcaption} % for subtables


% GLOSSARY & ACRONYMS

\usepackage[acronyms]{glossaries}
% \setacronymstyle{long-short}
\loadglsentries{front/abbreviations}


% JAPANESE

\usepackage{CJKutf8}


% REFLECT

% \DeclareRobustCommand{\textmirror}{\reflectbox}
% \newcommand{\copyleft}{\reflectbox}


% COMMENTS

% \usepackage{comment}


% Epigraphs

\usepackage{epigraph}

% \epigraph{blah blah blah}{\textit{John Do}}


% List of EQUATIONS

\usepackage{tocloft}

%%gmedina solution
\newcommand{\listequationsname}{List of Equations}
\newlistof{myequations}{equ}{\listequationsname}
\newcommand{\myequations}[1]{%
\addcontentsline{equ}{myequations}{\protect\numberline{\theequation}#1}\par}
\setlength{\cftmyequationsnumwidth}{2.3em}
\setlength{\cftmyequationsindent}{1.5em}
\setlength{\cftbeforechapskip}{1em}


% GRAY LINE

\newcommand{\grule}{\textcolor[RGB]{220,220,220}{\rule{\linewidth}{0.2pt}}}


% MULTICOLUMN

\usepackage{multicol}
% \setlength{\columnsep}{1cm}


% EMOTICONS

\usepackage{wasysym}
% \smiley{} \frownie{} \blacksmiley{}


% WORDCOUNT

% \newcommand\wordcount{
% \immediate\write18{texcount -inc -sum -0 -template={SUM} main.tex > count.txt}
% (\input{count.txt}words)}
