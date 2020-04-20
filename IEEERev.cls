%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cain King's Revised IEEE Template
% LaTeX Template
% -----------------------------------
% % Update statements:
% -----------------------------------
% % Version 1.1 (4/17/20)
%     - Adjust the settings for the figures.
%     - Add natbib to the class.
%     - Provide an explicit draft mode and an one-column mode.
%     - Provide an option for disabling the hyperref package.
%     - Remove useless options and packages.
% % Version 1.0 (4/28/17)
%     - Creating this template. Only support English now. If need, there 
%       will be some extensions in the future.
%
% -----------------------------------
% % Control options statements:
% -----------------------------------
% % ----------------------
% % Text Configuration
%  (It is highly recommended to master them. Use \ckesetup{} to
%   change them)
% %
%  stitle, sauthor  : [string], the short title and the short author names of 
%                     this report, which appears in  head and PDF metadata.
%  subject          : [string], the name of the class.
%  organization     : [string], the name of the organization/colledge/university.
%  version          : [string], the edition/version of this document, if left
%                       blank, it would be omitted.
%  ownerPass        : [string], password, if not provided, users could not edit
%                     this document.
%  userPass         : [string], password, if not provided, users could not open
%                     this document.
%                       - Noted that if ownerPass is not defined, this password 
%                         will not be effective!
%  codeStyle        : [default], the style of the code box, we have two modes:
%                       - box,  - default,  
%  repeatFrameTitle : [bool], let all frame which are divided by pagebreak remake
%                     their titles.
%  refNum           : [bool], let the title of bibtex is marked with the section
%                     number. This option is not a good choice when you have the
%                     appendices before the reference.
% % ----------------------
% % Basic Configuration
%  (Options influencing the style. Use them as \documentclass[...]{ECEHW}
%     because \ECEHWsetup will not work.)
%  (Noted that [] shows the default option.)
% %
%  color :   [false], make links, section titles and frames colored.
%  draft :   [false], enable the draft mode for IEEEtrans.
%  twocols:  [true], use two columns mode. The complementary option is onecol, it will
%                    make the paper arranged in one column.
%  hyper:    [true], enable the hyperref package ("noHyper" is the complementary option.)
%  fleqn:    [true], make eqations left-aligned.
%  mainfont: [Times], use different types of fontfamily. Here are avaliable options:
%              - Romande,  - Palatino,  - Times,  - Stix,  - Helvetica,  - Utopia.
% % ----------------------
% % Command & Environment
%  (C marks a command and E marks an environment.)
% %
% % \maketitle {C}
%   - Used to make a modified title.
% % \RITEsetup {C}
%   - Basic setup command of the control options.
% -----------------------------------
% % Publications:
% -----------------------------------
% Author:
% Cain King (cainmagi@gmail.com / cain.king@foxmail.com)
%
% License:
% MIT License
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{IEEERev}[2020/04/17 v1.1 Revised IEEE Class - Author: Yuchen Jin]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{ifthen, calc}
\SetupKeyvalOptions{family=RITE, prefix=RITE@opt@, setkeys=\kvsetkeys}

\DeclareBoolOption[false]{draft}
\DeclareComplementaryOption{final}{draft}
\DeclareBoolOption[true]{twocols}
\DeclareComplementaryOption{onecol}{twocols}
\DeclareBoolOption[false]{color}
\DeclareComplementaryOption{gray}{color}
\DeclareBoolOption[false]{repeatFrameTitle}
\DeclareBoolOption[true]{hyper}
\DeclareComplementaryOption{noHyper}{hyper}
\DeclareBoolOption[false]{refNum}
\DeclareComplementaryOption{noRefNum}{refNum}
\DeclareBoolOption[false]{fleqn}
\DeclareComplementaryOption{cteqn}{fleqn}

\DeclareStringOption[Bare Demo of IEEERev.cls]{stitle}[Bare Demo of IEEERev.cls]
\DeclareStringOption[Yuchen Jin]{sauthor}[Yuchen Jin]
\DeclareStringOption[ECE 6000]{subject}[ECE 6000]
\DeclareStringOption[University of Houston]{organization}[University of Houston]
\DeclareStringOption[]{version}[]

\DeclareStringOption[]{ownerPass}[]
\DeclareStringOption[]{userPass}[]

\DeclareStringOption[default]{codeStyle}[default]

\DeclareStringOption[Times]{mainfont}[Times]

\newcommand{\RITEsetup}[1]{
  \kvsetkeys{RITE}{#1}
  \ifRITE@opt@hyper
    \hypersetup{
      pdfauthor={\RITE@opt@sauthor},% 
      pdftitle={\RITE@opt@stitle},%
      pdfsubject={\RITE@opt@subject},%
      %pdfkeywords={}%
    }
  \fi
  \ifRITE@opt@repeatFrameTitle
      \mdfapptodefinestyle{theoremstyle}{
          repeatframetitle=true
      }
  \fi
  \ifthenelse{\equal{\RITE@opt@version}{}}{
    \renewcommand{\RITE@str@version}{}
  }{
    \renewcommand{\RITE@str@version}{\RITE@opt@version~Edition,~}
  }
  \ifthenelse{\equal{\RITE@opt@ownerPass}{}}{}{
    \ifthenelse{\equal{\RITE@opt@userPass}{}}{
      \special{pdf:encrypt ownerpw (\RITE@opt@ownerPass) length 128 perm 2052}
    }{
      \special{pdf:encrypt ownerpw (\RITE@opt@ownerPass) userpw (\RITE@opt@userPass) length 128 perm 2052}
    }
  }
  \ifdefstring{\RITE@opt@codeStyle}{box}{
    \lstset{
      numbers=left,
      frame=single,
      backgroundcolor=\color[RGB]{244,244,244},
      basicstyle={\footnotesize\ttfamily},
      keywordstyle=\bf\color[RGB]{0,0,176},
      identifierstyle=,
      commentstyle=\color[RGB]{0,176,0},
      stringstyle=\color[RGB]{176,0,0},
      tabsize=4,
      showstringspaces=false,
      breaklines=true, % automatically break the line
      xleftmargin=2em,
      literate=
        {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
        {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
        {à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
        {À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
        {ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
        {Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
        {â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
        {Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
        {œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
        {ű}{{\H{u}}}1 {Ű}{{\H{U}}}1 {ő}{{\H{o}}}1 {Ő}{{\H{O}}}1
        {ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
        {€}{{\EUR}}1 {£}{{\pounds}}1
    }
  }{
    \ifdefstring{\RITE@opt@codeStyle}{default}{
      \lstset{numbers=left,
        numberstyle= \tiny,
        basicstyle={\footnotesize\ttfamily},
        keywordstyle= \color{ blue!70},commentstyle=\color{red!50!green!50!blue!50},
        frame=shadowbox,
        xleftmargin=2em,
        rulesepcolor= \color{ red!20!green!20!blue!20},
        breaklines=true % automatically break the line
      }
    }
  }
  
  \ifthenelse{\equal{\RITE@str@version}{}}{
    \markboth{\MakeUppercase{\RITE@opt@organization,~\RITE@opt@subject,~\today}}%
      {\RITE@opt@sauthor~\MakeLowercase{\textit{et al.}}: \RITE@opt@stitle}
  }{
    \markboth{\MakeUppercase{\RITE@opt@organization,~\RITE@opt@subject},~\MakeLowercase{\RITE@str@version},~\MakeUppercase{\today}}%
      {\RITE@opt@sauthor~\MakeLowercase{\textit{et al.}}: \RITE@opt@stitle}
  }
  
  \title{
    \RITE@opt@stitle
  }
  \author{
    \RITE@opt@sauthor,~\IEEEmembership{Member,~IEEE}
  }
  
}

\DeclareDefaultOption{\relax}
\ProcessKeyvalOptions*\relax

\ifthenelse{\equal{\RITE@opt@version}{}}{
  \newcommand{\RITE@str@version}{}
}{
  \newcommand{\RITE@str@version}{\RITE@opt@version~Edition,~}
}

\ifRITE@opt@draft
  \PassOptionsToClass{draftcls}{IEEEtran}
\else
  \PassOptionsToClass{final}{IEEEtran} 
\fi
\ifRITE@opt@twocols
  \PassOptionsToClass{twoside}{IEEEtran}
\else
  \PassOptionsToClass{onecolumn,oneside}{IEEEtran} 
\fi
\LoadClass[journal,twoside,letterpaper]{IEEEtran} % Letter paper and 11pt font size

\RequirePackage{pdfpages} 

\newcommand\Loadedframemethod{TikZ}
\RequirePackage[framemethod=\Loadedframemethod]{mdframed}
\RequirePackage{tikz}
\usetikzlibrary{shadows}
\usetikzlibrary{calc,through,backgrounds}
\usetikzlibrary{matrix,positioning}
%Desssins geometriques
\usetikzlibrary{arrows}
\usetikzlibrary{shapes.geometric}
\usetikzlibrary{datavisualization}
\usetikzlibrary{automata} % LATEX and plain TEX
\usetikzlibrary{shapes.multipart}
\usetikzlibrary{decorations.pathmorphing} 
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\providecommand*{\algorithmautorefname}{Algorithm}

%\RequirePackage{pgfplots}
\ifRITE@opt@fleqn
  \PassOptionsToClass{fleqn}{amsmath}
\fi
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{ntheorem}
\RequirePackage{enumitem} % Customize lists %\RequirePackage{enumerate}
\setlist[enumerate]{label=(\arabic*)}
\RequirePackage{listings}
%\RequirePackage{minibox} 
%Ecriture arabe
\RequirePackage[OT1]{fontenc}
\ifthenelse{\equal{\RITE@opt@mainfont}{Palatino}}{
  \RequirePackage{mathpazo} % add possibly `sc` and `osf` options
  \RequirePackage{eulervm}
}{
  \ifthenelse{\equal{\RITE@opt@mainfont}{Romande}}{
    \RequirePackage{romande}
  }{
    \ifthenelse{\equal{\RITE@opt@mainfont}{Stix}}{
      \RequirePackage{stix}
    }{
      \ifthenelse{\equal{\RITE@opt@mainfont}{Helvetica}}{
        \RequirePackage{helvet}
        \renewcommand{\rmdefault}{phv}
      }{
        \ifthenelse{\equal{\RITE@opt@mainfont}{Utopia}}{
          \RequirePackage{fourier}
        }{
          \RequirePackage{newtxtext}
          %\RequirePackage{newtxmath}
        }
      }
    }
  }
}
\RequirePackage{multirow,dsfont}
\RequirePackage{xcolor}
\RequirePackage{tabularx,array}
\RequirePackage{bm}
\RequirePackage{float, subfigure}
\RequirePackage{multicol}
\RequirePackage[square,comma,sort&compress,numbers]{natbib} 

\providecommand*{\subfigureautorefname}{\figureautorefname}
\providecommand*{\subtableautorefname}{\tableautorefname}
\newcommand{\tIm}[1]{\mathrm{Im}\left\{ #1 \right\}}
\newcommand{\tRe}[1]{\mathrm{Re}\left\{ #1 \right\}}
\newcommand{\arccosh}{\cosh^{-1}}
\newcommand{\qED}{\rightline{$\square$}}

\ifthenelse{\equal{\RITE@opt@ownerPass}{}}{}{
  \ifthenelse{\equal{\RITE@opt@userPass}{}}{
    \special{pdf:encrypt ownerpw (\RITE@opt@ownerPass) length 128 perm 2052}
  }{
    \special{pdf:encrypt ownerpw (\RITE@opt@ownerPass) userpw (\RITE@opt@userPass) length 128 perm 2052}
  }
}

\ifRITE@opt@color
  \typeout{RITE: Color Mode Enabled.}
  \definecolor{DarkGreen}{RGB}{0,128,0}
  \definecolor{ECEviolet}{RGB}{100,16,86}
  \definecolor{ECEred}{RGB}{200,16,46}
  \definecolor{ECEgray}{RGB}{84,88,90}
  \definecolor{ECEsemiWhite}{RGB}{255,249,217}
  \definecolor{ECEwhite}{RGB}{255,255,255}
  \ifRITE@opt@hyper
    \PassOptionsToPackage{colorlinks,citecolor={DarkGreen}}{hyperref}
  \fi
\else
  \typeout{RITE: Gray Mode Enabled.}
  \ifRITE@opt@hyper
    \PassOptionsToPackage{hidelinks}{hyperref}
  \fi
\fi

\RequirePackage{ifpdf,ifxetex}
\ifRITE@opt@hyper
  \typeout{RITE: Hyperref Enabled.}
  \RequirePackage{hyperref}
  \renewcommand{\eqref}[1]{\hyperref[#1]{(\ref*{#1})}}
  \ifpdf
    \hypersetup{pdfcreator={pdfLaTeX}}
  \else
    \ifxetex
      \hypersetup{pdfcreator={xeLaTeX}}
    \else
      \hypersetup{pdfcreator={unknownLaTeX}}
    \fi
  \fi
  \hypersetup{pdfdisplaydoctitle={true}}
  \hypersetup{
    pdfauthor={\RITE@opt@sauthor},%
    pdftitle={\RITE@opt@stitle},%
    pdfsubject={\RITE@opt@subject},%
    %pdfkeywords={}%
  }
\else
  \typeout{RITE: Hyperref Disabled.}
  % Provide compatibility by using cleveref when hyperref is disabled
  \RequirePackage{cleveref}
  \providecommand{\autoref}{\Cref}
  \ifRITE@opt@color 
    \providecommand{\href}[2]{\textcolor{magenta}{#2}}
  \else
    \providecommand{\href}[2]{#2}
  \fi
\fi

\ifthenelse{\equal{\RITE@str@version}{}}{
  \markboth{\MakeUppercase{\RITE@opt@organization,~\RITE@opt@subject,~\today}}%
    {\RITE@opt@sauthor~\MakeLowercase{\textit{et al.}}: \RITE@opt@stitle}
}{
  \markboth{\MakeUppercase{\RITE@opt@organization,~\RITE@opt@subject},~\MakeLowercase{\RITE@str@version},~\MakeUppercase{\today}}%
    {\RITE@opt@sauthor~\MakeLowercase{\textit{et al.}}: \RITE@opt@stitle}
}

\linespread{1.2}

\setlength{\parskip}{1cm}
\setlength{\parindent}{1cm}
\tikzstyle{titregris} =
[draw=gray,fill=white, shading = exersicetitle, %
text=gray, rectangle, rounded corners, right,minimum height=.3cm]
\pgfdeclarehorizontalshading{exersicebackground}{100bp}
{color(0bp)=(green!40); color(100bp)=(black!5)}
\pgfdeclarehorizontalshading{exersicetitle}{100bp}
{color(0bp)=(red!40);color(100bp)=(black!5)}
\newcounter{exercise}
\renewcommand*\theexercise{exercice \textbf{Exercice}~n\arabic{exercise}}

\title{
  \RITE@opt@stitle
}
\author{
  \RITE@opt@sauthor,~\IEEEmembership{Member,~IEEE}
}

%================Graphic Settings====================
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
  \graphicspath{{Pics/}}
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
  \DeclareGraphicsExtensions{.pdf,.jpeg,.png}
\else
  \ifxetex
    \RequirePackage{graphicx}
  \else
    \RequirePackage[dvipdfmx]{graphicx}
    \RequirePackage{bmpsize}
  \fi
  \graphicspath{{Pics/}}
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
  \DeclareGraphicsExtensions{.eps}
\fi

%================Frame Style Definition====================
\ifdefstring{\RITE@opt@codeStyle}{box}{
  \lstset{
    numbers=left,
    frame=single,
    backgroundcolor=\color[RGB]{244,244,244},
    basicstyle={\footnotesize\ttfamily},
    keywordstyle=\bf\color[RGB]{0,0,176},
    identifierstyle=,
    commentstyle=\color[RGB]{0,176,0},
    stringstyle=\color[RGB]{176,0,0},
    tabsize=4,
    showstringspaces=false,
    breaklines=true, % automatically break the line
    xleftmargin=2em,
    literate=
      {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
      {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
      {à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
      {À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
      {ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
      {Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
      {â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
      {Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
      {œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
      {ű}{{\H{u}}}1 {Ű}{{\H{U}}}1 {ő}{{\H{o}}}1 {Ő}{{\H{O}}}1
      {ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
      {€}{{\EUR}}1 {£}{{\pounds}}1
  }
}
{
  \ifdefstring{\RITE@opt@codeStyle}{default}{
    \lstset{numbers=left,
      numberstyle= \tiny,
      basicstyle={\footnotesize\ttfamily},
      keywordstyle= \color{ blue!70},commentstyle=\color{red!50!green!50!blue!50},
      frame=shadowbox,
      xleftmargin=2em,
      rulesepcolor= \color{ red!20!green!20!blue!20},
      breaklines=true % automatically break the line
    }
  }
}

%%%%%%%%%

%================Frame Style Definition====================
%%%%%%%%%%%%%%%
\mdfdefinestyle{basicstyle}{%
    outerlinewidth=0.01em,linecolor=black,middlelinewidth=0.5pt,%
    %leftmargin = \parindent,%
    frametitlerule=true,roundcorner=2pt,%
    apptotikzsetting={\tikzset{mfframetitlebackground/.append style={%
                shade,left color=white, right color=blue!20}}},
    frametitlerulecolor=black,innertopmargin=1\baselineskip,%green!60,
    innerbottommargin=0.5\baselineskip,
    frametitlerulewidth=0.1pt,
    innertopmargin=0.7\topskip,skipabove={\dimexpr0.2\baselineskip+0.1\topskip\relax},
    frametitleaboveskip=1pt,
    frametitlebelowskip=1pt,
    everyline=true
}

\global\mdfdefinestyle{coloredsec}{%
    outerlinewidth=0.01em,linecolor=black,middlelinewidth=0.5pt,%
    roundcorner=2pt,%
    innerbottommargin=0.5\baselineskip,
    innertopmargin=0.7\topskip,
    skipabove=0pt, skipbelow=0pt
}

\ifRITE@opt@color
    \mdfdefinestyle{examplestyle}{
      style=basicstyle,% <------ previously defined style
      frametitlebackgroundcolor=ECEred,
      frametitlefont=\normalfont\bfseries\color{ECEsemiWhite},
      frametitlerulecolor=ECEred,
      linecolor=ECEred, backgroundcolor=ECEwhite,
      shadow=true, shadowsize=5pt
    }
    \mdfdefinestyle{theoremstyle}{
      style=basicstyle,% <------ previously defined style
      frametitlebackgroundcolor=ECEviolet,
      frametitlefont=\normalfont\bfseries\color{ECEsemiWhite},
      frametitlerulecolor=ECEviolet,
      linecolor=ECEviolet, backgroundcolor=ECEwhite,
      shadow=true, shadowsize=5pt
    }
\else
  \mdfdefinestyle{examplestyle}{
      style=basicstyle% <------ previously defined style
  }
  \mdfdefinestyle{theoremstyle}{
      style=basicstyle% <------ previously defined style
  }
\fi

\ifRITE@opt@repeatFrameTitle
  \mdfapptodefinestyle{examplestyle}{
    repeatframetitle=true
  }
  \mdfapptodefinestyle{theoremstyle}{
    repeatframetitle=true
  }
\fi

\setlength{\parskip}{0mm}
\setlength{\parindent}{10mm}

%================Theorem definition====================
\mdtheorem[style=examplestyle]{example}{\textbf{Example}}
\providecommand*{\exampleautorefname}{Example}
\mdtheorem[style=theoremstyle]{theorem}{\textbf{Theorem}}
\providecommand*{\theoremautorefname}{Theorem}

%================Liste definition--numList-and alphList=============
\newcounter{alphListCounter}
\newenvironment{alphList}
{\begin{list}
	{\alph{alphListCounter})}
	{\usecounter{alphListCounter}
		\setlength{\rightmargin}{0cm}
		\setlength{\leftmargin}{0.5cm}
		\setlength{\itemsep}{0.2cm}
		\setlength{\partopsep}{0cm}
		\setlength{\parsep}{0cm}}
}
{\end{list}}
\newcounter{numListCounter}
\newenvironment{numList}
{\begin{list}
	{\arabic{numListCounter})}
	{\usecounter{numListCounter}
		\setlength{\rightmargin}{0cm}
		\setlength{\leftmargin}{0.5cm}
		\setlength{\itemsep}{0cm}
		\setlength{\partopsep}{0cm}
		\setlength{\parsep}{0cm}}
}
{\end{list}}
%===========================================================

\makeatletter

\renewcommand\normalsize{%
    \@setfontsize\normalsize\@xpt\@xiipt
    \abovedisplayskip 1\p@ \@plus2\p@ \@minus5\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
    \belowdisplayskip 10\p@ \@plus2\p@ \@minus5\p@
    \let\@listi\@listI}

\renewcommand{\thebibliography}[1]
  {\ifRITE@opt@refNum
      \section{\refname}%
    \else
      \section*{\refname}%
      \addcontentsline{toc}{section}{\refname}%
    \fi
    % V1.6 add some rubber space here and provide a command trigger
    \footnotesize\vskip 0.3\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip%
    \list{\@biblabel{\@arabic\c@enumiv}}%
    {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep\relax
    \itemsep \IEEEbibitemsep\relax
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \let\@IEEElatexbibitem\bibitem%
    \def\bibitem{\@IEEEbibitemprefix\@IEEElatexbibitem}%
    \def\newblock{\hskip .11em plus .33em minus .07em}%
    % originally:
    %   \sloppy\clubpenalty4000\widowpenalty4000%
    % by adding the \interlinepenalty here, we make it more
    % difficult, but not impossible, for LaTeX to break within a reference.
    % The IEEE almost never breaks a reference (but they do it more often with
    % technotes). You may get an underfull vbox warning around the bibliography, 
    % but the final result will be much more like what the IEEE will publish. 
    % MDS 11/2000
    \ifCLASSOPTIONtechnote\sloppy\clubpenalty4000\widowpenalty4000\interlinepenalty100%
    \else\sloppy\clubpenalty4000\widowpenalty4000\interlinepenalty500\fi%
        \sfcode`\.=1000\relax
  }

\AtBeginDocument{%
  \newcommand*{\original@ref}{}%
  \newcommand*{\original@autoref}{}%
  \let\original@ref\ref
  \let\original@autoref\autoref
  \renewcommand*{\ref}{%
    \normalfont\original@ref
  }%
  \renewcommand*{\autoref}{%
    \normalfont\original@autoref
  }%
}

\makeatother