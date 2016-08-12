# Latex Cheatsheet

\todo{Message}

\faicon{table} Table
\faicon{object-group} Figure
\faicon{picture-o}] Image
§ Chapters + sections

\marginnote{§~\ref{ch:intro}}

\ac{nlp}

\textcolor{red}{300 words\ldots}

titles of books etc in italics
quotes from books in double quotes
word emph in italics


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
