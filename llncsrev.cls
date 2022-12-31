%% -----------------------------------
% CainMagi's Revised Springer Class
% for Lecture Notes in Computer
% Science (LLNCS)
%
% The original documentation can be found here:
% https://ctan.math.utah.edu/ctan/tex-archive/macros/latex/contrib/llncs/llncsdoc.pdf
%
%% -----------------------------------
%  Update statements:
%% -----------------------------------
% Version 1.0.0 (12/31/22)
%   - Create the template.
%   - Bump the base class llncs to ver 2.22.
%% -----------------------------------
%  Control options statements:
%% -----------------------------------
% Text configuration for the information
% (It is highly recommended to master them. Use \LLNCSRevSetup{} to
%  change them)
%
%  title, author  : [string], the short title and the short author names of 
%                   this article, which only appears in PDF metadata.
%  institute      : [string], the name of the institutes, which only appears
%                   in PDF metadata.
%  ownerPass      : [string], password, if not provided, users could not edit
%                   this document.
%                   - Only works when using XeLaTeX.
%  userPass       : [string], password, if not provided, users could not open
%                   this document.
%                   - Only works when using XeLaTeX.
%                   - Noted that if ownerPass is not defined, this password 
%                     will not be effective!
%
% Boolean configurations for formats
% (Adjust these options according to requirements of the department.)
%  hypercolor     : [true], make all links with colors (require to specify
%                   the option "hyper" first).
%                   - Complementary option is "nohypercolor".
%
%% -----------------------------------
% Basic Configuration
% (Options influencing the style. Use them as \documentclass[...]{LLNCSRev}
%  because \LLNCSRevSetup will not work.)
% (Noted that [] shows the default option.)
%
%  hyper       : [false], make links, section titles and frames colored and
%                hyper-referred.
%                - Complementary option is "nohyper".
%  draft       : [false], enable the draft mode for the article class.
%                - Complementary option is "final".
%  authoryear  : [false], use the author-year citation format.
%                - Complementary option is "numcit".
%  more options can be found in the original "llncs" template.
%
%% -----------------------------------
% Other Configuration
% (Configurations not listed above will be passed to the article class.)
%
%% -----------------------------------
% Command & Environment
%  (C marks a command and E marks an environment.)
%
% \mainmatter {C}
%   - Used to create an individual contribution.
% \maketitle {C}
%   - Create the title.
% \keywords {C}
%   - Used to configure the keywords.
% \LLNCSRevSetup {C}
%   - Basic setup command of the control options.
% Other commands from "llncs" package.
%   - See the package information for learning more details.
%
%% -----------------------------------
%  Copyright info:
%% -----------------------------------
%
% Copyright (c) 2022 by Yuchen Jin (cainmagi) <cainmagi@gmail.com>
% Licensed by GNU General Public License at <http://www.gnu.org/licenses/>.
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
%% -----------------------------
% Note that the following parts are 
% heritaged from UH Thesis Template!
%% -----------------------------
% University of Houston PhD/MS thesis Latex style file -- modifications to the report style
% 
% Designed to comply with UH's formatting guidelines, per recommendations in Fall 2019
%
% For latest recommendations, please refer to http://www.uh.edu/nsm/computer-science/graduate/defense-guidelines
%
% Author: Dr. Babu Sundaram (babusun@central.uh.edu)
%
% Last Updated : October 7, 2019

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{llncsrev}[2022/12/31 v1.0.0 Revised Springer Class for Lecture Notes in Computer Science - Author: Yuchen Jin]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{ifthen, calc}
\RequirePackage{ifpdf, ifxetex}
\SetupKeyvalOptions{family=LLNCSRev, prefix=LLNCSRev@opt@, setkeys=\kvsetkeys}

\DeclareBoolOption[false]{draft}
\DeclareComplementaryOption{final}{draft}
\DeclareBoolOption[false]{hyper}
\DeclareComplementaryOption{nohyper}{hyper}
\DeclareBoolOption[true]{hypercolor}
\DeclareComplementaryOption{nohypercolor}{hypercolor}
\DeclareBoolOption[false]{authoryear}
\DeclareComplementaryOption{numcit}{authoryear}

\DeclareStringOption[Draft for Springer Book， LLNCS Template]{title}[Draft for Springer Book， LLNCS Template]
\DeclareStringOption[Yuchen Jin]{author}[Yuchen Jin]
\DeclareStringOption[University of Houston]{institute}[University of Houston]
\DeclareStringOption[]{keywords}[]

\DeclareStringOption[]{ownerPass}[]
\DeclareStringOption[]{userPass}[]

\newcommand{\LLNCSRevSetup}[1]{
  \kvsetkeys{LLNCSRev}{#1}
  % Configure other options for LLNCSRev.
  \ifLLNCSRev@opt@hyper
    \hypersetup{
      pdfauthor={\LLNCSRev@opt@author},% 
      pdftitle={\LLNCSRev@opt@title},%
      pdfsubject={\LLNCSRev@opt@institute},%
      pdfkeywords={\LLNCSRev@opt@keywords}
    }
    \LLNCSRev@cmd@setHyperrefColors
    \renewcommand{\email}[1]{\href{mailto:##1}{\texttt{##1}}}
  \else
    \renewcommand{\email}[1]{\texttt{##1}}
  \fi
  \LLNCSRev@cmd@setupPassword
}

\DeclareDefaultOption{
  \PassOptionsToClass{\CurrentOption}{llncs}
}
\ProcessKeyvalOptions*\relax

% Load the class and the UH thesis package.
%
\ifLLNCSRev@opt@draft
  \PassOptionsToClass{draft}{llncs}
\fi
\LoadClass{llncs}

%%***************************************
%% Require Packages ...
%%***************************************

% *** Use AMS MATH PACKAGES ***
\RequirePackage{amsmath}
\RequirePackage{amssymb,amsbsy}
\RequirePackage{dsfont}
\RequirePackage{bm}
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
%
% If hyperref is used, amsmath needs to be before it.

%================Graphic Settings====================
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
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
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
  \DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png,.jpg}
\fi
\graphicspath{{pics}}
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

\RequirePackage{float}
% Improves the interface for defining floating objects such as figures
% and tables. Introduces the boxed float, the ruled float and the plaintop
% float. You can define your own floats and improve the behaviour of the
% old ones.
%
% The package also provides the H float modifier option of the obsolete
% here package. You can select this as automatic default with
% \floatplacement{figure}{H}.
%
% If hyperref is used, this package needs to be before it.

\ifLLNCSRev@opt@authoryear
  \PassOptionsToPackage{authoryear, round}{natbib}
\else
  \PassOptionsToPackage{square, sort&compress, numbers}{natbib}
\fi
\RequirePackage[sectionbib, comma]{natbib}
% The bundle provides a package that implements both author-year and
% numbered references, as well as much detailed of support for other
% bibliography use. Also Provided are versions of the standard BibTEX
% styles that are compatible with natbib—plainnat, unsrtnat, abbrnat.
% The bibliography styles produced by custom-bib are designed from the
% start to be compatible with natbib.
%
% If hyperref is used, this package needs to be before it.

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
\ifLLNCSRev@opt@hyper
  \RequirePackage[svgnames,hyperref]{xcolor}
\else
  \RequirePackage[svgnames]{xcolor}
\fi
\definecolor{UHviolet}{RGB}{100,16,86}
\definecolor{UHred}{RGB}{200,16,46}
\definecolor{UHgray}{RGB}{84,88,90}
\definecolor{UHsemiWhite}{RGB}{255,249,217}
\definecolor{UHwhite}{RGB}{255,255,255}
% An improvement compared to color package, which enables users to use 
% SVG colors, high-level color commands and more color sets

% Hyperref is here!
% *** Use HYPERREF PACKAGES ***
\ifLLNCSRev@opt@hyper
  \typeout{LLNCSRev: Hyperref Mode Enabled.}
  \RequirePackage[colorlinks]{hyperref}
  % Configure the hyperref color settings.
  % It should be only used when setting LLNCSRev@opt@hyper.
  \providecommand{\LLNCSRev@cmd@setHyperrefColors}{
    \ifLLNCSRev@opt@hypercolor
    \hypersetup{
      citecolor={DarkGreen}, linkcolor={red}, filecolor={DeepSkyBlue},
      menucolor={red}, urlcolor={magenta}
    }
    \else
    \hypersetup{
      citecolor={black}, linkcolor={black}, filecolor={black},
      menucolor={black}, urlcolor={black}
    }
    \fi
  }
  \LLNCSRev@cmd@setHyperrefColors
  \RequirePackage[all]{hypcap}
  % This package tries a solution of the problem with hyperref, that 
  % links to floats points below the caption and not at the beginning 
  % of the float. Therefore this package divides the task into two part, 
  % the link setting with \capstart or automatically at the beginning 
  % of a float and the rest in the \caption command.
\else
  \typeout{LLNCSRev: Hyperref Mode Disabled.}
  \RequirePackage[capitalise, noabbrev, sort&compress]{cleveref}
  \let\autoref\cref
  \providecommand{\LLNCSRev@cmd@setHyperrefColors}{}
\fi

% *** Use FLOAT PACKAGES ***
% \RequirePackage{caption}
% Package caption has been added to uhthesis2019.sty.
\RequirePackage[caption=false,font=footnotesize]{subfig}
% subfigure.sty has been superceeded by subfig.sty.
% The package provides support for the manipulation and reference of small
% or ‘sub’ figures and tables within a single figure or table environment.
% It is convenient to use this package when your subfigures are to be
% separately captioned, referenced, or are to be included in the List-of-
% Figures. A new \subfigure command is introduced which can be used inside
% a figure environment for each subfigure. An optional first argument is
% used as the caption for that subfigure.
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
\RequirePackage[section]{placeins}
% Defines a \FloatBarrier command, beyond which floats may not pass; useful,
% for example, to ensure all floats for a section appear before the next
% \section command.
%
% The prototype package subfigure needs to be before hyperref, so this
% package is placed after loading hyperref.

% *** Use SPECIALIZED LIST PACKAGES ***
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
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
%
% This package needs to be loaded after hyperref.

% *** Use other ENHANCING PACKAGES ***
\RequirePackage{mfirstuc}
\RequirePackage{enumitem}
\setlist[enumerate]{label=(\arabic*)}
% enumitem is used to customize lists %\RequirePackage{enumerate}
% \RequirePackage{siunitx}
% enable users to use Système International d'Unités (SI).
\RequirePackage{colortbl}
\RequirePackage{datetime}
\RequirePackage[binary-units]{siunitx}
\RequirePackage{url}

%%***************************************
%% Make further settings ...
%%***************************************

%% =========== Define tabularx configurations ===========
\renewcommand\tabularxcolumn[1]{m{#1}}  % Automatic column configs
\renewcommand\arraystretch{1.3}  % Global table row stretch

%% =========== Define autoref macros ===========
% \def\figureautorefname{\textnormal{Fig.}}
\providecommand*{\subfigureautorefname}{\figureautorefname}
\providecommand*{\subtableautorefname}{\tableautorefname}

%% =========== Define mathematical and other macros ===========
\DeclareMathOperator*{\tRe}{Re}
\DeclareMathOperator*{\tIm}{Im}
\DeclareMathOperator*{\arcsinh}{\sinh^{-1}}
\DeclareMathOperator*{\arccosh}{\cosh^{-1}}
%\newcommand{\arccosh}{\cosh^{-1}}
\providecommand{\qED}{\rightline{$\square$}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
\DeclareMathOperator*{\mathand}{and}
\DeclareMathOperator*{\mean}{mean}
\DeclareMathOperator*{\std}{std}
\DeclareMathOperator*{\intd}{d}
\DeclareMathOperator*{\expect}{\mathbb{E}}
\ifLLNCSRev@opt@hyper
  \providecommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}}
\else
  \providecommand{\email}[1]{\texttt{#1}}
\fi
\providecommand{\reqdisc}[1]{\textcolor{red}{#1}} % require discussions.

%% =========== Define passowords protection ===========
\providecommand{\LLNCSRev@cmd@setupPassword}{
  \ifthenelse{\equal{\LLNCSRev@opt@ownerPass}{}}{}{
    \ifthenelse{\equal{\LLNCSRev@opt@userPass}{}}{
      \ifxetex
        \special{pdf:encrypt ownerpw (\LLNCSRev@opt@ownerPass) length 128 perm 2052}
      \else
        \errmessage{The file password feature is only supported by XeLaTeX. Please do not use it with other compilers.}
      \fi
    }{
      \ifxetex
        \special{pdf:encrypt ownerpw (\LLNCSRev@opt@ownerPass) userpw (\LLNCSRev@opt@userPass) length 128 perm 2052}
      \else
        \errmessage{The file password feature is only supported by XeLaTeX. Please do not use it with other compilers.}
      \fi
    }
  }
}

%% =========== Define hyperref options ===========
\ifLLNCSRev@opt@hyper
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
    pdfauthor={\LLNCSRev@opt@author},%
    pdftitle={\LLNCSRev@opt@title},%
    pdfsubject={\LLNCSRev@opt@institute}%
  }
  \providecommand{\keywords}[1]{%
    \hypersetup{pdfkeywords={#1}}%
    \kvsetkeys{LLNCSRev}{keywords={#1}}%
  }
\else
  \providecommand{\keywords}[1]{%
    \kvsetkeys{LLNCSRev}{keywords={#1}}%
  }
\fi

%% =========== Configure the abstract env ===========
\let\LLNCSRev@cmd@oldendabstract\endabstract
\providecommand{\LLNCSRev@cmd@endabstract}{
  \ifthenelse{\equal{\LLNCSRev@opt@keywords}{}}{}{%
    \def\and{{\textperiodcentered}}%
    \par\addvspace\baselineskip%
    \noindent\keywordname\enspace\ignorespaces%
    \LLNCSRev@opt@keywords%
  }%
  \LLNCSRev@cmd@oldendabstract
}
\let\endabstract\LLNCSRev@cmd@endabstract

%% =========== Define the date format ===========
\newdateformat{monthyeardate}{%
  \monthname[\THEMONTH] \THEYEAR%
}
\newdateformat{usvardate}{%
  \monthname[\THEMONTH] \ordinal{DAY}, \THEYEAR%
}

\MFUnocap{a}\MFUnocap{an}\MFUnocap{the}%
\MFUnocap{and}\MFUnocap{as}\MFUnocap{but}\MFUnocap{for}\MFUnocap{if}\MFUnocap{nor}\MFUnocap{or}%
\MFUnocap{so}\MFUnocap{yet}%
\MFUnocap{at}\MFUnocap{by}\MFUnocap{in}\MFUnocap{of}\MFUnocap{off}\MFUnocap{on}\MFUnocap{per}%
\MFUnocap{to}\MFUnocap{up}\MFUnocap{via}\MFUnocap{with}

%% =========== Correct bad hyphenation here ===========
\hyphenation{op-tical net-works semi-conduc-tor}

%% =========== Configure the document structure ===========
\setcounter{tocdepth}{3}
\renewcommand{\bibsection}{\section*{References}}

%% =========== Run pre-defined commands with default configs ===========
\LLNCSRev@cmd@setupPassword
