\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lbrjura}[2020/04/16 Legal RPG Librarium document]


%%%
% Derive from class: LbrGeneric
% http://texdoc.net/texmf-dist/doc/latex/memoir/memman.pdf
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{lbrgeneric}}
\ProcessOptions\relax
% Default 
\PassOptionsToClass{11pt,a4paper,oneside,openany,article}{lbrgeneric}
\LoadClass{lbrgeneric}
%
%%%

%%%
%Configure hyperref
\AtBeginDocument{
  \hypersetup{
    pdfauthor={RPG Librarium Aachen e.V.},
    pdftitle={\@title},
    pdfsubject={},
    pdfkeywords={}
  }
}
\hypersetup{
  bookmarks=true,
  colorlinks=false,
  urlcolor=black,
  hyperindex=true
}
%
%%%


%%%
% Configure Title
\setlength{\droptitle}{0pt}
\pretitle{\begin{center}\LARGE\scshape\addfontfeature{LetterSpace=17}}
\posttitle{\addfontfeature{LetterSpace=0.0}\rmfamily\par\end{center}}
%%%

%%%
% Do not show chapters
\counterwithout{section}{chapter}
\setsecnumformat{§~\csname the#1\endcsname\quad}
%%%

% Nutzbar für Ordnungen
\usepackage{enumitem}

%%%
\newenvironment{para}[1]{%
  \section{#1}
  \begin{enumerate}[label=(\arabic*), ref=\thesection~Abs.~\arabic*]
}{%
  \end{enumerate}
}

\newenvironment{subpara}{%
  \begin{enumerate}[label=(\alph*), ref=\theenumi~\alph*]
}{\end{enumerate}}

% References
\newcommand{\pararef}[1]{§~\ref{#1}}
\newcommand{\parasref}[1]{§§~\ref{#1}}
%\newcommand{ppref}[1]
%%%


%%%
% Implement explicit document history
\newenvironment{changes}{%
\vspace{2em}
\tightlist
\begin{description}
}{%
\end{description}
\defaultlists
}
%%%
