%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cain King's ECE Homework Template
% LaTeX Template
% -----------------------------------
% % Update statements:
% -----------------------------------
% % Version 1.3 (3/19/20)
%     - Add two environments: theorem and solution.
%     - Add the natbib package.
%     - Make some adjustments for removing useless features.
%     - We are planning to support Chinese by a package rather
%       than adding feature to this class.
% % Version 1.2 (9/1/17)
%     - Introduce the font option.
%     - Adjust the vertical skip between texts and formulas.
%     - Add reference reformation option.
% % Version 1.1 (8/30/17)
%     - Introduce color sequence which would make this template more impressive.
%     - Provide hyperref extensions.
%     - Provide encryption options.
%     - Adjust the format of the section.
% % Version 1.0 (8/29/17)
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
%  title            : [string], the whole title of this homework.
%  author           : [string], the name of the author of this document.
%  subject          : [string], the name of the class.
%  organization     : [string], the name of the organization/colledge/university.
%  version          : [string], the edition/version of this document, if left
%                     blank, it would be omitted.
%  ownerPass        : [string], password, if not provided, users could not edit
%                     this document.
%  userPass         : [string], password, if not provided, users could not open
%                     this document.
%                       - Noted that if ownerPass is not defined, this password 
%                         will not be effective!
%  repeatFrameTitle : [bool], let all frame which are divided by pagebreak remake
%                     their titles.
%  refNum           : [bool], let the title of bibtex is marked with the section
%                     number
% % ----------------------
% % Basic Configuration
%  (Options influencing the style. Use them as \documentclass[...]{ECEHW}
%     because \ECEHWsetup will not work.)
%  (Noted that [] shows the default option.)
% %
%  color :   [false], make links, section titles and frames colored.
%  mainfont: [Romande], use different types of fontfamily. Here are avaliable options:
%              - Romande,  - Palatino,  - Times,  - Stix,  - Helvetica,  - Utopia.
%  fleqn:    [true], make eqations left-aligned.
% % ----------------------
% % Command & Environment
%  (C marks a command and E marks an environment.)
% %
% % \maketitle {C}
%   - Used to make a modified title.
% % \ECEHWsetup {C}
%   - Basic setup command of the control options.
% -----------------------------------
% % Publications:
% -----------------------------------
% Author:
% Cain King (cainmagi@gmail.com / cain.king@foxmail.com)
%
% License:
% MIT License.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ECEHW}[2017/08/29 v1.0 ECE Assignment/Homework Class - Author: Yuchen Jin]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{ifthen, calc}
\SetupKeyvalOptions{family=ECEHW, prefix=ECEHW@opt@, setkeys=\kvsetkeys}

\DeclareBoolOption[false]{draft}
\DeclareBoolOption[false]{color}
\DeclareComplementaryOption{gray}{color}
\DeclareBoolOption[false]{Chinese}
\DeclareComplementaryOption{deChinese}{Chinese}
\DeclareBoolOption[true]{repeatFrameTitle}
\DeclareBoolOption[true]{autoSetHyperref}
\DeclareBoolOption[false]{refNum}
\DeclareComplementaryOption{deRefNum}{refNum}
\DeclareBoolOption[true]{fleqn}
\DeclareComplementaryOption{cteqn}{fleqn}

\DeclareStringOption[\textbf{Homework 0:}~Template]{title}[\textbf{Homework 0:}~Template]
\DeclareStringOption[Yuchen Jin]{author}[Yuchen Jin]
\DeclareStringOption[ECE 6000]{subject}[ECE 6000]
\DeclareStringOption[University of Houston]{organization}[University of Houston]
\DeclareStringOption[]{version}[]

\DeclareStringOption[]{ownerPass}[]
\DeclareStringOption[]{userPass}[]

\DeclareStringOption[default]{codeStyle}[default]

\DeclareStringOption[Romande]{mainfont}[Romande]

\newcommand{\ECEHWsetup}[1]{
  \kvsetkeys{ECEHW}{#1}
  \ifECEHW@opt@autoSetHyperref
    \hypersetup{
      pdfauthor={\ECEHW@opt@author},% 
      pdftitle={\ECEHW@opt@title},%
      pdfsubject={\ECEHW@opt@subject},%
      %pdfkeywords={}%
    }
  \fi
  \ifECEHW@opt@repeatFrameTitle
      \mdfapptodefinestyle{theoremstyle}{
          repeatframetitle=true
      }
      \mdfapptodefinestyle{exercisestyle}{
        repeatframetitle=true
      }
  \fi
  \ifthenelse{\equal{\ECEHW@opt@version}{}}{
    \renewcommand{\ECEHW@str@version}{}
  }{
    \renewcommand{\ECEHW@str@version}{\ECEHW@opt@version~Edition,~}
  }
  \ifthenelse{\equal{\ECEHW@opt@ownerPass}{}}{}{
    \ifthenelse{\equal{\ECEHW@opt@userPass}{}}{
      \special{pdf:encrypt ownerpw (\ECEHW@opt@ownerPass) length 128 perm 2052}
    }{
      \special{pdf:encrypt ownerpw (\ECEHW@opt@ownerPass) userpw (\ECEHW@opt@userPass) length 128 perm 2052}
    }
  }
  \ifECEHW@opt@refNum
    \renewcommand{\ECEHW@str@reftitle}{\section{\refname}}
  \else
    \renewcommand{\ECEHW@str@reftitle}{\vspace{2.5em} \section*{\refname}}
  \fi
  \ifdefstring{\ECEHW@opt@codeStyle}{box}{
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
      breaklines=true, % automatic breaking the line if a line is too long.
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
    \ifdefstring{\ECEHW@opt@codeStyle}{default}{
      \lstset{numbers=left,
        numberstyle= \tiny,
        basicstyle={\footnotesize\ttfamily},
        keywordstyle= \color{ blue!70},commentstyle=\color{red!50!green!50!blue!50},
        frame=shadowbox,
        xleftmargin=2em,
        rulesepcolor= \color{ red!20!green!20!blue!20},
        breaklines=true % automatic breaking the line if a line is too long.
      }
    }
  }
}

\DeclareDefaultOption{\relax}
\ProcessKeyvalOptions*\relax

\ifthenelse{\equal{\ECEHW@opt@version}{}}{
  \newcommand{\ECEHW@str@version}{}
}{
  \newcommand{\ECEHW@str@version}{\ECEHW@opt@version~Edition,~}
}

\LoadClass[letterpaper, 10pt]{article} % A4 paper and 11pt font size

\RequirePackage[letterpaper, left=2cm, right=2cm, top=0.9in, bottom=0.9in, heightrounded]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{fancybox}
\RequirePackage{pdfpages} 
\renewcommand{\headrulewidth}{1.5pt}
\renewcommand{\footrulewidth}{1.5pt}
\pagestyle{fancy}
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
%\RequirePackage{pgfplots}
\ifECEHW@opt@fleqn
    \RequirePackage[fleqn]{amsmath}
\else
    \RequirePackage{amsmath}
\fi
\RequirePackage{amssymb}
\RequirePackage{mfirstuc}
\RequirePackage{amsbsy}
\RequirePackage{bbding}
\RequirePackage{dsfont}
\RequirePackage{textcomp}
\RequirePackage{wasysym}
\RequirePackage{enumitem} % Customize lists %\RequirePackage{enumerate}
\setlist[enumerate]{label=(\arabic*)}
\RequirePackage{titletoc}
\RequirePackage{mathpazo}
\RequirePackage[square,comma,sort&compress,numbers]{natbib} 
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\providecommand*{\algorithmautorefname}{Algorithm}
\RequirePackage{listings}
\RequirePackage{float}
\RequirePackage{subfigure}
%\RequirePackage{minibox} 
%Ecriture arabe
\RequirePackage[T1]{fontenc}
\ifthenelse{\equal{\ECEHW@opt@mainfont}{Palatino}}{
  \RequirePackage{mathpazo} % add possibly `sc` and `osf` options
  \RequirePackage{eulervm}
}{
  \ifthenelse{\equal{\ECEHW@opt@mainfont}{Times}}{
    \RequirePackage{newtxtext}
    %\RequirePackage{newtxmath}
  }{
    \ifthenelse{\equal{\ECEHW@opt@mainfont}{Stix}}{
      \RequirePackage{stix}
    }{
      \ifthenelse{\equal{\ECEHW@opt@mainfont}{Helvetica}}{
        \RequirePackage{helvet}
        \renewcommand{\rmdefault}{phv}
      }{
        \ifthenelse{\equal{\ECEHW@opt@mainfont}{Utopia}}{
          \RequirePackage[utopia]{mathdesign}
        }{
          \RequirePackage{romande}
        }
      }
    }
  }
}

\RequirePackage{multirow,multicol}
\RequirePackage{xcolor}
\RequirePackage{tabularx,array}

\ifthenelse{\equal{\ECEHW@opt@ownerPass}{}}{}{
  \ifthenelse{\equal{\ECEHW@opt@userPass}{}}{
    \special{pdf:encrypt ownerpw (\ECEHW@opt@ownerPass) length 128 perm 2052}
  }{
    \special{pdf:encrypt ownerpw (\ECEHW@opt@ownerPass) userpw (\ECEHW@opt@userPass) length 128 perm 2052}
  }
}

\ifECEHW@opt@color
  \typeout{ECEHW: Color Mode Enabled.}
  \RequirePackage[colorlinks]{hyperref}
  \definecolor{DarkGreen}{RGB}{0,128,0}
  \definecolor{ECEred}{RGB}{200,16,46}
  \definecolor{ECEgray}{RGB}{84,88,90}
  \definecolor{ECEsemiWhite}{RGB}{255,249,217}
  \definecolor{ECEwhite}{RGB}{255,255,255}
  \hypersetup{citecolor={DarkGreen}}
\else
  \typeout{ECEHW: Gray Mode Enabled.}
  \RequirePackage[hidelinks]{hyperref}
\fi

\renewcommand{\eqref}[1]{\hyperref[#1]{(\ref*{#1})}}
\hypersetup{pdfdisplaydoctitle={true}}

\ifpdf
  \hypersetup{pdfcreator={pdfLaTeX}}
\else
  \ifxetex
    \hypersetup{pdfcreator={xeLaTeX}}
  \else
    \hypersetup{pdfcreator={unknownLaTeX}}
  \fi
\fi

\hypersetup{
  pdfauthor={\ECEHW@opt@author},%
  pdftitle={\ECEHW@opt@title},%
  pdfsubject={\ECEHW@opt@subject},%
  %pdfkeywords={}%
}

\lhead{
	\textbf{\ECEHW@opt@organization}
}
\rhead{\textbf{\ECEHW@opt@subject}
}
\chead{\textbf{
		\ECEHW@opt@author
}}

\linespread{1.2}

\lfoot{}
\cfoot{\textbf{\textsf{\today}}}
\rfoot{\textsf{\thepage}}
%================================
%================================

%\setlength{\parskip}{1cm}
%\setlength{\parindent}{1cm}
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
    \ECEHW@opt@title
}

%================Graphic Settings====================
\RequirePackage{ifpdf, ifxetex}
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
  \graphicspath{{Pics/}}
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
  \DeclareGraphicsExtensions{.pdf,.jpeg,.png,.jpg}
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
  \DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png,.jpg}
\fi

%================Frame Style Definition====================
\ifdefstring{\ECEHW@opt@codeStyle}{box}{
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
    breaklines=true, %对过长的代码自动换行
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
  \ifdefstring{\ECEHW@opt@codeStyle}{default}{
    \lstset{numbers=left,
      numberstyle= \tiny,
      basicstyle={\footnotesize\ttfamily},
      keywordstyle= \color{ blue!70},commentstyle=\color{red!50!green!50!blue!50},
      frame=shadowbox,
      xleftmargin=2em,
      rulesepcolor= \color{ red!20!green!20!blue!20},
      breaklines=true %对过长的代码自动换行
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

%================Custom section====================
\RequirePackage[explicit]{titlesec}
\newcommand*\sectionlabel{}
\ifECEHW@opt@color
  \titleformat{\section}
    {\gdef\sectionlabel{}
     \normalfont\Large\bfseries}
    {\gdef\sectionlabel{\thesection\ }}{0pt}
    {\begin{mdframed}[style=coloredsec] \noindent \color{ECEwhite} \sectionlabel#1 \end{mdframed}}
\else
  \titleformat{\section}
    {\gdef\sectionlabel{}
     \normalfont\Large\bfseries}
    {\gdef\sectionlabel{\thesection\ }}{0pt}
    {\begin{mdframed}[style=coloredsec] \noindent \sectionlabel#1 \end{mdframed}}
\fi
\titlespacing{\section}
    {0pt}{-2em}{-2em}
\titleformat{\subsection}[hang]{\large \bfseries}
    {\thesubsection.}{1em}{#1}
\titlespacing{\subsection}%
    {1em}{1.5ex plus .1ex minus .2ex}{\wordsep}
\titleformat{\subsubsection}[hang]{\normalsize\bfseries\itshape}
    {\thesubsubsection.}{1em}{#1}
\titlespacing{\subsubsection}%
    {2em}{1.5ex plus .1ex minus .2ex}{\wordsep}
\titleformat{\paragraph}[hang]{\normalsize \itshape}
    {\theparagraph.}{1em}{#1}
\titlespacing{\paragraph}%
    {3em}{1.5ex plus .1ex minus .2ex}{\wordsep}

\ifECEHW@opt@color
  \mdfdefinestyle{theoremstyle}{
    style=basicstyle,
    frametitlebackgroundcolor=ECEgray,
    frametitlefont=\normalfont\bfseries\color{ECEsemiWhite},
    frametitlerulecolor=ECEgray,
    linecolor=ECEgray, backgroundcolor=ECEwhite,
    shadow=true, shadowsize=5pt
  }
  \mdfdefinestyle{exercisestyle}{%
    style=basicstyle,% <------ previously defined style
    frametitlebackgroundcolor=ECEred,
    frametitlefont=\normalfont\bfseries\color{ECEsemiWhite},
    frametitlerulecolor=ECEred,
    linecolor=ECEred, backgroundcolor=ECEwhite,
    shadow=true, shadowsize=5pt
  }
  \global\mdfdefinestyle{coloredtitle}{%
    linecolor=ECEred, middlelinewidth=3pt,%
    backgroundcolor = ECEred,
    shadow=true, shadowsize=6pt
  }
  \mdfapptodefinestyle{coloredsec}{
    linecolor=ECEgray, middlelinewidth=3pt,%
    backgroundcolor = ECEgray,
    shadow=true, shadowsize=6pt
  }
  \newcommand{\ECEHW@str@solutionname}[1]{\noindent \textcolor{ECEred}{#1:}}
\else
  \mdfdefinestyle{theoremstyle}{
    style=basicstyle
  }
  \mdfdefinestyle{exercisestyle}{
    style=basicstyle
  }
  \newcommand{\ECEHW@str@solutionname}[1]{\noindent #1}
\fi

\ifECEHW@opt@repeatFrameTitle
  \mdfapptodefinestyle{theoremstyle}{
    repeatframetitle=true
  }
  \mdfapptodefinestyle{exercisestyle}{
    repeatframetitle=true
  }
\fi

\newcommand{\qED}{\rightline{$\square$}}

\newenvironment{solution}[1][solution]{
  \ifstrequal{#1}{proof}{
    \def\ECEHW@str@solution@end{\qED}
  }{
    \def\ECEHW@str@solution@end{}
  }
  \ECEHW@str@solutionname{\capitalisewords{#1}}
}{
  \ECEHW@str@solution@end
}

%\setlength{\parskip}{0mm}
%\setlength{\parindent}{10mm}

%================Theorem definition====================
\mdtheorem[style=exercisestyle]{exercise}{\textbf{Exercice}}
\providecommand*{\exerciseautorefname}{Exercise}
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

\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{fancy}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

\def\@maketitle{%
 \setcounter{page}{1}
 \newpage
  \null
  \vskip 0em
 \ifECEHW@opt@color
    \let \footnote \thanks
    \begin{mdframed}[style=coloredtitle]
      \IfFileExists{ece-logo.eps}{
        \begin{tabular}{m{1.2in}<{\centering} m{\textwidth - 1.6in}}
        \begin{minipage}[c]{1in}
          \includegraphics[width=1in,draft=false]{ece-logo.eps}
        \end{minipage}
        &
        \begin{minipage}[t]{\textwidth - 1.7in}
          \begin{flushright}
            \color{ECEsemiWhite} {\large \textsc{\@title}} \\[1em]
            \color{ECEwhite} \large \ECEHW@str@version\@date
          \end{flushright}
        \end{minipage}
        \end{tabular}
      }{
        \vskip 1em%
        \begin{flushright}
          \color{ECEsemiWhite} {\large \textsc{\@title}} \\[1em]
          \color{ECEwhite} \large \ECEHW@str@version\@date
        \end{flushright}
        \vspace{0.6em}
      }
    \end{mdframed}
 \else
   \begin{center}%
     \let \footnote \thanks
     {\large \textsc{\@title} \par}%
     \vskip 1.5em%
     {\large \ECEHW@str@version\@date \par}%
     \vskip 1em%
   \end{center}%
   \par
   \vskip 1.5em
 \fi
}

\ifECEHW@opt@refNum
  \newcommand{\ECEHW@str@reftitle}{\section{\refname}}
\else
  \newcommand{\ECEHW@str@reftitle}{\vspace{2.5em} \section*{\refname}}
\fi

\renewenvironment{thebibliography}[1]
  {\ECEHW@str@reftitle%
    \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
    \list{\@biblabel{\@arabic\c@enumiv}}%
    {\settowidth\labelwidth{\@biblabel{#1}}%
      \leftmargin\labelwidth
      \advance\leftmargin\labelsep
      \@openbib@code
      \usecounter{enumiv}%
      \let\p@enumiv\@empty
      \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \sfcode`\.\@m
  }

\makeatother