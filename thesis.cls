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
\LoadClass[a4paper,twoside]{\baseclass}
% \LoadClass[a4paper,oneside]{\baseclass}

\hfuzz=7pt
\vfuzz=7pt

% \AtBeginDocument{%
%   \addtocontents{toc}{\protect\label{ch:contents}}%
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \includeonly{%
%   main/interpretation,%
%   main/evaluation%
% }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ---------------

% \usepackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10]{microtype}
% \microtypecontext{spacing=nonfrench}
% activate={true,nocompatibility} - activate protrusion and expansion
% final - enable microtype; use "draft" to disable
% tracking=true, kerning=true, spacing=true - activate these techniques
% factor=1100 - add 10% to the protrusion amount (default is 1000)
% stretch=10, shrink=10 - reduce stretchability/shrinkability (default is 20/20)

% \overfullrule=2cm

\usepackage[maxfloats=500]{morefloats}
\usepackage{marginfix}
\reversemarginpar
% \usepackage{mparhack} % to fix sidepar on wrong side near top of pages
% \usepackage{import}

% \usepackage[T3,OT2,T1]{fontenc}
% \usepackage{fontspec} % for XeTeX
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
\usepackage[english=british]{csquotes}


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


% FONTS
\setsecheadstyle{\Large\bfseries\sffamily\scshape}
\setsubsecheadstyle{\large\bfseries\sffamily\scshape}
\setsubsubsecheadstyle{\bfseries\sffamily\scshape\underline}



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

\copypagestyle{chapter}{fania}
% \copypagestyle{toc}{fania}
\aliaspagestyle{cleared}{fania}
% \createplainmark{toc}{both}{\contentsname}



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


\newcommand*\spirals{%
  \begin{center}
    $\textspiral\hspace{1cm}\textspiral\hspace{1cm}\textspiral$
  \end{center}}



% Section Break Line
% \newcommand*\spirals{%
%   \begin{center}
%     $\spiralimg\hspace{1cm}\spiralimg\hspace{1cm}\spiralimg$
%   \end{center}}
% SPIRAL
% \newcommand{\spiralimg}[1][]{\includegraphics[
%   height=.7\baselineskip,
%   origin=c,% For rotation purposes, rotate around centre
%   % viewport=154mm 173mm 0mm 194mm,clip,
%   #1% Any other graphicx options
%   ]{spirals}%
% }


% POETRY
\renewcommand{\PoemTitlefont}{%
    \normalfont\itshape\centering}

\newcommand{\attrib}[1]{% 
    \nopagebreak{\raggedleft\footnotesize #1\par}}




% OVERVIEW

% \usepackage{shorttoc}


% QUOTES

% \usepackage[autostyle,english=british,french=guillemets]{csquotes}
% \usepackage{dirtytalk}
% \renewenvironment{quotation}
%                {\list{}{\rightmargin\leftmargin}%
%                 \item\relax\sffamily\SingleSpacing\color{gray}\ignorespaces}
%                {\unskip\unskip\endlist}


\renewenvironment{quotation}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax\sffamily\small\SingleSpacing\ignorespaces}
               {\unskip\unskip\endlist}

% \newcommand*{\attr}[2][2em]{{%
%   \unskip\nobreak\hfil\penalty50
%   \hskip#1\hbox{}\nobreak\hfil\tiny{#2}
%   \parfillskip\z@\finalhyphendemerits=0\par}}

\makeatletter
\renewcommand*{\sourceatright}[2][2em]{{%
  \unskip\nobreak\hfil\penalty50
  \hskip#1\hbox{}\nobreak\hfil{\tiny\sffamily#2}%
  \parfillskip\z@\finalhyphendemerits=\z@\par}}
\makeatother


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

\cftpagenumbersoff{part}


\setsecnumdepth{subsection}
\maxtocdepth{section}

% \renewcommand{\cftsubsecfont}{\itshape}


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
  % \addtocontents{toc}{\protect\vspace*{20\p@}}% <------------ added
  \vskip 50\p@
  \begingroup\centering
  \fontsize{2cm}{0}\bfseries
  % \newgeometry{a4paper,top=0cm,bottom=0cm,right=0cm,left=0cm,marginparwidth=0cm,marginparsep=0mm}
  \ifnum \c@secnumdepth >-2\relax
       {\fontsize{\@xviipt}{22}\bfseries
      %  \fontsize{5cm}{0cm}%
         \partname\ \thepart} \vskip 10\p@
  \fi
  % \fontsize{\@xxpt}{25}\bfseries
      #1\vfill\@partimage\vfil\endgroup \newpage\thispagestyle{empty}}
\makeatother

% Line after PART in TOC
\renewcommand{\cftpartafterpnum}{\par\vspace{-1.5ex}\hskip -\memRTLleftskip\hrulefill}

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
  % \vspace{1cm}
  % \begin{shaded}
  \printcontents[chapters]{p}{1}{\maxtocdepth{subsection}}
  % \end{shaded}
  % \addvspace{\baselineskip}
  % \vspace{-3cm}
  % \vspace{1cm}
  % \brule
  }
\makeatother



% HEADINGS
% \usepackage{ulem}
% \newcommand\underlinedhead[1]{\noindent\uline{#1}}
% \setsubsubsecheadstyle{\underlinedhead}

% EMPHASIS
% bold and italic
\let\emph\relax % there's no \RedeclareTextFontCommand
\DeclareTextFontCommand{\emph}{\bfseries\em}



% LIST SPACING

\usepackage{enumitem}
% or \setlist{noitemsep} to leave space around whole list
% \setlist{nosep}
\setlist{noitemsep}
\setlist[description]{style=nextline}



% TODONOTES

\usepackage[colorinlistoftodos]{todonotes}
%Number the todo item according to section numbering
% \newcommand{\ntodo}[2][]{\todo[#1]{\thesubsubsection{}. #2}}
\presetkeys{todonotes}{backgroundcolor=blue!20!white, linecolor=black, inline}{}


% \usepackage{marginnote}

% \todoin{}
% \newcommand\todoin[2][]{\todo[inline, caption={2do}, #1]{
% \begin{minipage}{\textwidth-4pt}#2\end{minipage}}}
% \todo[done]{Stuff}


% MARGINS

\usepackage[a4paper,
            left=4cm, right=2cm,
            top=2cm, bottom=4cm, % showframe, showcrop,
            marginparwidth=1.5cm, marginparsep=3mm
            ]
            {geometry}
% bindingoffset=6mm


% BIBLIOGRAPHY

% \usepackage{refcheck}
\usepackage[style=authoryear,
            citestyle=authoryear-comp,
            mergedate=minimum,
            bibencoding=utf8,
            backref=true,
            isbn=false,
            url=false,
            hyperref=true,
            doi=false,
            % autocite=inline,
            sorting=nyt, % name, year, title
            backend=biber]{biblatex}
\addbibresource{back/refs.bib}
\setcounter{highnamepenalty}{0}
\setcounter{lownamepenalty}{0}
\setcounter{biburlnumpenalty}{9000}
\setcounter{biburllcpenalty}{7000}
\setcounter{biburlucpenalty}{8000}

\AtBeginDocument{%
  \renewcommand{\bibname}{References}
}

% to make hyperref for full (author year) block rather than just year
\makeatletter
%Works without the last bracket ;-)
\let\abx@macro@citeOrig\abx@macro@cite
\renewbibmacro{cite}{%
   \bibhyperref{%
   \let\bibhyperref\relax\relax%
   \abx@macro@citeOrig%
   }%
}
\let\abx@macro@textciteOrig\abx@macro@textcite
\renewbibmacro{textcite}{%
   \bibhyperref{%
   \let\bibhyperref\relax\relax%
   \abx@macro@textciteOrig%
   }%
}%
\makeatother

% \autocite[prenote][postnote]{key} = (Author 2000)
% \autocite*[prenote][postnote]{key} = (2000)



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

\makepagestyle{fania} 
% \makeevenhead{fania}{}{}{}
% \makeoddhead{fania}{\slshape\rightmark}{}{\slshape\leftmark}
\makeevenfoot{fania}{\thepage}{}{} % Left
\makeoddfoot{fania}{}{}{\thepage} % Right
\makeevenhead{fania}{}{}{}
\makeoddhead{fania}{}{}{}
% \makeoddhead{fania}{\leftmark}{}{\rightmark}
% \makerunningwidth{fania}{1.1\textwidth}
% \makeheadrule{fania}{1.1\textwidth}{\normalrulethickness}
% \makefootrule{fania}{1.1\textwidth}{\normalrulethickness}
% \pagestyle{fania}


% % LINK TO TOC
% \usepackage{eso-pic}
% \newcommand\AtPageBottomCentre[1]{%
%  \put(\LenToUnit{.5\paperwidth},\LenToUnit{\textheight}){#1}%
% }
% \AddToShipoutPictureBG{%
%    \AtPageBottomCentre{\put(0,-620){\hyperlink{ch:contents}{Go to TOC}}}
% }



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
\definecolor{gray}{rgb}{0.5, 0.5, 0.5}


\definecolor{intro}{rgb}{0.33,0.78,0.91}
\definecolor{inspi}{rgb}{0.67,0.53,0.87}
\definecolor{metho}{rgb}{0,0.34,0.83}
\definecolor{pata}{rgb}{1,0.5,0.90}
\definecolor{creat}{rgb}{1,0.8,0}
\definecolor{tech}{rgb}{1,0.4,0}
\definecolor{eval}{rgb}{0.13,0.4,0.47}
\definecolor{found}{rgb}{0.67,0,0.53}
\definecolor{inter}{rgb}{0.4,0,1}
\definecolor{imple}{rgb}{0,0.5,0.4}
\definecolor{appli}{rgb}{0.16,0.16,0.47}
\definecolor{anal}{rgb}{1,0,0.33}
\definecolor{aspi}{rgb}{0.53,0.67,0}
\definecolor{outro}{rgb}{0,0.5,0.7}
\definecolor{appA}{rgb}{0.67,0.67,1}
\definecolor{appB}{rgb}{0.53,0.8,0.87}
\definecolor{appC}{rgb}{0.5,0.7,1}
\definecolor{appD}{rgb}{0.69,0.78,0.91}
\definecolor{appE}{rgb}{0.53,0.87,0.8}
\definecolor{water}{rgb}{0.74,0.83,0.9}
\definecolor{topic}{rgb}{0.93,0.93,0.93}


% LEGEND FOR MAPS

\newcommand{\intro}{%
  \begin{tikzpicture}[]
  \fill[intro] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\inspi}{%
  \begin{tikzpicture}[]
  \fill[inspi] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\metho}{%
  \begin{tikzpicture}[]
  \fill[metho] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\pata}{%
  \begin{tikzpicture}[]
  \fill[pata] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\creat}{%
  \begin{tikzpicture}[]
  \fill[creat] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\tech}{%
  \begin{tikzpicture}[]
  \fill[tech] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\eval}{%
  \begin{tikzpicture}[]
  \fill[eval] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\found}{%
  \begin{tikzpicture}[]
  \fill[found] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\inter}{%
  \begin{tikzpicture}[]
  \fill[inter] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\imple}{%
  \begin{tikzpicture}[]
  \fill[imple] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\appli}{%
  \begin{tikzpicture}[]
  \fill[appli] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\anal}{%
  \begin{tikzpicture}[]
  \fill[anal] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\aspi}{%
  \begin{tikzpicture}[]
  \fill[aspi] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\outro}{%
  \begin{tikzpicture}[]
  \fill[outro] (0,0) circle (5pt);
  \end{tikzpicture}%
}
\newcommand{\appa}{%
  \begin{tikzpicture}[scale=0.3]
  \fill[appA] (0,0) rectangle (1,1);
  \end{tikzpicture}%
}
\newcommand{\appb}{%
  \begin{tikzpicture}[scale=0.3]
  \fill[appB] (0,0) rectangle (1,1);
  \end{tikzpicture}%
}
\newcommand{\appc}{%
  \begin{tikzpicture}[scale=0.3]
  \fill[appC] (0,0) rectangle (1,1);
  \end{tikzpicture}%
}
\newcommand{\appd}{%
  \begin{tikzpicture}[scale=0.3]
  \fill[appD] (0,0) rectangle (1,1);
  \end{tikzpicture}%
}
\newcommand{\appe}{%
  \begin{tikzpicture}[scale=0.3]
  \fill[appE] (0,0) rectangle (1,1);
  \end{tikzpicture}%
}


% CODE

\usepackage[chapter,newfloat]{minted}
\usemintedstyle{monokailight}
% paraiso-light, manni, monokai
% css, c, json, hs, lhs, js, py3, py, css+jinja, html+jinja, js+jinja

\SetupFloatingEnvironment{listing}{
  chapterlistsgaps=on,
  listname={Code},
  name=Code
}
\cftsetindents{section}{1em}{3.8em}
\cftsetindents{subsection}{3.5em}{4.5em}
\setlength\cftfigurenumwidth{1.5cm}
\setlength\cfttablenumwidth{1.5cm}

\setminted[python]{
  linenos,
  bgcolor=lavendermist,
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines=true,
  % breakbytokenanywhere=true,
  breakbefore={/,?,_},
  % xleftmargin=1cm,
  % numbersep=24pt,
  xrightmargin=1cm,
}

\setminted[yaml]{
  linenos,
  bgcolor=lavendermist,
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines=true,
  % breakbytokenanywhere=true,
  breakbefore={/,?,_},
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
  breaklines=true,
  % breakbytokenanywhere=true,
  breakbefore={/,?,_},
  % xleftmargin=1cm,
  % numbersep=24pt,
  xrightmargin=1cm,
}
\setminted[javascript]{
  linenos,
  bgcolor=lavendermist,
  fontsize=\footnotesize,
  mathescape=false,
  % escapeinside={\%}{)},
  framesep=2mm,
  breaklines=true,
  breakbefore={/,?,_},
  % xleftmargin=1cm,
  % numbersep=24pt,
  xrightmargin=1cm,
}

\newdimen\temporarydimen \settowidth{\temporarydimen}{\ttfamily aaaaaaaa}
\setminted[text]{ % PSEUDOCODE
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines=true,
  breakbytokenanywhere=true,
  breakbefore={/,?,_},
  breaksymbolindentleft={\temporarydimen},
  % xleftmargin=1cm,
  % xrightmargin=1cm,
}
\setminted[haskell]{ % GIT
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines=true,
  % breakbytokenanywhere=true,
  breakbefore={/,?,_},
  breaksymbolindentleft={\temporarydimen},
  xleftmargin=0cm,
  xrightmargin=0cm,
}

\setminted[json]{
  fontsize=\footnotesize,
  mathescape=true,
  framesep=2mm,
  breaklines=true,
  % breakbytokenanywhere=true,
  breakbefore={/,?,_},
  breaksymbolindentleft={\temporarydimen},
  xleftmargin=0cm,
  xrightmargin=0cm,
}

\newmintinline[py]{c}{
  bgcolor={lavendermist},
  fontsize=\footnotesize,
  mathescape=true,
  stripall,
  xleftmargin=0mm,
  framesep=0mm,
  startinline=true,
  framesep=0mm,
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

% line breaks
% \makeatletter
% \let\oldPYGdefault\PYGdefault
% \def\PYGdefault#1#2{\hbox{\oldPYGdefault{#1}{#2}}\allowbreak{}}
% \makeatother


% PDF
\usepackage{pdfpages}



% TABS

\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\newcommand{\tab}[1]{\hspace{.2\textwidth}\rlap{#1}}
\newcommand{\stab}[1]{\hspace{.3\linewidth}\rlap{#1}}



% MATHS BULLSHIT

\usepackage{sistyle}
\SIthousandsep{,}

\usepackage{amsmath}
\usepackage{bm}
\usepackage{tikz}
\usetikzlibrary{quotes,arrows,angles,decorations,mindmap,fit,shapes,backgrounds,positioning,shapes.symbols,chains,trees,calc,shapes.callouts,shapes.arrows,decorations.markings,arrows.meta}
\usepackage[edges]{forest}
% \usepackage{forest}
% \ProvidesForestLibrary{edges}[2015/11/14 v0.1]
% \useforestlibrary{edges}
% pathmorphing
\usepackage{qtree}
\usepackage{mathtools}
\usepackage{tikz-3dplot} 
% \usepackage{pgfplots}

% TIKZ SPIRAL
% USAGE:
% start radius = <num>, (default is 0)
% end radius = <num>, (default is 1)
% start angle = <degrees>, (default is 0)
% end angle = <degrees>, (default is 0)
% name = <text>, (defaul is nameless) % This is useful to have coordinates at start and end of spiral
% revolutions = <num>, (default is 2)
% center = {<coordinate>}, (default is (0,0)) % Equivalent to shift={<coordinate>}
% sample rate = <degrees>, (default is 5) % Means: plot one point each <degrees>
% clockwise (default is false) % This is used as boolean, when present spiral is clockwise
\makeatletter
\newif\ifspiral@is@clockwise
  \pgfkeys{
    spiral/.is family,
    spiral,
    start angle/.initial=0,
    end angle/.initial=0,
    start radius/.initial=0,
    end radius/.initial=1,
    revolutions/.initial=2,
    name/.initial=,
    center/.initial={(0,0)},
    sample rate/.initial =5,
    clockwise spiral/.is if=spiral@is@clockwise,
    clockwise spiral/.default=false,
    clockwise/.style={clockwise spiral=true},
    default spiral/.style={start angle=0,end angle=0, start radius=0, end radius=1, revolutions=2, name=, center={(0,0)}, sample rate=5, clockwise spiral=false}
  }
  \newcommand\spiral[2][]{
    \pgfkeys{spiral, default spiral,#2,
      start angle/.get=\spiral@start@angle,
      end angle/.get=\spiral@end@angle,
      start radius/.get=\spiral@start@radius,
      end radius/.get=\spiral@end@radius,
      revolutions/.get=\spiral@revolutions,
      name/.get=\spiral@name,
      sample rate/.get=\spiral@sample@rate,
      center/.get=\spiral@center
      }
  \def\spiral@start@name{}
  \def\spiral@end@name{}
  \ifspiral@is@clockwise
        \renewcommand*{\spiral@start@angle}{\pgfkeysvalueof{/spiral/end angle}}
        \renewcommand*{\spiral@end@angle}{\pgfkeysvalueof{/spiral/start angle}}
        \renewcommand*{\spiral@start@radius}{\pgfkeysvalueof{/spiral/end radius}}
        \renewcommand*{\spiral@end@radius}{\pgfkeysvalueof{/spiral/start radius}}
        \if\relax\detokenize{\spiral@name}\relax
        \else
          \renewcommand*{\spiral@start@name}{\spiral@name end}
          \renewcommand*{\spiral@end@name}{\spiral@name start}
        \fi
    \else
        \if\relax\detokenize{\spiral@name}\relax
        \else
          \renewcommand*{\spiral@start@name}{\spiral@name start}
          \renewcommand*{\spiral@end@name}{\spiral@name end}
        \fi
  \fi
  \pgfmathsetmacro{\spiral@domain}{\spiral@end@angle+\spiral@revolutions*360}
  \pgfmathsetmacro{\spiral@growth}{180*(\spiral@end@radius-\spiral@start@radius)/(pi*(\spiral@domain-\spiral@start@angle))}
  \draw [#1,
         shift={\spiral@center},
         domain=\spiral@start@angle*pi/180:\spiral@domain*pi/180,
         variable=\t,
         smooth,
         samples=int(\spiral@domain/\spiral@sample@rate)] node[coordinate,shift={(\spiral@start@angle:\spiral@start@radius)}](\spiral@start@name){} plot ({\t r}: {\spiral@start@radius+\spiral@growth*\t-\spiral@growth*\spiral@start@angle*pi/180}) node[coordinate](\spiral@end@name){}
  }
\makeatother

\newcommand\textspiral{%
  \begin{tikzpicture}[y=.009ex,x=.009ex,yscale=-1]
    \path[fill] (74.2500,379.5469) -- (62.4375,373.3594) .. controls
      (83.4375,365.2031) and (99.6563,356.1563) .. (111.0938,346.2188) .. controls
      (122.5313,336.2813) and (131.0625,324.9375) .. (136.6875,312.1875) .. controls
      (142.3125,299.4375) and (145.1250,284.4375) .. (145.1250,267.1875) .. controls
      (145.1250,256.6875) and (141.9375,247.5000) .. (135.5625,239.6250) .. controls
      (129.1875,231.7500) and (121.7813,226.3125) .. (113.3438,223.3125) .. controls
      (104.9063,220.3125) and (95.6250,218.8125) .. (85.5000,218.8125) .. controls
      (75.3750,218.8125) and (66.0937,220.3125) .. (57.6562,223.3125) .. controls
      (49.2187,226.3125) and (41.8125,231.7500) .. (35.4375,239.6250) .. controls
      (29.0625,247.5000) and (25.8750,256.6875) .. (25.8750,267.1875) .. controls
      (25.8750,277.6875) and (27.3750,286.9687) .. (30.3750,295.0312) .. controls
      (33.3750,303.0937) and (38.1563,308.9063) .. (44.7188,312.4688) .. controls
      (51.2813,316.0313) and (59.2500,317.8125) .. (68.6250,317.8125) .. controls
      (73.6875,317.8125) and (77.5782,316.7813) .. (80.2969,314.7188) .. controls
      (83.0156,312.6563) and (85.2187,309.7500) .. (86.9062,306.0000) .. controls
      (88.5937,302.2500) and (89.4375,297.3750) .. (89.4375,291.3750) .. controls
      (89.0625,288.3750) and (88.4063,285.6563) .. (87.4688,283.2188) .. controls
      (86.5313,280.7813) and (85.0313,278.9063) .. (82.9688,277.5938) .. controls
      (80.9063,276.2813) and (78.3750,275.6250) .. (75.3750,275.6250) .. controls
      (72.9375,275.6250) and (70.5469,277.1250) .. (68.2031,280.1250) .. controls
      (65.8594,283.1250) and (63.7500,288.4219) .. (61.8750,296.0156) --
      (57.6562,295.8750) .. controls (55.5937,295.8750) and (54.0937,295.4063) ..
      (53.1562,294.4688) .. controls (52.2187,293.5313) and (51.7500,292.5000) ..
      (51.7500,291.3750) .. controls (51.7500,286.5000) and (52.6875,281.7187) ..
      (54.5625,277.0312) .. controls (56.4375,272.3437) and (59.2500,268.5000) ..
      (63.0000,265.5000) .. controls (66.7500,262.5000) and (70.8750,261.0000) ..
      (75.3750,261.0000) .. controls (80.6250,261.0000) and (85.4063,262.1250) ..
      (89.7188,264.3750) .. controls (94.0313,266.6250) and (97.4063,270.0937) ..
      (99.8438,274.7812) .. controls (102.2813,279.4687) and (103.5000,285.0000) ..
      (103.5000,291.3750) .. controls (103.5000,299.6250) and (102.3750,306.5625) ..
      (100.1250,312.1875) .. controls (97.8750,317.8125) and (94.0313,322.5937) ..
      (88.5938,326.5312) .. controls (83.1563,330.4687) and (76.5000,332.4375) ..
      (68.6250,332.4375) .. controls (57.3750,332.4375) and (47.0625,329.8125) ..
      (37.6875,324.5625) .. controls (28.3125,319.3125) and (21.5625,311.5313) ..
      (17.4375,301.2188) .. controls (13.3125,290.9063) and (11.2500,279.5625) ..
      (11.2500,267.1875) .. controls (11.2500,254.0625) and (14.2500,241.9687) ..
      (20.2500,230.9062) .. controls (26.2500,219.8437) and (35.1563,211.3125) ..
      (46.9688,205.3125) .. controls (58.7813,199.3125) and (71.6250,196.3125) ..
      (85.5000,196.3125) .. controls (99.3750,196.3125) and (112.2187,199.3125) ..
      (124.0312,205.3125) .. controls (135.8437,211.3125) and (144.7500,219.8437) ..
      (150.7500,230.9062) .. controls (156.7500,241.9687) and (159.7500,254.0625) ..
      (159.7500,267.1875) .. controls (159.7500,287.4375) and (156.5625,304.7813) ..
      (150.1875,319.2188) .. controls (143.8125,333.6563) and (134.0625,346.1250) ..
      (120.9375,356.6250) .. controls (107.8125,367.1250) and (92.2500,374.7656) ..
      (74.2500,379.5469) -- cycle;
  \end{tikzpicture}%
}





% We need layers to draw the block diagram
\pgfdeclarelayer{background}
\pgfdeclarelayer{foreground}
\pgfsetlayers{background,main,foreground}

\tikzstyle{box} = [draw, minimum height = 2em, minimum width = 2cm]
\tikzstyle{arr} = [decoration={markings,mark=at position 1 with %
    {\arrow[scale=2,>=stealth]{>}}},postaction={decorate}]
% \tikzset{arr/.style={decoration={markings,mark=at position 1 with %
    % {\arrow[scale=2,>=stealth]{>}}},postaction={decorate}}}
% \tikzset{txt/.style={font=\footnotesize},above}
\tikzstyle{txt} = [font=\footnotesize,above]
\tikzstyle{da} = [{Stealth[scale=2]}-{Stealth[scale=2]}]
\tikzstyle{sa} = [-{Stealth[scale=2]}]

\forestset{
  folders/.style={
    for tree={
      parent anchor=south west,
      child anchor=west,
      anchor=mid west,
      inner ysep=0.8pt,
		  s sep-=0.7em, %reduce vertical spacing
	    l sep=1em, %increase horizontal spacing
      % inner ysep=1pt,
		  % s sep=0.1em, %reduce vertical spacing
	    % l sep=1em, %increase horizontal spacing
      grow'=0,
      align=left,
      edge path={
        \noexpand\path [draw, \forestoption{edge}] (!u.parent anchor) ++(1em,0) |- (.child anchor)\forestoption{edge label};
      },
      font=\sffamily,
      if n children=0{}{
        delay={
          prepend={[,phantom, calign with current]}
        }
      },
      fit=band,
      before computing xy={
        l=2em
      }
    },
  },
	folder/.style={
	   %draw=black,
		 content=\textbf{\rmfamily\large##1},
     prepend={[,phantom, calign with current]},
		 %inner sep=0,
		 %edge=dotted,
		 %s sep=0.6em, %reduce vertical spacing
	 },
}

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
\makeatother


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

\usepackage{wrapfig}
\setlength{\intextsep}{0.5cm} 
\setlength{\columnsep}{1cm} 

\usepackage{booktabs}
\usepackage{tabu}
\usepackage{tabularx}
\newtabulinestyle{outer=1.2pt}
\tabulinesep = 2mm
\usepackage{longtable}

\usepackage[%
  margin=10pt,justification=centering,font={footnotesize,sf},labelsep=endash]%
  {caption} % for subtables, minipages etc
\usepackage{subcaption} % for subtables, subfigures
\usepackage{changepage} % for indenting paragraphs or whatever
\DeclareCaptionLabelFormat{blank}{}

% memoir style for captions
\captionnamefont{\sffamily\footnotesize}
\captiontitlefont{\sffamily\footnotesize}
% \captionwidth{0.7\linewidth}


\usepackage{multirow}



% SILENCE WARNINGS
\usepackage{silence}
\WarningFilter{glossaries}{Overriding \printglossary}
\WarningFilter{glossaries}{overriding `theglossary'}



% CLEAR DOUBLE EMPTY PAGE
\usepackage{emptypage}
% \let\origdoublepage\cleardoublepage
% \newcommand{\clearemptydoublepage}{%
%   \clearpage
%   {\pagestyle{empty}\origdoublepage}%
% }
% \let\cleardoublepage\clearemptydoublepage


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

\makeatletter
\newenvironment{conditions}
  {\par\vspace{\abovedisplayskip}\noindent
   \tabularx{\columnwidth}{>{$}l<{$} @{${}={}$} >{\raggedright\arraybackslash}X}}
  {\endtabularx\par\vspace{\belowdisplayskip}}
\makeatother

% where:
% \begin{conditions}
%  P    &  notional permeability factor and something 
%           longer that needs to be taken at the next line\\
% N     &  number of waves \\
% S_{d} &  damage level
% \end{conditions}

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


% FRAME
% \usepackage[framemethod=default]{mdframed}
% \usepackage{showexpl}
% \mdfdefinestyle{exampledefault}{%
% rightline=true,innerleftmargin=10,innerrightmargin=10,
% frametitlerule=true,frametitlerulecolor=green,
% frametitlebackgroundcolor=yellow,
% frametitlerulewidth=2pt}



% FRAMED MINIPAGE
\newsavebox{\fmbox}
\newenvironment{fmpage}[1]
{\begin{lrbox}{\fmbox}\begin{minipage}{#1}}
{\end{minipage}\end{lrbox}\fbox{\usebox{\fmbox}}}


% LANDSCAPE mode
\usepackage{pdflscape}


% LINKS

\expandafter\def\expandafter\UrlBreaks\expandafter{\UrlBreaks%  save the current one
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
  \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
  \do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D%
  \do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N%
  \do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X%
  \do\Y\do\Z}

% WANTS TO BE RIGHT AT THE BOTTOM
% \PassOptionsToPackage{hyphens}{url} for linebreaks
\usepackage[pdfencoding=auto,
            colorlinks=true,
            citecolor=green,
            linkcolor=blue,
            pdftex,
            bookmarks=false,
            pdfauthor={Fania Raczinski},
            pdftitle={PhD Thesis},
            pdfsubject={Algorithmic Meta-Creativity},
            pdfkeywords={Pataphysics, Creative Computing, Interdisciplinary Research}]{hyperref}


% GLOSSARY & ACRONYMS
% WANTS TO BE AFTER HYPERREF

\usepackage[printonlyused]{acronym}

% dua - dont use acronyms, always print long word
% smaller - make them smaller
% footnote - show full as footnote
% withpage - shows first occurance page number

% \let\printglossary\relax
% \let\theglossary\relax
% \let\endtheglossary\relax

% \makeglossary
% \usepackage[acronyms]{glossaries}
% % \setacronymstyle{long-short}
% \loadglsentries{front/abbreviations}
% \glsnoexpandfields
% \newglossarystyle{mylong}{%
%   \setglossarystyle{long}%
%   \renewenvironment{theglossary}%
%      {\begin{longtable}[l]{>{\bfseries}p{\dimexpr 2cm-\tabcolsep}l}}% <-- change the value here
%      {\end{longtable}}%
%  }

% \makenoidxglossaries

