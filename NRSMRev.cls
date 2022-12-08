%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CainMagi's Revised NRSM-IEEE Template
% LaTeX Template
% -----------------------------------
% % Update statements:
% -----------------------------------
% % Version 2.0.0 (12/8/20)
%     - Upgrade the NRSM template to the 2022 version.
% % Version 1.10 (3/19/20)
%     - Remove useless features.
%     - Adjust the draft mode.
% % Version 1.05 (9/17/18)
%     - Enable users to disable all links by "nohyper" option (enabled as
%       default settings).
% % Version 1.0 (9/15/18)
%     - Creating this template.
% % 
%
% -----------------------------------
% % Control options statements:
% -----------------------------------
% % ----------------------
% % Text Configuration
%  (It is highly recommended to master them. Use \NRSMsetup{} to
%   change them)
% %
%  stitle, sauthor  : [string], the short title and the short author names of 
%                     this report, which appears in head and PDF metadata.
%  subject          : [string], the subject would appear in the pdf macros.
%  ownerPass        : [string], password, if not provided, users could not edit
%                     this document.
%  userPass         : [string], password, if not provided, users could not open
%                     this document.
%                       - Noted that if ownerPass is not defined, this password 
%                         will not be effective!
%  codeStyle        : [default], the style of the code box, we have two modes:
%                       - box,  - default,  
%  refNum           : [bool], let the title of bibtex is marked with the section
%                     number
%  nohyper          : [bool][true], disable all links and bookmarks ("hyper" is 
%                     the complementary option.)
% % ----------------------
% % Basic Configuration
%  (Options influencing the style. Use them as \documentclass[...]{NRSM}
%     because \NRSMsetup will not work.)
%  (Noted that [] shows the default option.)
% %
%  color :   [false], make links, section titles and frames colored.
%  draft :   [false], enable the draft mode for IEEEtrans.
%  fleqn :   [false], make equations aligned left. ("cteqn" is the complementary 
%                     option.)
% % ----------------------
% % Command & Environment
%  (C marks a command and E marks an environment.)
% %
% % \maketitle {C}
%   - Used to make a modified title.
% % \NRSMsetup {C}
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
% ----------------------------------------------------
% Note that the following parts are 
% heritaged from original NRSM 2022 template.
% ----------------------------------------------------
%
% This template is based on bare_conf.tex, V1.3, Michael Shell
% The major change for AP-S/URSI 2021 is that authors are listed
% on a single line with affiliations below.
%
% ----------------------------------------------------
% Note that the following parts are 
% heritaged from IEEEtran Template!
% ----------------------------------------------------
%% bare_conf.tex
%% V1.3
%% 2007/01/11
%% by Michael Shell
%% See:
%% http://www.michaelshell.org/
%% for current contact information.
%%
%% This is a skeleton file demonstrating the use of IEEEtran.cls
%% (requires IEEEtran.cls version 1.7 or later) with an IEEE conference paper.
%%
%% Support sites:
%% http://www.michaelshell.org/tex/ieeetran/
%% http://www.ctan.org/tex-archive/macros/latex/contrib/IEEEtran/
%% and
%% http://www.ieee.org/

%%*************************************************************************
%% Legal Notice:
%% This code is offered as-is without any warranty either expressed or
%% implied; without even the implied warranty of MERCHANTABILITY or
%% FITNESS FOR A PARTICULAR PURPOSE!
%% User assumes all risk.
%% In no event shall IEEE or any contributor to this code be liable for
%% any damages or losses, including, but not limited to, incidental,
%% consequential, or any other damages, resulting from the use or misuse
%% of any information contained here.
%%
%% All comments are the opinions of their respective authors and are not
%% necessarily endorsed by the IEEE.
%%
%% This work is distributed under the LaTeX Project Public License (LPPL)
%% ( http://www.latex-project.org/ ) version 1.3, and may be freely used,
%% distributed and modified. A copy of the LPPL, version 1.3, is included
%% in the base LaTeX documentation of all distributions of LaTeX released
%% 2003/12/01 or later.
%% Retain all contribution notices and credits.
%% ** Modified files should be clearly indicated as such, including  **
%% ** renaming them and changing author support contact information. **
%%
%% File list of work: IEEEtran.cls, IEEEtran_HOWTO.pdf, bare_adv.tex,
%%                    bare_conf.tex, bare_jrnl.tex, bare_jrnl_compsoc.tex
%%*************************************************************************
%
% *** Authors should verify (and, if needed, correct) their LaTeX system  ***
% *** with the testflow diagnostic prior to trusting their LaTeX platform ***
% *** with production work. IEEE's font choices can trigger bugs that do  ***
% *** not appear when using other class files.                            ***
% The testflow support page is at:
% http://www.michaelshell.org/tex/testflow/
%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{NRSMRev}[2022/12/08 v2.0.0 Revised NRSM Class - Author: Yuchen Jin]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{ifthen, calc}
\RequirePackage{ifpdf, ifxetex}
\SetupKeyvalOptions{family=NRSM, prefix=NRSM@opt@, setkeys=\kvsetkeys}

\DeclareBoolOption[false]{draft}
\DeclareBoolOption[false]{color}
\DeclareComplementaryOption{gray}{color}
\DeclareBoolOption[false]{refNum}
\DeclareComplementaryOption{norefNum}{refNum}
\DeclareBoolOption[false]{fleqn}
\DeclareComplementaryOption{cteqn}{fleqn}
\DeclareBoolOption[true]{nohyper}
\DeclareComplementaryOption{hyper}{nohyper}

\DeclareStringOption[Bare Demo of IEEERev.cls]{stitle}[Bare Demo of IEEERev.cls]
\DeclareStringOption[Yuchen Jin]{sauthor}[Yuchen Jin]
\DeclareStringOption[USNC-URSI National Radio Science Meeting]{subject}[USNC-URSI National Radio Science Meeting]

\DeclareStringOption[]{ownerPass}[]
\DeclareStringOption[]{userPass}[]

\DeclareStringOption[default]{codeStyle}[default]

\newcommand{\NRSMsetup}[1]{
  \kvsetkeys{NRSM}{#1}
  \hypersetup{
    pdfauthor={\NRSM@opt@sauthor},% 
    pdftitle={\NRSM@opt@stitle},%
    pdfsubject={\NRSM@opt@subject},%
    %pdfkeywords={}%
  }
  \ifNRSM@opt@nohyper
    \hypersetup{
      nolinks=true
    }
    \renewcommand{\email}[1]{\texttt{##1}}
  \else
    \ifNRSM@opt@draft
      \hypersetup{
        nolinks=true
      }
    \else
      \hypersetup{
        nolinks=false
      }
    \fi
    \renewcommand{\email}[1]{\href{mailto:##1}{\texttt{##1}}}
  \fi
  \ifthenelse{\equal{\NRSM@opt@ownerPass}{}}{}{
    \ifthenelse{\equal{\NRSM@opt@userPass}{}}{
      \special{pdf:encrypt ownerpw (\NRSM@opt@ownerPass) length 128 perm 2052}
    }{
      \special{pdf:encrypt ownerpw (\NRSM@opt@ownerPass) userpw (\NRSM@opt@userPass) length 128 perm 2052}
    }
  }
  \ifdefstring{\NRSM@opt@codeStyle}{box}{
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
    \ifdefstring{\NRSM@opt@codeStyle}{default}{
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

  \title{
    \NRSM@opt@stitle
  }
}

\DeclareDefaultOption{
  \PassOptionsToClass{\CurrentOption}{IEEEtran}
}
\ProcessKeyvalOptions*\relax

% Note that the a4paper option is mainly intended so that authors in
% countries using A4 can easily print to A4 and see how their papers will
% look in print - the typesetting of the document will not typically be
% affected with changes in paper size (but the bottom and side margins will).
% Use the testflow package mentioned above to verify correct handling of
% both paper sizes by the user's LaTeX system.
%
% Also note that the "draftcls" or "draftclsnofoot", not "draft", option
% should be used if it is desired that the figures are to be displayed in
% draft mode.
%
% Load the class and the UH thesis package.
%
\ifNRSM@opt@draft
  \PassOptionsToClass{draftcls}{IEEEtran}
\fi
\LoadClass[conference,10pt]{IEEEtran}
 % Conf. paper and 10pt font size
% Add the compsoc option for Computer Society conferences.
%
% If IEEEtran.cls has not been installed into the LaTeX system files,
% manually specify the path to it like:
% \documentclass[conference]{../sty/IEEEtran}

%%***************************************
%% Require Packages ...
%%***************************************

% *** Use AMS MATH PACKAGES ***
\ifNRSM@opt@fleqn
  \RequirePackage[cmex10,fleqn]{amsmath}
\else
  \RequirePackage[cmex10]{amsmath}
\fi
\RequirePackage{amssymb,amsbsy}
\RequirePackage{dsfont,bm}
% amsmath provides an AMS math environment which would be necessary for most
% tex works. amssymb and dsfont would provide extra icons and symbols.
% A popular package from the American Mathematical Society that provides
% many useful and powerful commands for dealing with mathematics. If using
% it, be sure to load this package with the cmex10 option to ensure that
% only type 1 fonts will utilized at all point sizes. Without this option,
% it is possible that some math symbols, particularly those within
% footnotes, will be rendered in bitmap form which will result in a
% document that can not be IEEE Xplore compliant!
%
% Also, note that the amsmath package sets \interdisplaylinepenalty to 10000
% thus preventing page breaks from occurring within multiline equations. Use:
%\interdisplaylinepenalty=2500
% after loading amsmath to restore such page breaks as IEEEtran.cls normally
% does. amsmath.sty is already installed on most LaTeX systems. The latest
% version and documentation can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/required/amslatex/math/

%================Graphic Settings====================
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
  \graphicspath{{pics}}
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
  \graphicspath{{pics}}
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
  \DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png,.jpg}
\fi
% graphicx was written by David Carlisle and Sebastian Rahtz. It is
% required if you want graphics, photos, etc. graphicx.sty is already
% installed on most LaTeX systems. The latest version and documentation can
% be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/required/graphics/
% Another good source of documentation is "Using Imported Graphics in
% LaTeX2e" by Keith Reckdahl which can be found as epslatex.ps or
% epslatex.pdf at: http://www.ctan.org/tex-archive/info/
%
% latex, and pdflatex in dvi mode, support graphics in encapsulated
% postscript (.eps) format. pdflatex in pdf mode supports graphics
% in .pdf, .jpeg, .png and .mps (metapost) formats. Users should ensure
% that all non-photo figures use a vector format (.eps, .pdf, .mps) and
% not a bitmapped formats (.jpeg, .png). IEEE frowns on bitmapped formats
% which can result in "jaggedy"/blurry rendering of lines and letters as
% well as large increases in file sizes.
%
% You can find documentation about the pdfTeX application at:
% http://www.tug.org/applications/pdftex

% *** Use ALIGNMENT PACKAGES ***
\RequirePackage{multirow, tabularx, array}
% multirow and tabularx are used to provide enhanced tables which could 
% be divided along the pages.
% Frank Mittelbach's and David Carlisle's array.sty patches and improves
% the standard LaTeX2e array and tabular environments to provide better
% appearance and additional user controls. As the default LaTeX2e table
% generation code is lacking to the point of almost being broken with
% respect to the quality of the end results, all users are strongly
% advised to use an enhanced (at the very least that provided by array.sty)
% set of table tools. array.sty is already installed on most systems. The
% latest version and documentation can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/required/tools/

% *** Use XColor PACKAGES ***
\RequirePackage[svgnames]{xcolor}
% An improvement compared to color package, which enables users to use 
% SVG colors, high-level color commands and more color sets

% *** Use FLOAT PACKAGES ***
\RequirePackage{float}
\RequirePackage[font=footnotesize,caption=false]{subfig}
% subfigure.sty was written by Steven Douglas Cochran. This package makes it
% easy to put subfigures in your figures. e.g., "Figure 1a and 1b". For IEEE
% work, it is a good idea to load it with the tight package option to reduce
% the amount of white space around the subfigures. subfigure.sty is already
% installed on most LaTeX systems. The latest version and documentation can
% be obtained at:
% http://www.ctan.org/tex-archive/obsolete/macros/latex/contrib/subfigure/
% subfigure.sty has been superceeded by subfig.sty.
\RequirePackage{stfloats}
% stfloats.sty was written by Sigitas Tolusis. This package gives LaTeX2e
% the ability to do double column floats at the bottom of the page as well
% as the top. (e.g., "\begin{figure*}[!b]" is not normally possible in
% LaTeX2e). It also provides a command:
%\fnbelowfloat
% to enable the placement of footnotes below bottom floats (the standard
% LaTeX2e kernel puts them above bottom floats). This is an invasive package
% which rewrites many portions of the LaTeX2e float routines. It may not work
% with other packages that modify the LaTeX2e float routines. The latest
% version and documentation can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/sttools/
% Documentation is contained in the stfloats.sty comments as well as in the
% presfull.pdf file. Do not use the stfloats baselinefloat ability as IEEE
% does not allow \baselineskip to stretch. Authors submitting work to the
% IEEE should note that IEEE rarely uses double column equations and
% that authors should try to avoid such use. Do not be tempted to use the
% cuted.sty or midfloat.sty packages (also by Sigitas Tolusis) as IEEE does
% not format its papers in such ways.
\RequirePackage{multicol}
% Multicol is a package that uses the environment to divide sub-columns.
\RequirePackage{placeins}
% Defines a \FloatBarrier command, beyond which floats may not pass; useful,

% *** Use SPECIALIZED LIST PACKAGES ***
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\RequirePackage{listings}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\providecommand*{\algorithmautorefname}{Algorithm}
% algorithmic.sty was written by Peter Williams and Rogerio Brito.
% This package provides an algorithmic environment fo describing algorithms.
% You can use the algorithmic environment in-text or within a figure
% environment to provide for a floating algorithm. Do NOT use the algorithm
% floating environment provided by algorithm.sty (by the same authors) or
% algorithm2e.sty (by Christophe Fiorio) as IEEE does not use dedicated
% algorithm float types and packages that provide these will not provide
% correct IEEE style captions. The latest version and documentation of
% algorithmic.sty can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/algorithms/
% There is also a support site at:
% http://algorithms.berlios.de/index.html
% Also of interest may be the (relatively newer and more customizable)
% algorithmicx.sty package by Szasz Janos:
% http://www.ctan.org/tex-archive/macros/latex/contrib/algorithmicx/

% *** Use HYPERREF PACKAGES ***
\ifNRSM@opt@color
  \typeout{NRSMRev: Color Mode Enabled.}
  \RequirePackage[colorlinks]{hyperref}
  \definecolor{NRSMRviolet}{RGB}{100,16,86}
  \definecolor{NRSMRred}{RGB}{200,16,46}
  \definecolor{NRSMRgray}{RGB}{84,88,90}
  \definecolor{NRSMRsemiWhite}{RGB}{255,249,217}
  \definecolor{NRSMRwhite}{RGB}{255,255,255}
  \hypersetup{citecolor={DarkGreen}}
\else
  \typeout{NRSMRev: Gray Mode Enabled.}
  \RequirePackage[colorlinks]{hyperref}
  \hypersetup{
    citecolor={black}, linkcolor={black}, filecolor={black},
    menucolor={black}, urlcolor={black}
  }
\fi
\RequirePackage[all]{hypcap}
% This package tries a solution of the problem with hyperref, that 
% links to floats points below the caption and not at the beginning 
% of the float. Therefore this package divides the task into two part, 
% the link setting with \capstart or automatically at the beginning 
% of a float and the rest in the \caption command.

% *** Use THEOREM-HYPERREF PACKAGES ***
\RequirePackage[thref,hyperref]{ntheorem}

% *** CITATION PACKAGES ***
\RequirePackage{cite}
% cite.sty was written by Donald Arseneau
% V1.6 and later of IEEEtran pre-defines the format of the cite.sty package
% \cite{} output to follow that of IEEE. Loading the cite package will
% result in citation numbers being automatically sorted and properly
% "compressed/ranged". e.g., [1], [9], [2], [7], [5], [6] without using
% cite.sty will become [1], [2], [5]--[7], [9] using cite.sty. cite.sty's
% \cite will automatically add leading space, if needed. Use cite.sty's
% noadjust option (cite.sty V3.8 and later) if you want to turn this off.
% cite.sty is already installed on most LaTeX systems. Be sure and use
% version 4.0 (2003-05-27) and later if using hyperref.sty. cite.sty does
% not currently provide for hyperlinked citations.
% The latest version can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/cite/
% The documentation is contained in the cite.sty file itself.


% *** Use other ENHANCING PACKAGES ***
\RequirePackage{enumitem} 
\setlist[enumerate]{label=(\arabic*)}
% enumitem is used to customize lists %\RequirePackage{enumerate}
% \RequirePackage{siunitx}
% enable users to use Système International d'Unités (SI).
\RequirePackage{colortbl}
\RequirePackage{url}
% Other packages required by NRSM.

%%***************************************
%% Make further settings ...
%%***************************************

%% =========== Define Theorems =========== 
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}{Corollary}
\newtheorem{definition}{Definition}[section]
\newtheorem{conjecture}{Conjecture}[section]
\newtheorem{example}{Example}[section]
\newtheorem{remark}{Remark}

%% =========== Define autoref macros =========== 
\def\figureautorefname{\textnormal{Fig.}}
\providecommand*{\theoremautorefname}{\textnormal{Theorem}}
\providecommand*{\lemmaautorefname}{\textnormal{Lemma}}
\providecommand*{\propositionautorefname}{\textnormal{Proposition}}
\providecommand*{\corollaryautorefname}{\textnormal{Corollary}}
\providecommand*{\definitionautorefname}{\textnormal{Definition}}
\providecommand*{\conjectureautorefname}{\textnormal{Conjecture}}
\providecommand*{\exampleautorefname}{\textnormal{Example}}
\providecommand*{\remarkautorefname}{\textnormal{Remark}}
\providecommand*{\subfigureautorefname}{\figureautorefname}
\providecommand*{\subtableautorefname}{\tableautorefname}

%% =========== Define mathematical and other macros =========== 
\newcommand{\tIm}[1]{\mathrm{Im}\left\{ #1 \right\}}
\newcommand{\tRe}[1]{\mathrm{Re}\left\{ #1 \right\}}
\newcommand{\arccosh}{\cosh^{-1}}
\newcommand{\qED}{\rightline{$\square$}}
\ifNRSM@opt@nohyper
  \hypersetup{
    nolinks=true
  }
  \providecommand{\email}[1]{\texttt{#1}}
\else
  \ifNRSM@opt@draft
    \hypersetup{
      nolinks=true
    }
  \else
    \hypersetup{
      nolinks=false
    }
  \fi
  \providecommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}}
\fi

%% =========== Define passowords protection =========== 
\ifthenelse{\equal{\NRSM@opt@ownerPass}{}}{}{
  \ifthenelse{\equal{\NRSM@opt@userPass}{}}{
    \special{pdf:encrypt ownerpw (\NRSM@opt@ownerPass) length 128 perm 2052}
  }{
    \special{pdf:encrypt ownerpw (\NRSM@opt@ownerPass) userpw (\NRSM@opt@userPass) length 128 perm 2052}
  }
}

%% =========== Define hyperref options =========== 
\renewcommand{\eqref}[1]{\hyperref[#1]{\textnormal{(\ref*{#1})}}}
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
  pdfauthor={\NRSM@opt@sauthor},%
  pdftitle={\NRSM@opt@stitle},%
  pdfsubject={\NRSM@opt@subject},%
  %pdfkeywords={}%
}

%% =========== Define default title =========== 
\title{
  \NRSM@opt@stitle
}

%% =========== Define default listings options =========== 
\ifdefstring{\NRSM@opt@codeStyle}{box}{
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
  \ifdefstring{\NRSM@opt@codeStyle}{default}{
    \lstset{numbers=left,
      numberstyle= \tiny,
      basicstyle={\footnotesize\ttfamily},
      keywordstyle= \color{ blue!70},commentstyle=\color{red!50!green!50!blue!50},
      frame=shadowbox,
      xleftmargin=2em,
      rulesepcolor=\color{red!20!green!20!blue!20},
      breaklines=true % automatically break the line
    }
  }
}

%% =========== correct bad hyphenation here =========== 
\hyphenation{op-tical net-works semi-conduc-tor}

%% =========== Define new author section =========== 
\makeatletter

\newcounter{author}
\renewcommand{\author}[2][]{
  \stepcounter{author}
  \@namedef{author@\theauthor}{#2}
  \@namedef{authorlabel@\theauthor}{#1}
}

\newcounter{address}
\newcommand{\address}[2][]{
  \stepcounter{address}
  \@namedef{address@\theaddress}{#2}
  \@namedef{addresslabel@\theaddress}{#1}
}

\newcommand{\alsep}{and}

\let\NRSM@cmd@oldmaketitle\maketitle
% this is borrowed from IEEEtran.cls and revised for single column author block formatting
\def\newmaketitle{\par%
  \begingroup%
  \normalfont%
  \def\thefootnote{}%  the \thanks{} mark type is empty
  \def\footnotemark{}% and kill space from \thanks within author
  \let\@makefnmark\relax% V1.7, must *really* kill footnotemark to remove all \textsuperscript spacing as well.
  \footnotesize%       equal spacing between thanks lines
  \footnotesep 0.7\baselineskip%see global setting of \footnotesep for more info
  \normalsize%
  \twocolumn[\thenewmaketitle\@IEEEaftertitletext]%
  % pullup page for pubid if used.
  \if@IEEEusingpubid
  \enlargethispage{-\@IEEEpubidpullup}%
  \fi
  \endgroup
  \setcounter{footnote}{0}\let\maketitle\relax\let\@maketitle\relax
  \gdef\@thanks{}%
  % v1.6b do not clear these as we will need the title again for peer review papers
  % \gdef\@author{}\gdef\@title{}%
  \let\thanks\relax}

% this is borrowed from ursi2022.cls for single column author block formatting
\def\thenewmaketitle{
  % Add the formatted title
  \newpage
  \begin{center}%
    \vskip0.2em{\Huge\@IEEEcompsoconly{\sffamily}\@IEEEcompsocconfonly{\normalfont\normalsize\vskip 2\@IEEEnormalsizeunitybaselineskip
        \bfseries\large}\@title\par}\vskip1.0em\par%
    %
    \vspace{1ex}
    \newcounter{c@author}
    \newcounter{c@tmp}
    \ifthenelse{\value{author}=2}{%
      \newcommand{\liand}{ and }}{%
      \newcommand{\liand}{, and }}
    % Next add the authors
    \ifthenelse{\value{address}<2}{%
      %No address references required if there is only one
      \@nameuse{author@1}%
      \stepcounter{c@author}%
      \whiledo{\value{c@author}<\value{author}}{%
        \setcounter{c@tmp}{\value{author}}%
        \addtocounter{c@tmp}{-\value{c@author}}%
        \ifthenelse{\value{c@tmp}=1}{%
          \renewcommand{\alsep}{\liand}}{\renewcommand{\alsep}{, }}%
        \stepcounter{c@author}\alsep \@nameuse{author@\thec@author}}\\%
    }
    {%Add address references after the author's name
      \@nameuse{author@1}${}^{(\ref{\@nameuse{authorlabel@1}})}$%
      \stepcounter{c@author}%
      \whiledo{\value{c@author}<\value{author}}{%
        \setcounter{c@tmp}{\value{author}}%
        \addtocounter{c@tmp}{-\value{c@author}}%
        \ifthenelse{\value{c@tmp}=1}{%
          \renewcommand{\alsep}{\liand}}{\renewcommand{\alsep}{, }}%
        \stepcounter{c@author}\alsep \@nameuse{author@\thec@author}%
        ${}^{(\ref{\@nameuse{authorlabel@\thec@author}})}$%
      }
    }
    %    \theaddress
    \vspace{0.2ex}
    
    \ifthenelse{\value{address}>0}{%
      \ifthenelse{\value{address}=1}{
        %Output the address without any reference symbols
        %%        {\slshape\small \@nameuse{address@1}}
        {\@nameuse{address@1}}
      }
      {%Output the addresses as an enumerated list
        \newcounter{c@address}
        
        \begin{center}
          \whiledo{\value{c@address}<\value{address}}
          {
            \refstepcounter{c@address}
            ${}^{(\thec@address)}$\,%
            \label{\@nameuse{addresslabel@\thec@address}}%
            \@nameuse{address@\thec@address}\\ %
          }
        \end{center}
      } % end of the address creation ifthenelse block
    }
    {
      \relax
    }
  \end{center}
}
\let\maketitle\newmaketitle

\renewcommand{\thebibliography}[1]
{\ifNRSM@opt@refNum
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

\makeatother