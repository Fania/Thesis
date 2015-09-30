% !TEX root = ../main.tex

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2015/09/02 DMU Thesis]
\def\baseclass{memoir}

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
\LoadClass[a4paper,oneside]{\baseclass}

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

% \usepackage[T3,OT2,T1]{fontenc}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

\usepackage{textcomp}
% \usepackage[bitstream-charter]{mathdesign} % TEST
% \usepackage{lmodern} % load a font with all the characters

\usepackage[noenc]{tipa} % IPA


\usepackage[main=UKenglish,french]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{csquotes}


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
                \item\relax\sffamily\SingleSpacing\ignorespaces}
               {\unskip\unskip\endlist}


% MULTICOLUMN

\usepackage{multicol, ragged2e}


% VERBATIM

\usepackage{alltt}
\usepackage{listings}
\lstset{
basicstyle=\small\ttfamily,
columns=flexible,
breaklines=true
}



% SPACING

\OnehalfSpacing \OnehalfSpacing*

\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}

\setlength{\intextsep}{20pt} % Vertical space above & below [h] floats
\setlength{\textfloatsep}{20pt} % Vertical space below (above) [t] ([b]) floats
\setlength{\abovecaptionskip}{10pt}
\setlength{\belowcaptionskip}{5pt}


% TABLE OF CONTENTS

\setlength{\cftpartnumwidth}{1.8em}
\setlength{\cftchapternumwidth}{1.8em}
\setlength{\cftsectionnumwidth}{2.8em}
\setlength{\cftfigurenumwidth}{2.8em}
\setlength{\cfttablenumwidth}{2.8em}

\setsecnumdepth{subsection}
% \settocdepth{section}



% MEMOIR Division Level
% \book -2
% \part -1
% \chapter 0
% \section 1
% \subsection 2
% \subsubsection 3
% \paragraph 4
% \subparagraph 5



% MINITOC

\usepackage{titletoc}

\makeatletter

\addtocontents{toc}{\protect\setlength{\parskip}{0pt}}

\titlecontents{psection}[2.3em]
{} {\contentslabel{2.6em}} {} {\titlerule*[1pc]{.}\contentspage}
\titlecontents{psubsection}[5.5em]
{} {\contentslabel{3.5em}} {} {\titlerule*[1pc]{.}\contentspage}

\newcommand\minicontents{%
  % \brule
  \printcontents[chapters]{p}{1}{\settocdepth{subsection}}
  % \brule
  }
\makeatother



% LIST SPACING

\usepackage{enumitem}
% or \setlist{noitemsep} to leave space around whole list
% \setlist{nosep}
\setlist{noitemsep}
\setlist[description]{style=nextline}


% TODONOTES

\usepackage[colorinlistoftodos]{todonotes}
%Place notes in left margin where there is more space
% \reversemarginpar
%Number the todo item according to section numbering
% \newcommand{\ntodo}[2][]{\todo[#1]{\thesubsubsection{}. #2}}
\presetkeys{todonotes}{backgroundcolor=blue!20!white, linecolor=black, inline}{}

% \todoin{}
% \newcommand\todoin[2][]{\todo[inline, caption={2do}, #1]{
% \begin{minipage}{\textwidth-4pt}#2\end{minipage}}}
% \todo[done]{Stuff}


% MARGINS

\usepackage[a4paper, % twoside=false,
            left=4cm, right=2cm,
            top=2cm, bottom=4cm % ,showframe, showcrop
            ]
            {geometry}
% bindingoffset=6mm


% BIBLIOGRAPHY

\usepackage[style=authoryear,
              bibencoding=ascii,
              backref=true,
              isbn=false,
              url=false,
              hyperref=true,
              doi=false,
              backend=biber]{biblatex}
\addbibresource{back/new.bib}
\setcounter{highnamepenalty}{0}
\setcounter{lownamepenalty}{0}

\DeclareCiteCommand{\cite}
  {\usebibmacro{prenote}}
  {\usebibmacro{citeindex}%
   \printtext[bibhyperref]{\usebibmacro{cite}}}
  {\multicitedelim}
  {\usebibmacro{postnote}}

\DeclareCiteCommand*{\cite}
  {\usebibmacro{prenote}}
  {\usebibmacro{citeindex}%
   \printtext[bibhyperref]{\usebibmacro{citeyear}}}
  {\multicitedelim}
  {\usebibmacro{postnote}}

\DeclareCiteCommand{\parencite}[\mkbibparens]
  {\usebibmacro{prenote}}
  {\usebibmacro{citeindex}%
    \printtext[bibhyperref]{\usebibmacro{cite}}}
  {\multicitedelim}
  {\usebibmacro{postnote}}

\DeclareCiteCommand*{\parencite}[\mkbibparens]
  {\usebibmacro{prenote}}
  {\usebibmacro{citeindex}%
    \printtext[bibhyperref]{\usebibmacro{citeyear}}}
  {\multicitedelim}
  {\usebibmacro{postnote}}

\DeclareCiteCommand{\citeyear}[\mkbibparens]
  {\usebibmacro{prenote}}
  {\usebibmacro{citeindex}%
    \printtext[bibhyperref]{\usebibmacro{citeyear}}}
  {\multicitedelim}
  {\usebibmacro{postnote}}

\DeclareCiteCommand{\citeauthor}[\mkbibparens]
  {\usebibmacro{prenote}}
  {\usebibmacro{citeindex}%
    \printtext[bibhyperref]{\usebibmacro{citeauthor}}}
  {\multicitedelim}
  {\usebibmacro{postnote}}

% \textcite for "Author (Year)"
% \citeauthor "Author"
% \citeyear "Year"
% \parencite "(Author Year)"

% \usepackage[sort&compress]{natbib}
% \bibliographystyle{unsrtnat}
% \setcitestyle{aysep={}}

% \usepackage{textcomp}


% IMAGES

\usepackage{graphicx}
\graphicspath{ {images/} }

% \renewcommand{\listfigurename}{List of Images}
% \renewcommand{\listtablename}{Tables}

% HEADER & FOOTER

% \usepackage{fancyhdr}
% \pagestyle{fancy}
% % \pagestyle{empty}
% % Right Odd Left Even Center
% % \renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
% % \renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ #1}{}}
% \lhead{\nouppercase{\leftmark}}
% \rhead{\nouppercase{\rightmark}}
% % \fancyhead{}
% % \fancyhead[L]{\chaptermark}
% % \fancyhead[R]{\sectionmark}
% \fancyfoot{}
% \fancyfoot[R]{\thepage}
% \renewcommand{\headrulewidth}{0.1pt}
% % \renewcommand{\footrulewidth}{0.1pt}
%
% \setlength{\headheight}{13.6pt}


% COLOUR STUFF

% \usepackage[cmyk]{xcolor}
\usepackage{xcolor}
\newenvironment{fcom}{\par\color{cyan}}{\par}
\newenvironment{draft}{\par\color{magenta}}{\par}

\usepackage{framed}
\colorlet{shadecolor}{yellow!20}

\definecolor{ghostwhite}{rgb}{0.97, 0.97, 1.0}
\definecolor{pearl}{rgb}{0.94, 0.92, 0.84}
\definecolor{mintcream}{rgb}{0.96, 1.0, 0.98}
\definecolor{magnolia}{rgb}{0.97, 0.96, 1.0}
\definecolor{arsenic}{rgb}{0.23, 0.27, 0.29}
\definecolor{gainsboro}{rgb}{0.86, 0.86, 0.86}
\definecolor{lavendermist}{rgb}{0.9, 0.9, 0.98}


% CODE

\usepackage[chapter]{minted}
\usemintedstyle{emacs}
% css, c, json, hs, lhs, js, py3, py, css+jinja, html+jinja, js+jinja

\renewcommand{\listingscaption}{Source}
\renewcommand{\listoflistingscaption}{List of Source Code}

\setminted[python]{
  linenos,
  bgcolor=lavendermist,
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines,
  % xleftmargin=1cm,
  % numbersep=24pt,
  xrightmargin=1cm,
}

\setminted[html+jinja]{
  linenos,
  bgcolor=lavendermist,
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines,
  % xleftmargin=1cm,
  % numbersep=24pt,
  xrightmargin=1cm,
}
\setminted[javascript]{
  linenos,
  bgcolor=lavendermist,
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines,
  % xleftmargin=1cm,
  % numbersep=24pt,
  xrightmargin=1cm,
}

\setminted[c]{ % PSEUDOCODE
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines,
  xleftmargin=1cm,
  xrightmargin=1cm,
}

\newmintinline[py]{python}{
  bgcolor={lavendermist},
  fontsize=\footnotesize,
  mathescape=true,
}
% \newmintinline['macro name']{'language'}{'options'}
% If a 'macro name' is not specified,
% then the created macro is called \'language'inline

\setmintedinline[python]{
  bgcolor={},
  fontsize=\footnotesize,
  mathescape=true,
}

% no red boxes on parser error:
\makeatletter
\expandafter\def\csname PYGdefault@tok@err\endcsname{\def\PYGdefault@bc##1{{\strut ##1}}}
\makeatother



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

% TOC VERTICAL SPACE FIX
% \makeatletter
% \patchcmd{\l@section}{%
% %   \addvspace{1.0em \@plus\p@}% original code line
% % }{%
%   \addvspace{0.3em \@plus 0.3\p@}% substitute code line
% }{}{}
% \makeatother


% TABLES

\usepackage{booktabs}
\usepackage{tabu}
\newtabulinestyle{outer=1.2pt}
\tabulinesep = 2mm

% \usepackage{caption} % for subtables
% \usepackage{subcaption} % for subtables


% SILENCE WARNINGS
\usepackage{silence}
\WarningFilter{glossaries}{Overriding \printglossary}
\WarningFilter{glossaries}{overriding `theglossary'}



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

% \usepackage{tocloft}

%%gmedina solution
% \newcommand{\listequationsname}{List of Equations}
% \newlistof{myequations}{equ}{\listequationsname}
% \newcommand{\myequations}[1]{%
% \addcontentsline{equ}{myequations}{\protect\numberline{\theequation}#1}\par}
% \setlength{\cftmyequationsnumwidth}{2.3em}
% \setlength{\cftmyequationsindent}{1.5em}
% \setlength{\cftbeforechapskip}{1em}

% \setlength{\cftchapternumwidth}{2em}
% \setlength{\cftXindent}{1em}
% \setlength{\cftXnumwidth}{1em}



% GRAY LINE

% \newcommand{\grule}{\color{pearl}{\rule{\linewidth}{0.2pt}}\color{black}}
\newcommand{\grule}{\textcolor{red}{\rule{\linewidth}{0.3pt}}}
\newcommand{\brule}{{\rule{\linewidth}{0.3pt}}}


% EMOTICONS

\usepackage{wasysym}
% \smiley{} \frownie{} \blacksmiley{}


% WORDCOUNT

% \newcommand\wordcount{
% \immediate\write18{texcount -inc -sum -0 -template={SUM} main.tex > count.txt}
% (\input{count.txt}words)}

% FRAMED MINIPAGE
\newsavebox{\fmbox}
\newenvironment{fmpage}[1]
{\begin{lrbox}{\fmbox}\begin{minipage}{#1}}
{\end{minipage}\end{lrbox}\fbox{\usebox{\fmbox}}}


% LANDSCAPE mode
\usepackage{pdflscape}


% LINKS

% WANTS TO BE RIGHT AT THE BOTTOM
\usepackage[pdfencoding=auto,
            colorlinks=true,
            citecolor=green,
            linkcolor=blue,
            pdftex,
            pdfauthor={Fania Raczinski},
            pdftitle={PhD Thesis},
            pdfsubject={Web Collider},
            pdfkeywords={Pataphysics, Creative Computing, Interdisciplinary Research}]{hyperref}


% GLOSSARY & ACRONYMS
% WANTS TO BE AFTER HYPERREF

\let\printglossary\relax
\let\theglossary\relax
\let\endtheglossary\relax

% \makeglossary
\usepackage[acronyms]{glossaries}
% \setacronymstyle{long-short}
\loadglsentries{front/abbreviations}

\makenoidxglossaries
