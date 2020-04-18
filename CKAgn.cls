%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Short Sectioned Assignment - Modified
%   See the readme file for checking the instructions.
% LaTeX Template
% Version 1.5 (4/18/20)
%   - Make fundamental changes for this class.
%   - All options about ``Listening'', ``Reading'', ``Writing'' and
%     ``Speaking'' are rearranged as functional options now.
%   - Make some functions like ``textStyle'' optional.
%   - Remove useless functions.
% Version 1.25 (7/31/16)
%   - Pack the terget instructions of the mode ``Listening''.
%     -- Try use the environment ``einstruction'' to call it.
% Version 1.2 (7/17/16)
%   - Strengthening the expression of the mode ``Listening'' & ``Reading''.
%     -- Now \vag, \err are provided. \State... can be used to explain them.
%   - Adding an environment named ``shadequote'' for quotation.
%     -- Use the option ``UpQuote'' will lauch the settings.
% Version 1.1 (6/23/16)
%   - Adding the paralyzed text settings for Writing mode.
%   - Adding the coding command: \Coding:{Ownerpass, Userpass}
%     -- A userpass with "none" will cancel the userpass (default)
%   - Adding a new environment: Signature
% Version 1.0 (5/5/16)
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% Original author:
% Frits Wenneker (http://www.howtotex.com)
%
% Modifying author:
% Cain King (cainmagi@gmail.com / cain.king@foxmail.com)
%
% License:
% MIT License
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CKAgn}[2020/04/17 v1.5 Cain King General Assignment class]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\SetupKeyvalOptions{family=CKA, prefix=CKA@opt@, setkeys=\kvsetkeys}
\newcommand{\ckasetup}[1]{
  \kvsetkeys{CKA}{#1}
  \ifdefstring{\CKA@opt@textStyle}{default}{
    \renewcommand{\err}[1]{\sout{##1}}
    \renewcommand{\add}[1]{\uwave{##1}}
    \renewcommand{\unsure}[1]{\dashuline{##1}}
  }{
    \ifdefstring{\CKA@opt@textStyle}{color}{
      \renewcommand{\err}[1]{\sout{\textcolor{DarkRed}{##1}}}
      \renewcommand{\add}[1]{\uwave{\textcolor{Navy}{##1}}}
      \renewcommand{\unsure}[1]{\dashuline{\textcolor{DarkGoldenrod}{##1}}}
    }{
      \ifdefstring{\CKA@opt@textStyle}{box}{
        \renewcommand{\err}[1]{\fcolorbox{gray}{DarkRed}{\textcolor{white}{\sout{##1}}}}
        \renewcommand{\add}[1]{\fcolorbox{gray}{Navy}{\textcolor{white}{##1}}}
        \renewcommand{\unsure}[1]{\fcolorbox{gray}{DarkGoldenrod}{\textcolor{white}{##1}}}
      }{}
    }
  }{}
}

\DeclareBoolOption[true]{emphFoot}
\DeclareComplementaryOption{noEmphFoot}{emphFoot}
\DeclareBoolOption[false]{useSpeTable}
\DeclareComplementaryOption{noSpeTable}{useSpeTable}
\DeclareBoolOption[false]{useQuote}
\DeclareComplementaryOption{noQuote}{useQuote}
\DeclareBoolOption[false]{useParallel}
\DeclareComplementaryOption{noParallel}{useParallel}
\DeclareBoolOption[false]{useLettrine}
\DeclareComplementaryOption{noLettrine}{useLettrine}
\DeclareBoolOption[true]{sectionCenter}
\DeclareComplementaryOption{sectionLeft}{sectionCenter}

\DeclareStringOption[CKATemplate001]{Ownerpass}[CKATemplate001]
\DeclareStringOption[none]{Userpass}[none]

\DeclareStringOption[default]{layout}[default] % default, handbook, rotate, showcards
\DeclareStringOption[default]{textStyle}[default] % default, color, box

\DeclareStringOption[Common]{type}[Common]
\DeclareStringOption[0]{number}[0]
\DeclareStringOption[Yuchen Jin]{author}[Yuchen Jin]
\DeclareStringOption[University of Houston]{organization}[University of Houston]

\DeclareDefaultOption{\relax}
\ProcessKeyvalOptions*\relax

% Load class
\ifdefstring{\CKA@opt@layout}{showcards}{
  \PassOptionsToClass{10pt}{article}
}{
  \PassOptionsToClass{11pt}{article}
}
\LoadClass[letterpaper]{article} % Letter paper

%----------------------------------------------------------------------------------------
% Basic packages
%----------------------------------------------------------------------------------------

\RequirePackage[T3,OT2,T1]{fontenc} % Use 8-bit encoding that has 256 glyphs
\RequirePackage[english]{babel} % English language/hyphenation
\RequirePackage{amsmath,amsfonts,amssymb} % Math packages
%\RequirePackage{lipsum} % Used for inserting dummy 'Lorem ipsum' text into the template
\RequirePackage{sectsty} % Allows customizing section commands
\RequirePackage{scrlayer-scrpage} % Custom headers and footers
\RequirePackage{datetime}
\RequirePackage{xifthen}
\RequirePackage{ifxetex,ifluatex}
\RequirePackage{enumerate}
\RequirePackage{hyperref}
\RequirePackage{geometry}
\RequirePackage{multicol}

\newif\ifxetexorluatex
  \ifxetex
    \xetexorluatextrue
  \else
    \ifluatex
      \xetexorluatextrue
    \else
      \xetexorluatexfalse
    \fi
\fi

%----------------------------------------------------------------------------------------
% Font settings
%----------------------------------------------------------------------------------------
\ifxetexorluatex%
  \RequirePackage{fontspec}
  \RequirePackage{libertine} % or use \setmainfont to choose any font on your system
  \newfontfamily\quotefont[Ligatures=TeX]{Linux Libertine O} % selects Libertine as the quote font
\else
  \RequirePackage[utf8]{inputenc}
  \RequirePackage{libertine} % or any other font package
  \newcommand*\quotefont{\fontfamily{LinuxLibertineT-LF}} % selects Libertine as the quote font
\fi

%----------------------------------------------------------------------------------------
% Figures
%----------------------------------------------------------------------------------------

\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
\else
  \ifxetex
    \RequirePackage{graphicx}
  \else
    \RequirePackage[dvipdfmx]{graphicx}
    \RequirePackage{bmpsize}
  \fi
\fi
\graphicspath{{pics/}}
\DeclareGraphicsExtensions{.pdf,.jpeg,.jpg,.png,.eps}
\RequirePackage{subfig}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\providecommand*{\algorithmautorefname}{Algorithm}

%----------------------------------------------------------------------------------------
% Color settings
%----------------------------------------------------------------------------------------

\RequirePackage[svgnames]{xcolor}
\definecolor{mygray}{gray}{.9}

%----------------------------------------------------------------------------------------
% Text-related packages
%----------------------------------------------------------------------------------------

\RequirePackage{ulem} % Provide underlines and line strucks.
\RequirePackage{colortbl} % Provide colored boxes.
\RequirePackage{longtable, multirow, hhline, tabularx, array} % Table related packages
\BeforeBeginEnvironment{longtable}{%
  \parskip=0pt\par\nopagebreak{\centering%
}
\AfterEndEnvironment{longtable}{%
  }\par\noindent\ignorespacesafterend%
}
\renewcommand{\emph}{\textit}

%----------------------------------------------------------------------------------------
% Set page layout
%----------------------------------------------------------------------------------------

\ifdefstring{\CKA@opt@layout}{handbook}{
  \geometry{paper=letterpaper,mag=2000,truedimen,textwidth=9.4cm,textheight=10.8cm}
}{
  \ifdefstring{\CKA@opt@layout}{rotate}{
    \geometry{paper=letterpaper,mag=2000,truedimen,landscape,textwidth=12.5cm,vmargin={0.5cm,2cm}}
  }
}

%----------------------------------------------------------------------------------------
% Set the captions (with the section number)
%----------------------------------------------------------------------------------------

\numberwithin{equation}{section} % Number equations within sections (i.e. 1.1, 1.2, 2.1, 2.2 instead of 1, 2, 3, 4)
\numberwithin{figure}{section} % Number figures within sections (i.e. 1.1, 1.2, 2.1, 2.2 instead of 1, 2, 3, 4)
\numberwithin{table}{section} % Number tables within sections (i.e. 1.1, 1.2, 2.1, 2.2 instead of 1, 2, 3, 4)

%----------------------------------------------------------------------------------------
% Set the password
%----------------------------------------------------------------------------------------

\newcommand{\Coding}{
  \ifdefstring{\CKA@opt@Userpass}{none}{
    \special{pdf:encrypt ownerpw (\CKA@opt@Ownerpass) length 128 perm 2052}
  }{
    \special{pdf:encrypt ownerpw (\CKA@opt@Ownerpass) userpw (\CKA@opt@Userpass) length 128 perm 2052}
  }
}

%----------------------------------------------------------------------------------------
% Set the hyperref
%----------------------------------------------------------------------------------------

\hypersetup{pdfdisplaydoctitle={true},hidelinks}
\ifpdf
  \hypersetup{pdfcreator={pdfLaTeX}}
\else
  \ifxetex
    \hypersetup{pdfcreator={xeLaTeX}}
  \else
    \hypersetup{dvipdfmx={true},pdfcreator={unknownLaTeX}}
  \fi
\fi

%----------------------------------------------------------------------------------------
% Set the heading and foot
%----------------------------------------------------------------------------------------

\pagestyle{plain} % Makes all pages in the document conform to the custom headers and footers
% No page header - if you want one, create it in the same way as the footers below
\ifoot[]{} % Empty left footer
\cfoot[]{} % Empty center footer
\ofoot[\thepage]{\thepage} % Page numbering for right footer
%\renewcommand{\headrulewidth}{0pt} % Remove header underlines
%\renewcommand{\footrulewidth}{0pt} % Remove footer underlines
\ifdefstring{\CKA@opt@layout}{handbook}{
  \linespread{1.4}
  \setlength{\headheight}{19.5pt} % Customize the height of the header
}{
  \ifdefstring{\CKA@opt@layout}{rotate}{
    \linespread{1.4}
    \setlength{\headheight}{19.5pt} % Customize the height of the header
  }{
    \setlength{\headheight}{13.6pt} % Customize the height of the header
  }
}

%----------------------------------------------------------------------------------------
% Set the section style
%----------------------------------------------------------------------------------------

\ifCKA@opt@sectionCenter
  \typeout{Section Location: Center}
  \allsectionsfont{\centering \normalfont\scshape} % Make all sections centered, the default font and small caps
  \sectionfont{\centering \bfseries \rmfamily}
\else
  \typeout{Section Location: Left}
  \allsectionsfont{\normalfont\scshape}
  \sectionfont{\bfseries \rmfamily}
\fi

%----------------------------------------------------------------------------------------
%	Set the title style
%----------------------------------------------------------------------------------------

\newcommand{\horrule}[1]{\rule{\linewidth}{#1}} % Create horizontal rule command with 1 argument of height

\title{	
  \normalfont \normalsize
  \ifdefstring{\CKA@opt@layout}{handbook}{
    \linespread{1.2}
    \textsc{\CKA@opt@organization}\\[10pt] % Your university, school and/or department name(s)
    \horrule{0.5pt}\\ % Thin top horizontal rule
  }{
    \ifdefstring{\CKA@opt@layout}{rotate}{
      \linespread{1.2}
      \textsc{\CKA@opt@organization} \\
      \horrule{0.5pt}\\ % Thin top horizontal rule
    }{
      \textsc{\CKA@opt@organization} \\[25pt]
      \horrule{0.5pt}\\[0.4cm] % Thin top horizontal rule
    }
  }
  \huge \textbf{\CKA@opt@type\ Assignment - \CKA@opt@number} \\ % The assignment title
  \ifdefstring{\CKA@opt@layout}{handbook}{
    \large \textsc{Scaled Version}\\
  }{
    \ifdefstring{\CKA@opt@layout}{rotate}{
      \large \textsc{Rotated Version}\\
    }{}
  }
  \horrule{2pt} % Thick bottom horizontal rule
  \ifdefstring{\CKA@opt@layout}{handbook}{
    \\
  }{
    \ifdefstring{\CKA@opt@layout}{rotate}{
      \\
    }{\\[0.5cm]}
  }
  \ifdefstring{\CKA@opt@layout}{handbook}{
    \linespread{1.4}
  }{
    \ifdefstring{\CKA@opt@layout}{rotate}{
      \linespread{1.4}
    }{}
  }
  \hypersetup{
    pdfauthor={\CKA@opt@author},%
    pdftitle={\CKA@opt@type\ Assignment - \CKA@opt@number},%
    pdfsubject={Assignment\ \CKA@opt@type},%
    pdfkeywords={\CKA@opt@type}%
  }
}

\author{\CKA@opt@author} % Your name

\date{\normalsize\today} % Today's date or a custom date

%----------------------------------------------------------------------------------------
% Set the theorem and autoref
%----------------------------------------------------------------------------------------
\RequirePackage[thref,hyperref]{ntheorem}
\theoremlisttype{all}
\theoremclass{question}
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\newtheorem{question}{Question}
\def\figureautorefname{Fig.}
\def\subfigureautorefname{Fig.}
\def\tableautorefname{Table}
\def\algorithmautorefname{Algorithm}
\def\theoremautorefname{Theorem}
\def\questionautorefname{Question}

%----------------------------------------------------------------------------------------
% Set the content
%----------------------------------------------------------------------------------------

% This is used to display the content of sections or any theorem.
\def\CKAcontents{\futurelet\next\CKAcontentsAux}
\def\CKAcontentsAux{
  \ifx\next[%
  \expandafter\CKAcontentsOptArg
  \else
  \expandafter\CKAcontentsArg
  \fi
}
\def\CKAcontentsOptArg[#1]#2{\relax
  \ifthenelse{\equal{#1}{2col}}{
    \ifdefstring{\CKA@opt@layout}{handbook}{
      \CKAcontentsArg{#2}
    }{
      \setlength\columnseprule{.5pt}
      \begin{multicols}{2}
        \CKAcontentsArg{#2}
      \end{multicols}
      \setlength\columnseprule{0pt}
    }
  }{
    \CKAcontentsArg{#2}
  }
}
\def\CKAcontentsArg#1{\relax
  \ifthenelse{\equal{#1}{}}{
    \tableofcontents
  }{
    \section*{Contents}
    \listtheorems{#1}
  }
}

%----------------------------------------------------------------------------------------
% Special functions
%----------------------------------------------------------------------------------------

% ---------------------------
% 1: text with foot.
%    Example:
%      \textfoot{text}{foot}
%      \textfoot[described text]{text}{foot}
%      \textfoot[]{text}{foot}
\def\textfoot{\futurelet\next\textfootAux}
\def\textfootAux{\ifx\next[%
  \expandafter\textfootOptArg
  \else
  \expandafter\textfootArg
  \fi
}
\def\textfootContent#1#2{
  \ifCKA@opt@emphFoot
    \textbf{#1}#2
  \else
    #1#2
  \fi
}
\def\textfootOptArg[#1]#2#3{\relax
  \ifthenelse{\equal{#1}{}}{
    \textfootContent{#2}{\footnote{\textfootContent{$\cdots$}{: #3}}}
  }{
    \textfootContent{#2}{\footnote{\textfootContent{#1}{: #3}}}
  }
}
\def\textfootArg#1#2{\relax
  \textfootContent{#1}{\footnote{\textfootContent{#1}{: #2}}}
}

% ---------------------------
% 2: special table
%    Example:
%      see test-stable.tex
\ifCKA@opt@useSpeTable
  % First table: a row with dashed line dividing the table
  \RequirePackage{arydshln}
  \providecommand{\CKA@arg@fullrowskip}{0.25\baselineskip}
  \newcommand{\fullrow}[2][2]{
    \ifthenelse{\equal{#1}{}}{}{%
      \\ \cdashline{1-#1}%
      \multicolumn{#1}{|l|}{%
        \begin{minipage}{0.8\columnwidth}%
          \vspace{\CKA@arg@fullrowskip}#2\vspace{\CKA@arg@fullrowskip}
        \end{minipage}%
      }%
    }%
  }
  % Second table: a word box
  %% First， introduce the package
  \RequirePackage{xstring}
  \newcommand{\CKA@arg@ifboldwitem}[2]{\IfSubStr{#1}{b}{\textbf{#2}}{#2}}
  \newcommand{\CKA@arg@ifemphwitem}[2]{\IfSubStr{#1}{e}{\emph{#2}}{#2}}
  %% Define the items of the box
  \newcommand{\witem}[2]{
    \IfSubStr{#1}{g}{\\ \rowcolor[gray]{0.9}}{\\}
    \CKA@arg@ifboldwitem{#1}{\CKA@arg@ifemphwitem{#1}{#2}}
  }
  % Define the wordbox itself.
  \newcommand{\CKA@arg@wordboxselfdef}{}
  \newenvironment{wordbox}[2]{
    \ifthenelse{\equal{#1}{s}}{%
      \renewcommand{\CKA@arg@wordboxselfdef}{}%
    }{%
      \renewcommand{\CKA@arg@wordboxselfdef}{#1}%
    }
    \centering
    \begin{tabular}{|p{0.8\columnwidth}|}
      \hline
      \rowcolor[gray]{0.2}
      \ifthenelse{\equal{#1}{s}}{\makebox[0.75\columnwidth][c]{\textcolor[rgb]{1.00,1.00,1.00}{\textbf{SENTENCE}}}}
      {\textcolor[rgb]{1.00,1.00,1.00}{\ifthenelse{\equal{#2}{}}{\textbf{#1}}{\textbf{#1} \hfill \emph{#2}}}}
  }{
    \\ \hline
    \end{tabular}\\[1em]
  }
  %% Implement the highlight in the box.
  \newcommand{\weghead}{\emph{e.g. }}
  \newcommand{\wegemph}[1]{\textcolor{DarkRed}{#1}}
  \def\weg{\futurelet\next\wegAux}
  \def\wegAux{\ifx\next[%
      \expandafter\wegadd
    \else
      \expandafter\wegdef
    \fi
  }
  \def\wegadd[#1]#2{%
    \relax\weghead%
    \IfSubStr{#2}{#1}{%
      \StrBefore{#2}{#1}%
      \wegemph{#1}%
      \StrBehind{#2}{#1}%
    }{#2}%
  }
  \def\wegdef#1{%
    \relax\weghead%
    \IfSubStr{#1}{\CKA@arg@wordboxselfdef}{%
      \StrBefore{#1}{\CKA@arg@wordboxselfdef}%
      \wegemph{\CKA@arg@wordboxselfdef}%
      \StrBehind{#1}{\CKA@arg@wordboxselfdef}%
    }{#1}%
  }
  \newenvironment{wordlist}{
    \ifdefstring{\CKA@opt@layout}{handbook}{}{
      \setlength{\columnseprule}{1.5pt}
      \begin{multicols}{2}
        \centering
      }
    }{
      \ifdefstring{\CKA@opt@layout}{handbook}{}{
      \end{multicols}
      \setlength{\columnseprule}{0pt}
    }
  }
\fi

% ---------------------------
% 3: lettrine
%    Example:
%      \begin{lettrPara}{T}{his}
%        paragraph starts with a letter with a weight of 2.
%      \end{lettrParagraph}
\ifCKA@opt@useLettrine
  \RequirePackage{lettrine}
\fi

% ---------------------------
% 4: special quote
%    Example:
%      \begin{shadeQuote}{}
%        A quote without source.
%      \end{shadeQuote}
%      \begin{shadeQuote}{Shakespeare}
%        To be, or not to be, that is the question.
%      \end{shadeQuote}
%      \begin{shadeQuote}[r]{Shakespeare}
%        To be, or not to be, that is the question.
%      \end{shadeQuote}

\ifCKA@opt@useQuote
  \RequirePackage{tikz}
  \RequirePackage{framed}
  
  \newcommand*\quotesize{60} % if quote size changes, need a way to make shifts relative
  % Make commands for the quotes
  \newcommand*{\openquote}
  {\tikz[remember picture,overlay,xshift=-4ex,yshift=-2.5ex]
    \node (OQ) {\quotefont\fontsize{\quotesize}{\quotesize}\selectfont``};\kern0pt}
  
  \newcommand*{\closequote}[1]
  {\tikz[remember picture,overlay,xshift=4ex,yshift={#1}]
    \node (CQ) {\quotefont\fontsize{\quotesize}{\quotesize}\selectfont''};}
  
  % select a colour for the shading
  \colorlet{shadecolor}{mygray}
  
  \newcommand*\shadedauthorformat{\emph} % define format for the author argument
  
  % Now a command to allow left, right and centre alignment of the author
  \newcommand*\authoralign[1]{%
    \if#1l
    \def\authorfill{}\def\quotefill{\hfill}
    \else
    \if#1r
    \def\authorfill{\hfill}\def\quotefill{}
    \else
    \if#1c
    \gdef\authorfill{\hfill}\def\quotefill{\hfill}
    \else\typeout{Invalid option}
    \fi
    \fi
    \fi}
  % wrap everything in its own environment which takes one argument (author) and one optional argument
  % specifying the alignment [l, r or c]
  %
  \newenvironment{shadeQuote}[2][l]%
  {\authoralign{#1}
    \ifblank{#2}
    {\def\shadequoteauthor{}\def\yshift{-2ex}\def\quotefill{\hfill}}
    {\def\shadequoteauthor{\par\authorfill\shadedauthorformat{#2}}\def\yshift{2ex}}
    \begin{snugshade}\begin{quote}\openquote}
      {\shadequoteauthor\quotefill\closequote{\yshift}\end{quote}\end{snugshade}}
\fi

% ---------------------------
% 5: parallel environment
%    Example:
%      \begin{Parallel}[v]{0.38\textwidth}{0.58\textwidth}
%        \litem{...}
%        \ritem{...}
%        \litem{...}
%        \ritem{...}
%      \end{Parallel}
\ifCKA@opt@useParallel
  \RequirePackage{parallel}
  \newcommand{\litem}[1]{\ParallelLText{\parindent=1em {#1}}}%
  \newcommand{\ritem}[1]{\ParallelRText{\parindent=1em {#1}} \ParallelPar}%
\fi

% ---------------------------
% 6: settings for the showcards layout.
%    Example:
%      \begin{Parallel}[v]{0.38\textwidth}{0.58\textwidth}
%        \litem{...}
%        \ritem{...}
%        \litem{...}
%        \ritem{...}
%      \end{Parallel}
\ifdefstring{\CKA@opt@layout}{showcards}{
  % Templagtes:
  % \inputflashcard{words.tex}
  % Words.Tex Templates:
  % \raiz{a}{without}{
  %   \entryroot{amoral}{neither moral nor inmoral}
  %   \entryroot{anonymous}{of unknown authorship or origin}
  %   \entryroot{atrophy}{the wasting away of body tissue}
  % }
  % \card{aberration}{straying away from what is normal}
  % \card{abet}{help, aid\\\blt Act as a complice\\\blt encourage smb(in doing wrong)}
  \RequirePackage[flashCard,boxed]{ticket}
  %\RequirePackage{syntonly}  %to test without output
  \RequirePackage{fancybox}
  \RequirePackage{pbox}
  % make your default ticket. \ticketdefault is somewhat like a background
  \newcommand{\inputflashcard}[1]{
    \GetFrontSide
    \input{#1}
    \GetBackSide
    \input{#1}
  }
  \renewcommand{\ticketdefault}{%no background
  }
  % now what do you like to put in your ticket
  \newcommand{\cardf}[2]{\ticket{%
    \put(32.5,15){\makebox[0mm]{{\parbox{58mm}{\centering\huge{\textbf{#1}}}}}}
  }}
  \newcommand{\figcardf}[2]{\cardf{#1}{}}
  \newcommand{\entryrootf}[2]{}
  \newcommand{\raizf}[3]{\ticket{%
    \put(2,31){{$\sqrt{\enspace}$}}
    \put(32.5,15){\makebox[0mm]{{\parbox{58mm}{\huge{\textit{{ #1 }}}}}}}
  }}
  \newcommand{\figcardb}[2]{\ticket{%
    \put(0.8,16.6){\parbox{58mm}{\includegraphics[width=63.4mm,height=33.6mm]{#2}}}%
  }}
  \newcommand{\cardb}[2]{\ticket{%
    \put(3,30){\parbox{58mm}{\large{\textbf{ #1:}}}}%
    \put(4,23){\parbox[t]{58mm} {\small {#2}}}%
  }}
  \newcommand{\entryrootb}[2]{
    \small{\textbf{#1 }}\textsf{\scriptsize{{#2}}}$\|$
  }
  \newcommand{\raizb}[3]{\ticket{%
    \put(3,30){\parbox{58mm}{\textbf{#1:} #2}}%
    \put(3,13){\parbox{58mm}{#3}}%
  }}
  \newcommand{\card}{\cardf}
  \newcommand{\figcard}{\figcardf}
  \newcommand{\entryroot}{\entryrootf}
  \newcommand{\raiz}{\raizf}
  
  \newcommand{\GetBackSide}{
    \backside%
    \oddsidemargin=8pt
    \renewcommand{\card}{\cardb}
    \renewcommand{\figcard}{\figcardb}
    \renewcommand{\entryroot}{\entryrootb}
    \renewcommand{\raiz}{\raizb}
  }
  \newcommand{\GetFrontSide}{
    \renewcommand{\card}{\cardf}
    \renewcommand{\figcard}{\figcardf}
    \renewcommand{\entryroot}{\entryrootf}
    \renewcommand{\raiz}{\raizf}
  }
  %puts a bullet on the word.
  \newcommand{\blt}{$\bullet$\enspace}
  %command for the synonyms
  \newcommand{\syn}[1]{
    \begin{center}
      \fbox{\parbox[t]{50mm}{\centering{#1}}}
    \end{center}
  }
  %command for the related words.
  \newcommand{\relwords}[1]{$\mathbf{\sim}$ #1}
  %command for the examples
  \newcommand{\example}[1]{\\[1.5mm]\textit{#1}}
}{}

% ---------------------------
% 7: settings for text related functions
%    Example:
%      \err: this part is error
%      \add: we add something
%      \unsure: this part is uncertain
%      \change: we change this part
\providecommand{\blank}{ {}\uline{ {} {} {} {} {} {} {} {} {} }{} }
\ifdefstring{\CKA@opt@textStyle}{default}{
  \providecommand{\err}[1]{\sout{#1}}
  \providecommand{\add}[1]{\uwave{#1}}
  \providecommand{\unsure}[1]{\dashuline{#1}}
}{
  \ifdefstring{\CKA@opt@textStyle}{color}{
    \providecommand{\err}[1]{\sout{\textcolor{DarkRed}{#1}}}
    \providecommand{\add}[1]{\uwave{\textcolor{Navy}{#1}}}
    \providecommand{\unsure}[1]{\dashuline{\textcolor{DarkGoldenrod}{#1}}}
  }{
    \ifdefstring{\CKA@opt@textStyle}{box}{
      \providecommand{\err}[1]{\fcolorbox{gray}{DarkRed}{\textcolor{white}{\sout{#1}}}}
      \providecommand{\add}[1]{\fcolorbox{gray}{Navy}{\textcolor{white}{#1}}}
      \providecommand{\unsure}[1]{\fcolorbox{gray}{DarkGoldenrod}{\textcolor{white}{#1}}}
    }{}
  }
}{}
\providecommand{\change}[2]{\add{#2}~\err{#1}}
