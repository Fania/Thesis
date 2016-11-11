# Latex Cheatsheet

\todo{Message}

\faicon{code} Code
$\bm{\Sigma}$ Equation
\faicon{table} Table
\faicon{object-group} Figure
\faicon{picture-o}] Image
§ Chapters + sections
\textspiral Parts


\sidepar{\textspiral~\ref{p:analysis}}
\marginnote{§~\ref{ch:intro}}

\begin{description}[leftmargin=2.8cm]

\ac  - acronym full first and then short
\acf - acronym full again
\acs - acronym short
\acl - acronym long

\textcolor{red}{300 words\ldots}

titles of books etc in italics
quotes from books in double quotes
word emph in italics

% \begin{conditions*}
%  P    &  notional permeability factor and something 
%           longer that needs to be taken at the next line\\
% N     &  number of waves \\
% S_{d} &  damage level
% \end{conditions*}

## FIGURES
\begin{figure}[!htb] % (here, top, bottom, page)
\centering % width=\linewidth
\includegraphics[height=0.3\textheight]{images/Electron.png}
\caption[Text for Table of Contents]{Caption text under figure}
\label{fig:Electron}
\end{figure}


## CITATIONS
\citet{jon90}	               -->    	Jones et al. (1990)
\citet[chap. 2]{jon90}	     -->    	Jones et al. (1990, chap. 2)
\citep{jon90}	               -->    	(Jones et al., 1990)
\citep[chap. 2]{jon90}	     -->    	(Jones et al., 1990, chap. 2)
\citep[see][]{jon90}	       -->    	(see Jones et al., 1990)
\citep[see][chap. 2]{jon90}	 -->    	(see Jones et al., 1990, chap. 2)
\citet*{jon90}	             -->    	Jones, Baker, and Williams (1990)
\citep*{jon90}	             -->    	(Jones, Baker, and Williams, 1990)


## SUBFIGURES
\begin{figure}
\centering
\begin{minipage}{.275\linewidth}
  \includegraphics[width=\linewidth]{FelixVallotton}
  \caption[figure1]{FelixVallotton}
\label{img1}
\end{minipage}
\hspace{.05\linewidth}
\begin{minipage}{.275\linewidth}
  \includegraphics[width=\linewidth]{jarry}
  \caption[figure2]{jarry}
\label{img2}
\end{minipage}
\hspace{.05\linewidth}
\begin{minipage}{.275\linewidth}
  \includegraphics[width=\linewidth]{jpicasso}
  \caption[figure3]{jpicasso}
\label{img3}
\end{minipage}
\end{figure}



## TIKZ

paths can be draw, fill or clip

\draw == \path[draw]

\draw[color=red] (0,0) rectangle (2,1);
\draw (0,0) -- (2,1);
\draw[->] (0,0) -- (2,1);

arrows etc
dotted, |<->|, dashed, o-), >->>

use scope env to group

nodes
\node[options] (node_name) at (x,y) {Name}

\path[draw] (0, 0) node {A} -- (1,0) -- (1,1) node {B}

\draw (v0) -- (v1) 
      (v0) -- (v2) 
      (v0) -- (v3) 
      (v0) -- (v4) 
      (v0) -- (v5);

\draw[thick,->] (0,0) -- (4.5,0) node[anchor=north west] {x axis};
\draw[thick,->] (0,0) -- (0,4.5) node[anchor=south east] {y axis};

\tikzstyle{box} = [draw, minimum height = 2em, minimum width = 2cm]
\begin{figure}[!htbp]
  \centering
  \begin{tikzpicture}[node distance = 1cm and 2cm]
    % \begin{scope}[]
    \node [box] (web) {Web};
    \node [box, below = of web] (crawl) {Crawler};
    \node [box, below = of crawl] (index) {Index};
    \node [box, right = of web] (user) {User};
    \node [box, below = of user] (query) {Query};
    \node [box, below = of query] (rank) {Ranking};
    \draw [->] (web) -- (crawl);
    \draw [->] (crawl) -- (index);
    \draw [->] (user) -- (query);
    \draw [->] (index) -- (rank);
    \draw [->] (rank) -| +(1.4,0) |- (user);
    \draw [->] (query.west) -| +(-1,0) |- (index.north east);
    % \end{scope}
  \end{tikzpicture}
\caption[Search Engine Architecture]{Abstract search engine architecture}
\label{fig:sea}
\end{figure}