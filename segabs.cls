%%
%% This is file `segabs.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% segabs.dtx  (with options: `class')
%% 
%% This is an automatically generated file. Do not edit it directly!
%% 
%%    Copyright (C) 2004 by Sergey Fomel
%% 
%%     This work may be distributed and/or modified under the
%%     conditions of the LaTeX Project Public License, either version 1.3
%%     of this license or (at your option) any later version.
%%     The latest version of this license is in
%%       http://www.latex-project.org/lppl.txt
%%     and version 1.3 or later is part of all distributions of LaTeX
%%     version 2003/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{segabs}[2020/04/06 RevSEG v1.05 based on v1.0 SEG expanded abstract]
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\RequirePackage{ifthen}
\newboolean{@times}
\setboolean{@times}{true}
\newboolean{@rev@calfont}
\setboolean{@rev@calfont}{false}
\newboolean{@rev@wordlite}
\setboolean{@rev@wordlite}{false}
\newboolean{@rev@hyref}
\setboolean{@rev@hyref}{true}
\newboolean{@rev@extra}
\setboolean{@rev@extra}{true}
\newboolean{@rev@texlive}
\setboolean{@rev@texlive}{false}
\newboolean{@rev@final}
\setboolean{@rev@final}{false}
\DeclareOption{times}{\setboolean{@times}{true}}
\DeclareOption{notimes}{\setboolean{@times}{false}}
\DeclareOption{calfont}{\setboolean{@rev@calfont}{true}}
\DeclareOption{nocalfont}{\setboolean{@rev@calfont}{false}}
\DeclareOption{wordlite}{\setboolean{@rev@wordlite}{true}}
\DeclareOption{nowordlite}{\setboolean{@rev@wordlite}{false}}
\DeclareOption{hyref}{\setboolean{@rev@hyref}{true}}
\DeclareOption{nohyref}{\setboolean{@rev@hyref}{false}}
\DeclareOption{extra}{\setboolean{@rev@extra}{true}}
\DeclareOption{noextra}{\setboolean{@rev@extra}{false}}
\DeclareOption{texlive}{\setboolean{@rev@texlive}{true}}
\DeclareOption{notexlive}{\setboolean{@rev@texlive}{false}}
\DeclareOption{final}{\setboolean{@rev@final}{true}}
\DeclareOption{nofinal}{\setboolean{@rev@final}{false}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{times,hyref,extra}
\ProcessOptions*
\LoadClass[11pt, letterpaper]{article}
\ifthenelse{\boolean{@times}}{\RequirePackage{mathptmx}}{}
\DeclareSymbolFont{largesymbols}{OMX}{cmex}{m}{n}
\RequirePackage{seg}
\ifthenelse{\boolean{@rev@calfont}}{
  \DeclareSymbolFont{cmsymbols}{OMS}{cmsy}{m}{n}
  \SetSymbolFont{cmsymbols}{bold}{OMS}{cmsy}{b}{n}
  \DeclareSymbolFontAlphabet{\mathcal}{cmsymbols}
}{}
\RequirePackage{ifxetex}
% Hyperref settings
\ifthenelse{\boolean{@rev@hyref}}{
  \RequirePackage[hidelinks]{hyperref}
}{
  \providecommand{\autoref}{\ref}
}
\RequirePackage[T1]{fontenc}
\ifxetex
  \RequirePackage{fontspec}
  \ifthenelse{\boolean{@times}}{
    \setmainfont{Times New Roman}
  }{
    \setmainfont{TeX Gyre Termes}
  }
\fi
\ifthenelse{\boolean{@rev@extra}}{
  \RequirePackage{enumerate}
  \RequirePackage{stfloats}
  \RequirePackage{amsmath,amssymb,amsthm,amsbsy}
  \RequirePackage{algorithm}
  \RequirePackage{algorithmic}
  \renewcommand{\algorithmicrequire}{\textbf{Input:}}
  \renewcommand{\algorithmicensure}{\textbf{Output:}}
  \providecommand{\algorithmautorefname}{Algorithm}
  \ifthenelse{\boolean{@rev@hyref}}{
    \renewcommand{\eqref}[1]{\hyperref[#1]{(\ref*{#1})}}
  }{
    \RequirePackage{cleveref}
    \renewcommand{\autoref}{\Cref}
  }
}{}
\ifthenelse{\boolean{@rev@texlive}}{
  \RequirePackage{siunitx}
  %\newcommand{\si}[1]{#1}
  %\newcommand{\hertz}{\textrm{Hz}}
}{}
%
\providecommand{\figdir}{.}
\providecommand{\setfigdir}[1]{\renewcommand{\figdir}{#1}}
\providecommand{\fig@file}[1]{\@path/\figdir/#1}
\newcounter{@plots}
\setcounter{@plots}{0}
\ifthenelse{\boolean{@rev@wordlite}}{
  \setlength{\fboxrule}{0.7pt} 
  \DeclareRobustCommand{\fullplot}[4][htbp]{%
    \begin{figure*}[#1]
      \centering
      \fbox{
        \begin{minipage}{\dimexpr16cm-2\fboxsep-2\fboxrule}\centering
          \includegraphics[#3]{\fig@file{#2}}
          \caption[]{#4}
          \label{fig:\@path-#2}
          \label{fig:#2}
        \end{minipage}
      }
    \end{figure*}
  }
  \DeclareRobustCommand{\sideplot}[4][htbp]{%
    \begin{figure}[#1]
      \centering
      \fbox{
        \begin{minipage}{\dimexpr7.5cm-2\fboxsep-2\fboxrule}\centering
          \includegraphics[#3]{\fig@file{#2}}
          \caption[]{#4}
          \label{fig:\@path-#2}
          \label{fig:#2}
        \end{minipage}
      }
    \end{figure}}
}{
  \DeclareRobustCommand{\fullplot}[4][htbp]{%
    \begin{figure*}[#1]
      \centering
      \includegraphics[#3]{\fig@file{#2}}
      \caption[]{#4}
      \label{fig:\@path-#2}
      \label{fig:#2}
  \end{figure*}}
  \DeclareRobustCommand{\sideplot}[4][htbp]{%
    \begin{figure}[#1]
      \centering
      \includegraphics[#3]{\fig@file{#2}}
      \caption[]{#4}
      \label{fig:\@path-#2}
      \label{fig:#2}
  \end{figure}}
}
\def\plot{\@ifstar{\fullplot}{\sideplot}}
\RequirePackage{subfig}
\def\next@item#1,#2?{#1}
\def\rest@item#1,#2?{#2}
\newcounter{sub@fig}
\providecommand*{\subfigureautorefname}{\figureautorefname}
\ifthenelse{\boolean{@rev@wordlite}}{
  \newcommand{\sidemultiplot}[5][htbp]{
    \begin{figure}[#1]
      \centering
      \fbox{
        \begin{minipage}{\dimexpr7.5cm-2\fboxsep-2\fboxrule}\centering
          \setcounter{sub@fig}{0}
          \edef\list@i{#3}
          \loop
          \edef\item@i{\expandafter\next@item\list@i,\empty?}
          \edef\list@i{\expandafter\rest@item\list@i,\empty?}
          \ifx\item@i\empty
          \else
          \stepcounter{sub@fig}
          \subfloat[]{\includegraphics[#4]{\fig@file{\item@i}}%
            \label{fig:\@path-\item@i}
            \label{fig:\item@i}}
          \ifthenelse{\value{sub@fig} = #2}{\\ \setcounter{sub@fig}{0}}{}
          \repeat
          \caption{#5}
          \label{fig:\@path-#3}
          \label{fig:#3}
        \end{minipage}
      }
    \end{figure}
  }
  \newcommand{\fullmultiplot}[5][htbp]{
    \begin{figure*}[#1]
      \centering
      \fbox{
        \begin{minipage}{\dimexpr16cm-2\fboxsep-2\fboxrule}\centering
          \setcounter{sub@fig}{0}
          \edef\list@i{#3}
          \loop
          \edef\item@i{\expandafter\next@item\list@i,\empty?}
          \edef\list@i{\expandafter\rest@item\list@i,\empty?}
          \ifx\item@i\empty
          \else
          \stepcounter{sub@fig}
          \subfloat[]{\includegraphics[#4]{\fig@file{\item@i}}%
            \label{fig:\@path-\item@i}
            \label{fig:\item@i}}
          \ifthenelse{\value{sub@fig} = #2}{\\ \setcounter{sub@fig}{0}}{}
          \repeat
          \caption{#5}
          \label{fig:\@path-#3}
          \label{fig:#3}
        \end{minipage}
        }
    \end{figure*}
  }
}{
  \newcommand{\sidemultiplot}[5][htbp]{
    \begin{figure}[#1]
      \centering
      \setcounter{sub@fig}{0}
      \edef\list@i{#3}
      \loop
      \edef\item@i{\expandafter\next@item\list@i,\empty?}
      \edef\list@i{\expandafter\rest@item\list@i,\empty?}
      \ifx\item@i\empty
      \else
      \stepcounter{sub@fig}
      \subfloat[]{\includegraphics[#4]{\fig@file{\item@i}}%
        \label{fig:\@path-\item@i}
        \label{fig:\item@i}}
      \ifthenelse{\value{sub@fig} = #2}{\\ \setcounter{sub@fig}{0}}{}
      \repeat
      \caption{#5}
      \label{fig:\@path-#3}
      \label{fig:#3}
    \end{figure}
  }
  \newcommand{\fullmultiplot}[5][htbp]{
    \begin{figure*}[#1]
      \centering
      \setcounter{sub@fig}{0}
      \edef\list@i{#3}
      \loop
      \edef\item@i{\expandafter\next@item\list@i,\empty?}
      \edef\list@i{\expandafter\rest@item\list@i,\empty?}
      \ifx\item@i\empty
      \else
      \stepcounter{sub@fig}
      \subfloat[]{\includegraphics[#4]{\fig@file{\item@i}}%
        \label{fig:\@path-\item@i}
        \label{fig:\item@i}}
      \ifthenelse{\value{sub@fig} = #2}{\\ \setcounter{sub@fig}{0}}{}
      \repeat
      \caption{#5}
      \label{fig:\@path-#3}
      \label{fig:#3}
    \end{figure*}
  }
}
\def\multiplot{\@ifstar{\fullmultiplot}{\sidemultiplot}}
\renewcommand{\thesubfigure}{\alph{subfigure}}
\providecommand{\seg@sidetabl}[4][htbp]{
  \begin{table}[#1]
    #4
    \caption{#3}
    \label{tbl:#2}
  \end{table}
}
\providecommand{\seg@fulltabl}[4][htbp]{
  \begin{table*}[#1]
    #4
    \caption{#3}
    \label{tbl:#2}
  \end{table*}
}
\def\tabl{\@ifstar{\seg@fulltabl}{\seg@sidetabl}}
\RequirePackage{natbib}
\RequirePackage{bibentry}
\let\seg@biblography\bibliography
\let\seg@nobiblography\nobibliography
\ifthenelse{\boolean{@rev@final}}{
  \providecommand\autobibliography\seg@nobiblography
}{
  \providecommand\autobibliography\seg@biblography
}
\ifthenelse{\boolean{@rev@hyref}}{
  \ifthenelse{\boolean{@rev@final}}{
    \let\seg@cite\cite
    \renewcommand{\cite}[2][none]{%
      \ifthenelse{\equal{#1}{none}}{\begin{NoHyper}\seg@cite{#2}\end{NoHyper}}{\begin{NoHyper}\seg@cite[#1]{#2}\end{NoHyper}}%
    }
  }{}
}{}
\bibpunct[,]{(}{)}{;}{a}{,}{,}
\DeclareRobustCommand{\refname}{REFERENCES}
\renewcommand\bibsection{\clearpage\section{\refname}}
\newcommand{\shortcite}[1]{\citeyearpar{#1}}
\setlength{\oddsidemargin}{0in}
\setlength{\evensidemargin}{0in}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{9.0625in}
\setlength{\parindent}{0em}
\setlength{\headheight}{0.3125in}
\setlength{\headsep}{0.125in}
\setlength{\parskip}{1.5ex plus0.1ex minus0.1ex}
\setlength{\topsep}{0em}%
\setlength{\itemsep}{0em}
\setlength{\topmargin}{-0.5in}
\setlength{\columnsep}{0.3125in}
\let\normal@size\normalsize
\let\seg@small\small
\let\seg@size\footnotesize
\renewcommand{\Large}{\protect\seg@size}
\renewcommand{\normalsize}{\protect\seg@size}
\renewcommand{\small}{\protect\tiny}
\renewcommand{\footnotesize}{\protect\tiny}
\seg@size
\ifthenelse{\boolean{@rev@hyref}}{
  \newcommand{\seg@section}{%
    \@startsection {section}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {1ex \@plus .2ex}%
    {\phantomsection\normalfont\Large\bfseries\MakeUppercase}%
  }
}{
  \newcommand{\seg@section}{%
    \@startsection {section}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {1ex \@plus .2ex}%
    {\normalfont\Large\bfseries\MakeUppercase}%
  }
}
\newcommand{\seg@subsection}[2][]{%
  \begin{minipage}{\columnwidth}
    \textbf{#2}
  \end{minipage}}
\newcommand{\seg@subsubsection}[2][]{%
  \begin{minipage}{\columnwidth}
    \textit{#2}
  \end{minipage}}
\newcommand{\seg@subsubsubsection}[2][]{%
  \underline{#2}.--}

\ifthenelse{\boolean{@rev@hyref}}{
  \def\ifempty#1{\def\temp{#1} \ifx\temp\empty }
  \def\section{\@ifstar{\seg@section*}{\@@section}}
  \newcommand\@@section[2][]{ \seg@section*{#2} \ifempty{#1} \addcontentsline{toc}{section}{#2} \else \addcontentsline{toc}{section}{#1} \fi }%
  \def\subsection{\@ifstar{\seg@subsection}{\@@subsection}}%
  \newcommand\@@subsection[2][]{ \phantomsection \seg@subsection{#2} \ifempty{#1} \addcontentsline{toc}{subsection}{#2} \else \addcontentsline{toc}{subsection}{#1} \fi }%
  \def\subsubsection{\@ifstar{\seg@subsubsection}{\@@subsubsection}}
  \newcommand\@@subsubsection[2][]{ \phantomsection \seg@subsubsection{#2} \ifempty{#1} \addcontentsline{toc}{subsubsection}{#2} \else \addcontentsline{toc}{subsubsection}{#1} \fi }%
  \def\subsubsubsection{\@ifstar{\seg@subsubsubsection}{\@@subsubsubsection}}
  \newcommand\@@subsubsubsection[2][]{ \phantomsection \seg@subsubsubsection{#2} \ifempty{#1} \addcontentsline{toc}{paragraph}{#2} \else \addcontentsline{toc}{paragraph}{#1} \fi }%
}{
  \def\section{\@ifstar{\seg@section*}{\seg@section*}}%
  \def\subsection{\@ifstar{\seg@subsection}{\seg@subsection}}%
  \def\subsubsection{\@ifstar{\seg@subsubsection}{\seg@subsubsection}}
  \def\subsubsubsection{\@ifstar{\seg@subsubsubsection}{\seg@subsubsubsection}}
}
\newcommand{\seg@title}{}
\renewcommand{\title}[1]{\renewcommand{\seg@title}{#1}}
\providecommand{\seg@address}{}
\providecommand{\address}[1]{\renewcommand{\seg@address}{\emph{#1}}}
\providecommand{\seg@email}{.}
\providecommand{\email}[1]{\renewcommand{\seg@email}{#1}}
\providecommand{\seg@author}{}
\renewcommand{\author}[1]{%
\renewcommand{\seg@author}{%
\twocolumn[\vspace{0.25in}\normal@size\textbf{\seg@title}%
\newline\seg@small\textit{#1}\vspace{2ex}]}}
\renewcommand{\maketitle}{\seg@author}
\renewenvironment{abstract}{%
\begin{minipage}[t]{\columnwidth}
\textbf{SUMMARY\\}\\*}{%
\end{minipage}\vspace{2ex}}
\newcommand{\ps@seg}{%
\renewcommand{\@oddhead}{\hfill\seg@small\textbf{\seg@rhead}\seg@size\hfill}
\renewcommand{\@evenhead}{\@oddhead}
\renewcommand{\@oddfoot}{}
\renewcommand{\@evenfoot}{}}
\thispagestyle{empty}
\pagestyle{seg}
\newcounter{@append}
\providecommand{\append@name}{A}
\providecommand{\appendname}[1]{\renewcommand{\append@name}{#1}}
\renewcommand{\appendix}{%
  \ifthenelse{\equal{\append@name}{A}}{%
    \renewcommand{\append@name}{\Alph{@append}}}{}
  \setcounter{equation}{0}%
  \renewcommand{\theequation}{\mbox{\append@name-\arabic{equation}}}%
    \setcounter{figure}{0}%
    \renewcommand{\thefigure}{\append@name-\arabic{figure}}%
  \stepcounter{@append}
}
\providecommand{\append}[1]{%
  %\appendix\section{Appendix \append@name}\section{#1}%
  \appendix\section*{Appendix \append@name}\section{#1}%
}
\RequirePackage{verbatim}
\RequirePackage{moreverb}
\endinput
%%
%% End of file `segabs.cls'.
