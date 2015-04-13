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
\LoadClass[a4paper]{\baseclass}

% ---------------

\usepackage{import}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
% \usepackage{lmodern} % load a font with all the characters

\usepackage[main=UKenglish,french]{babel}
\usepackage[UKenglish]{isodate}

\usepackage[pdfencoding=auto,colorlinks=true,linkcolor=blue]{hyperref}

% SPACING

% environments: singlespace, onehalfspace, doublespace, spacing
\usepackage{setspace}
% \singlespacing
\onehalfspacing
% \doublespacing
% \setstretch{1.1}

\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}


% LIST SPACING

\usepackage{enumitem}
% or \setlist{noitemsep} to leave space around whole list
% \setlist{nosep}
\setlist{noitemsep}


% TODONOTES

\usepackage{todonotes}
%Place notes in left margin where there is more space
\reversemarginpar
%Number the todo item according to section numbering
\newcommand{\ntodo}[2][]{\todo[#1]{\thesubsubsection{}. #2}}


% MARGINS

\usepackage[a4paper,
            left=4cm,
            right=2cm,
            top=2cm,
            bottom=4cm]
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



% COLOUR STUFF

\usepackage{xcolor}
\newenvironment{comment}{\par\color{blue}}{\par}
\newenvironment{draft}{\par\color{red}}{\par}

\usepackage{framed}
\colorlet{shadecolor}{yellow!20}


% CODE

\usepackage{listings}
\usepackage{color}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{creme}{rgb}{1,1,0.9}

\lstset{frame=none,
  language=Python,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=left,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
  backgroundcolor=\color{creme},
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


% BORDER MATRIX SQUARE

\usepackage{etoolbox}
\let\bbordermatrix\bordermatrix
\patchcmd{\bbordermatrix}{8.75}{4.75}{}{}
\patchcmd{\bbordermatrix}{\left(}{\left[}{}{}
\patchcmd{\bbordermatrix}{\right)}{\right]}{}{}


% TABLES

\usepackage{tabu}


% GLOSSARY & ACRONYMS

\usepackage[acronyms]{glossaries}
% \setacronymstyle{long-short}
\loadglsentries{front/abbreviations}


% JAPANESE

\usepackage{CJKutf8}


% REFLECT

% \DeclareRobustCommand{\textmirror}{\reflectbox}
% \newcommand{\copyleft}{\reflectbox}
