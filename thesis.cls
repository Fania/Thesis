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
\usepackage[T3,T1]{fontenc}
\usepackage[utf8]{inputenc}

\usepackage{textcomp}
% \usepackage[bitstream-charter]{mathdesign} % TEST
% \usepackage{lmodern} % load a font with all the characters

% \usepackage{tsipa}
\usepackage[noenc]{tipa} % IPA
\newcommand{\ipa}{\textipa}
% \newfontfamily\ipafamily{lmodern}[Scale=MatchLowercase]
% \DeclareRobustCommand\ipa[1]{{\ipafamily\textipa{#1}}}

\usepackage[main=UKenglish,french]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{csquotes}


% FONTS

% Default font (\familydefault = \rmdefault = Computer Modern Roman)
% \renewcommand*{\familydefault}{\sfdefault}
% \renewcommand*\rmdefault{ppl}

% \usepackage{qagr}
% \renewcommand*\rmdefault{pbk} % Bookman
% \renewcommand*\sfdefault{lmssq} % Latin Modern Sans Extended

\usepackage{bookman}

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


\usepackage{tgadventor}
\usepackage{lipsum}
\usepackage{xcolor,calc}
\definecolor{chaptercolor}{gray}{0.8}
% helper macros
% \raisebox{amount to shift up or down}[][]{}
% sets vertical position of chapter number
\newcommand\numlifter[1]{\raisebox{-6.5cm}[0pt][0pt]{\smash{#1}}}
\newcommand\numindent{\kern37pt}
\newlength\chaptertitleboxheight

% \shifttext{<len>}{<stuff>}
\makeatletter
\newcommand*{\shifttext}[2]{%
  \settowidth{\@tempdima}{#2}%
  \makebox[\@tempdima]{\hspace*{#1}#2}%
}
\makeatother

\makechapterstyle{fania}{%
\renewcommand\printchaptername{\scshape\sffamily}

\renewcommand\printchapternum{%
\begingroup%
\leavevmode\chapnumfont\strut%
% sets horizontal position of chapter number
% 10cm is about the middle, 20cm is right-ish
% 0cm is left
\shifttext{0cm}{\numlifter{\thechapter}}\numindent%
\endgroup}

\renewcommand*{\printchapternonum}{%
\vphantom{\begingroup%
\leavevmode\chapnumfont\numlifter{\vphantom{9}}\numindent%
\endgroup}
\afterchapternum}

\setlength\midchapskip{0pt}
\setlength\beforechapskip{5\baselineskip}
\setlength{\afterchapskip}{0.2\baselineskip} % 3\baselineskip

\renewcommand\chapnumfont{%
\fontsize{5cm}{0cm}\bfseries\sffamily\color{chaptercolor}}

\renewcommand\chaptitlefont{%
\normalfont\huge\bfseries\sffamily\scshape\fontsize{60}{50}\selectfont}
% \raggedleft%

\settototalheight\chaptertitleboxheight{%
\parbox{\textwidth}{\chaptitlefont \strut bg\\bg\strut}}

\renewcommand\printchaptertitle[1]{%
\parbox[t][\chaptertitleboxheight][t]{\textwidth}{%
%\microtypesetup{protrusion=false}% add this if you use microtype
\chaptitlefont\strut ##1\strut}}}

\chapterstyle{fania}


% Section Break Line
\newcommand*\spirals{%
  \begin{center}
    $\spiral\hspace{1cm}\spiral\hspace{1cm}\spiral$
  \end{center}}


% SPIRAL
\newcommand{\spiral}[1][]{\includegraphics[
  height=.7\baselineskip,
  origin=c,% For rotation purposes, rotate around centre
  % viewport=154mm 173mm 0mm 194mm,clip,
  #1% Any other graphicx options
  ]{spirals}%
}



% OVERVIEW

% \usepackage{shorttoc}


% QUOTES

% \usepackagee[autostyle,english=british,french=guillemets]{csquotes}
% \usepackage{dirtytalk}
\renewenvironment{quotation}
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
\setcounter{tocdepth}{1} % sections and above

% start section numbering at 0.
% \setcounter{section}{-1}

% MEMOIR Division Level
% \book -2
% \part -1
% \chapter 0
% \section 1
% \subsection 2
% \subsubsection 3
% \paragraph 4
% \subparagraph 5


% PART IMAGE
% \makeatletter
% % define a user command to choose the image
% % this command also creates an internal command to insert the image
% % \newcommand{\partimage}[2][]{\gdef\@partimage{\includegraphics[#1]{#2}}}
% \newcommand{\partimage}[2][]{\gdef\@partimage{\includepdf[#1]{#2}}}
% \renewcommand{\printparttitle}[1]{\parttitlefont #1\vfil\@partimage\vfil}
% \makeatother
% \partimage[width=\textwidth]{bar.png}

\makeatletter
% define a user command to choose the image
% this command also creates an internal command to insert the image
\newcommand{\partimage}[2][]{\gdef\@partimage{\includegraphics[#1]{#2}}}
% redefine the amsbook part code to include the \@partimage insertion command
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax \refstepcounter{part}%
    % \addcontentsline{toc}{part}{\partname\ \thepart.
        % \protect\enspace\protect\noindent#1}%
  \else
    % \addcontentsline{toc}{part}{#1}
  \fi
  \thispagestyle{empty}
  \vskip 50\p@
  \begingroup\centering
  \fontsize{2cm}{0}\bfseries
  \ifnum \c@secnumdepth >-2\relax
       {\fontsize{\@xviipt}{22}\bfseries
      %  \fontsize{5cm}{0cm}%
         \partname\ \thepart} \vskip 50\p@
  \fi
  % \fontsize{\@xxpt}{25}\bfseries
      #1\vfill\@partimage\vfil\endgroup \newpage\thispagestyle{empty}}
\makeatother



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
  \vspace{1cm}
  \printcontents[chapters]{p}{1}{\settocdepth{subsection}}
  \vspace{1cm}
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
\reversemarginpar
%Number the todo item according to section numbering
% \newcommand{\ntodo}[2][]{\todo[#1]{\thesubsubsection{}. #2}}
\presetkeys{todonotes}{backgroundcolor=blue!20!white, linecolor=black, inline}{}

\usepackage{marginnote}

% \todoin{}
% \newcommand\todoin[2][]{\todo[inline, caption={2do}, #1]{
% \begin{minipage}{\textwidth-4pt}#2\end{minipage}}}
% \todo[done]{Stuff}


% MARGINS

\usepackage[a4paper, % twoside=false,
            left=4cm, right=2cm,
            top=2cm, bottom=4cm, % ,showframe, showcrop
            marginparwidth=3.5cm, marginparsep=3mm
            ]
            {geometry}
% bindingoffset=6mm

% \usepackage[top=2cm, bottom=1.3cm, left=5cm, right=0.5cm,
% heightrounded,
%   marginparwidth=4.6cm, marginparsep=3mm]{geometry}

% BIBLIOGRAPHY

\usepackage[style=authoryear,
              bibencoding=ascii,
              backref=true,
              isbn=false,
              url=false,
              hyperref=true,
              doi=false,
              backend=biber]{biblatex}
\addbibresource{back/bib.bib}
\setcounter{highnamepenalty}{0}
\setcounter{lownamepenalty}{0}

\AtBeginDocument{%
  \renewcommand{\bibname}{References}
}

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


\addto\captionsUKenglish{%
  \renewcommand{\listfigurename}%
    {Figures}%
}
\addto\captionsUKenglish{%
  \renewcommand{\listtablename}%
    {Tables}%
}


% HEADER & FOOTER
% \pagestyle{plain}
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
\renewcommand{\listoflistingscaption}{Source Code}

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


% PDF
\usepackage{pdfpages}



% TABS

\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\newcommand{\tab}[1]{\hspace{.2\textwidth}\rlap{#1}}
\newcommand{\stab}[1]{\hspace{.3\linewidth}\rlap{#1}}



% MATHS BULLSHIT

\usepackage{amsmath}
\usepackage{tikz}
\usetikzlibrary{quotes,arrows,angles,decorations,
fit,shapes,backgrounds,positioning,shapes.symbols,chains,trees}
% pathmorphing
\usepackage{qtree}
\usepackage{mathtools}

\usetikzlibrary{calc,shapes.callouts,shapes.arrows}

% \newcommand{\speechthis}[2]{
%   \tikz[remember picture,baseline]{\node[anchor=base,inner sep=0,outer sep=0]%
%   (#1) {\underline{#1}};\node[overlay,ellipse callout,fill=blue!50]
%   at ($(#1.north)+(-.5cm,0.8cm)$) {#2};}%
% }
\newcommand{\pointthis}[2]{
  \tikz[remember picture,baseline]{\node[anchor=base,inner sep=0,outer sep=0]%
  (#1) {\underline{#1}};\node[overlay,rectangle callout,%
  callout relative pointer={(0.2cm,0.7cm)},fill=green!50] at ($(#1.north)+(-.5cm,-1.4cm)$) {#2};}%
}


\usetikzlibrary{decorations.text}
\makeatletter
\let\pgf@lib@dec@text@dobox@original=\pgf@lib@dec@text@dobox%
\def\pgf@lib@dec@text@dobox{%
    \pgf@lib@dec@text@dobox@original%
    \ifpgfdecorationtextalongpathscaletext%
    \pgfmathparse{\pgf@lib@dec@text@endscale+(\pgf@lib@dec@text@startscale-\pgf@lib@dec@text@endscale)*\pgfdecoratedremainingdistance/\pgfdecoratedpathlength}%
    \setbox\pgf@lib@dec@text@box=\hbox{\scalebox{\pgfmathresult}{\box\pgf@lib@dec@text@box}}%
    \fi%
}
\newif\ifpgfdecorationtextalongpathscaletext
\def\pgf@lib@dec@text@startscale{1}
\def\pgf@lib@dec@text@endscale{1}
\pgfkeys{/pgf/decoration/.cd,
    text path start scale/.code={%
        \pgfdecorationtextalongpathscaletexttrue%
        \def\pgf@lib@dec@text@startscale{#1}%
    },
    text path end scale/.code={%
        \pgfdecorationtextalongpathscaletexttrue%
        \def\pgf@lib@dec@text@endscale{#1}%
    }
}


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
\usepackage{marvosym,bclogo,fontawesome}



% WORDCOUNT

% \newcommand\wordcount{
% \immediate\write18{texcount -inc -sum -0 -template={SUM} main.tex > count.txt}
% (\input{count.txt}words)}
% Run texcount on tex-file and write results to a sum-file
\immediate\write18{texcount -inc -sum -1 -q -out=main.sum main.tex}
% Define macro \wordcount for including the counts
% \usepackage{verbatim}
\newcommand\wordcount{\input{main.sum}}

% \newcommand\wordcount{%
% \inputminted[]{c}{main.sum}
% }





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
