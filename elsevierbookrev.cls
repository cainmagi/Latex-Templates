%% -----------------------------------
% CainMagi's Revised ElsevierBook
%
% The original documentation can be found here:
% https://github.com/vtex-soft/texsupport.elsevier-book
%
%% -----------------------------------
%  Update statements:
%% -----------------------------------
% Version 1.0.0 (04/22/2025)
%   - Create the template.
%% -----------------------------------
%  Control options statements:
%% -----------------------------------
% Text configuration for the information
% (It is highly recommended to master them. Use \ElsBookRevSetup{} to
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
% (Options influencing the style. Use them as \documentclass[...]{ElsBookRev}
%  because \ElsBookRevSetup will not work.)
% (Noted that [] shows the default option.)
%
%  hyper       : [false], make links, section titles and frames colored and
%                hyper-referred.
%                - Complementary option is "nohyper".
%  draft       : [false], enable the draft mode for the article class.
%                - Complementary option is "final".
%  authoryear  : [false], use the author-year citation format.
%                - Complementary option is "numcit".
%  usesibinary : [false, provide the features of the binary units of the
%                `siunitx` package. Note that this option is not available
%                since TeXLive 2023, where the binary units will be enabled
%                by default.
%  more options can be found in the original "elsevier-book" template.
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
% \ElsBookRevSetup {C}
%   - Basic setup command of the control options.
% Other commands from "svmult" package.
%   - See the package information for learning more details.
%
%% -----------------------------------
%  Copyright info:
%% -----------------------------------
%
% Copyright (c) 2025 by Yuchen Jin (cainmagi) <cainmagi@gmail.com>
% Licensed by The LaTeX Project Public License at <https://www.latex-project.org/lppl/lppl-1-3c/>.
%
% LPPL Version 1.3c  2006-05-20
%
% Copyright 1999 2002-2006 LaTeX3 Project
% Everyone is allowed to distribute verbatim copies of this
% license document, but modification of it is not allowed.
%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{elsevierbookrev}[2025/01/31 v1.0.0 Revised Elsevier Book - Author: Yuchen Jin]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{ifthen, calc}
\RequirePackage{ifpdf, ifxetex}
\SetupKeyvalOptions{family=ElsBookRev, prefix=ElsBookRev@opt@, setkeys=\kvsetkeys}

\DeclareBoolOption[false]{draft}
\DeclareComplementaryOption{final}{draft}
\DeclareBoolOption[false]{hyper}
\DeclareComplementaryOption{nohyper}{hyper}
\DeclareBoolOption[true]{hypercolor}
\DeclareComplementaryOption{nohypercolor}{hypercolor}
\DeclareBoolOption[false]{authoryear}
\DeclareComplementaryOption{numcit}{authoryear}
\DeclareBoolOption[false]{usesibinary}

\DeclareStringOption[Draft for Elsevier Book， ElsBook Template]{title}[Draft for Elsevier Book， ElsBook Template]
\DeclareStringOption[Yuchen Jin]{author}[Yuchen Jin]
\DeclareStringOption[University of Houston]{institute}[University of Houston]

\DeclareStringOption[]{ownerPass}[]
\DeclareStringOption[]{userPass}[]

\newcommand{\ElsBookRevSetup}[1]{
  \kvsetkeys{ElsBookRev}{#1}
  % Configure other options for ElsBookRev.
  \ifElsBookRev@opt@hyper
    \hypersetup{
      pdfauthor={\ElsBookRev@opt@author},% 
      pdftitle={\ElsBookRev@opt@title},%
      pdfsubject={\ElsBookRev@opt@institute},%
    }
    \ElsBookRev@cmd@setHyperrefColors
    \renewcommand{\email}[1]{\href{mailto:##1}{\texttt{##1}}}
  \else
    \renewcommand{\email}[1]{\texttt{##1}}
  \fi
  \ElsBookRev@cmd@setupPassword
}

\DeclareDefaultOption{
  \PassOptionsToClass{\CurrentOption}{elsevierbook}
}
\ProcessKeyvalOptions*\relax

% *** Use XColor PACKAGES ***
\ifElsBookRev@opt@hyper
  \RequirePackage[svgnames,x11names,hyperref]{xcolor}
\else
  \RequirePackage[svgnames,x11names]{xcolor}
\fi
\definecolor{UHviolet}{RGB}{100,16,86}
\definecolor{UHred}{RGB}{200,16,46}
\definecolor{UHgray}{RGB}{84,88,90}
\definecolor{UHsemiWhite}{RGB}{255,249,217}
\definecolor{UHwhite}{RGB}{255,255,255}
% An improvement compared to color package, which enables users to use 
% SVG colors, high-level color commands and more color sets

% Load the class and the elsevier-book package.
%
\ifElsBookRev@opt@draft
  \PassOptionsToClass{draft}{elsevierbook}
\fi
\LoadClass{elsevierbook}

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

% Font configuration pacakges
% \RequirePackage{type1cm}

% selects Times Roman as basic font
% Unify the sans font style
\ifxetex
  % For XeLaTeX or LuaLaTeX
  \RequirePackage[T1]{fontenc}
  \RequirePackage{fontspec}
  \@ifclasswith{elsevierbook}{a08a}{}%
  {
    \defaultfontfeatures[TeX Gyre Termes]
    {
      Extension      = .otf ,
      UprightFont    = texgyretermes-regular,
      BoldFont       = texgyretermes-bold,
      ItalicFont     = texgyretermes-italic,
      BoldItalicFont = texgyretermes-bolditalic,
    }
    \setmainfont{TeX Gyre Termes}
  }
  \@ifclasswith{elsevierbook}{p04}{
    \defaultfontfeatures[FiraSans]
    {
      Extension      = .otf ,
      UprightFont    = FiraSans-regular,
      BoldFont       = FiraSans-bold,
      ItalicFont     = FiraSans-italic,
      BoldItalicFont = FiraSans-bolditalic,
    }
    \setsansfont{FiraSans}
  }%
  {
    \defaultfontfeatures[TeX Gyre Heros]
    {
      Extension      = .otf ,
      UprightFont    = texgyreheros-regular,
      BoldFont       = texgyreheros-bold,
      ItalicFont     = texgyreheros-italic,
      BoldItalicFont = texgyreheros-bolditalic,
    }
    \setsansfont[Scale=0.9]{TeX Gyre Heros}
  }
\else
  \RequirePackage[T1]{fontenc}
  % For pdfLaTeX
  \@ifclasswith{elsevierbook}{a08a}{}%
  {
    \RequirePackage{newtxtext}
    \RequirePackage[varvw]{newtxmath}
  }
  % Select Helvetica or similar sans-serif font
  \@ifclasswith{elsevierbook}{p04}{}%
  {
    \RequirePackage[scaled=0.9]{helvet}
    \renewcommand{\sfdefault}{phv} % Set sans-serif default to Helvetica
  }
\fi

% natbib needs to be loaded before hyperref
\ifElsBookRev@opt@authoryear
  \PassOptionsToPackage{authoryear, round}{natbib}
\else
  \PassOptionsToPackage{square, sort&compress, numbers}{natbib}
\fi
\RequirePackage[sectionbib, comma]{natbib}
\AtEndOfClass{% Loading package 'NATBIB'
  % \RequirePackage{natbib}
  % Changing some parameters of NATBIB
  \setlength{\bibhang}{\parindent}
  %\setlength{\bibsep}{0mm}
  \let\bibfont=\small
  \def\@biblabel#1{#1.}
  \providecommand{\etal}{\textit{et al}.}
  %\bibpunct[,]{(}{)}{;}{a}{}{,}}}
}
% The bundle provides a package that implements both author-year and
% numbered references, as well as much detailed of support for other
% bibliography use. Also Provided are versions of the standard BibTEX
% styles that are compatible with natbib—plainnat, unsrtnat, abbrnat.
% The bibliography styles produced by custom-bib are designed from the
% start to be compatible with natbib.
%
% If hyperref is used, this package needs to be before it.

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

% Redefine the footnote.
% This package needs to be loaded before hyperref, because hyperref will
% re-define all footnotes.
\RequirePackage[bottom]{footmisc}
% places footnotes at page bottom

% Hyperref is here!
% *** Use HYPERREF PACKAGES ***
\ifElsBookRev@opt@hyper
  \typeout{ElsBookRev: Hyperref Mode Enabled.}
  \RequirePackage[colorlinks]{hyperref}
  % Configure the hyperref color settings.
  % It should be only used when setting ElsBookRev@opt@hyper.
  \providecommand{\ElsBookRev@cmd@setHyperrefColors}{
    \ifElsBookRev@opt@hypercolor
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
  \ElsBookRev@cmd@setHyperrefColors
  % This package tries a solution of the problem with hyperref, that 
  % links to floats points below the caption and not at the beginning 
  % of the float. Therefore this package divides the task into two part, 
  % the link setting with \capstart or automatically at the beginning 
  % of a float and the rest in the \caption command.
\else
  \typeout{ElsBookRev: Hyperref Mode Disabled.}
  \RequirePackage[capitalise, sort&compress]{cleveref}
  \let\autoref\cref
  \providecommand{\ElsBookRev@cmd@setHyperrefColors}{}
\fi

% *** Use FLOAT PACKAGES ***
% \RequirePackage{caption}
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
% enumitem is used to customize lists %\RequirePackage{enumerate}

\RequirePackage{colortbl}
\RequirePackage{datetime}
\IfFileExists{siunitx.sty}{%
  \ifElsBookRev@opt@usesibinary
    % If using TeXLive >=2023, the option binary-units will be removed.
    % Therefore, there is no need to use this option. 
    \RequirePackage[binary-units]{siunitx}
  \else
    \RequirePackage{siunitx}
  \fi
}{}
% enable users to use Système International d'Unités (SI).
\RequirePackage{url}
\RequirePackage{multicol}
% used for the two-column index

%%***************************************
%% Make further settings ...
%%***************************************

%% =========== Define tabularx configurations ===========
\renewcommand\tabularxcolumn[1]{m{#1}}  % Automatic column configs

%% =========== Define autoref macros ===========
\def\sectionautorefname{\textnormal{Sect.}}
\def\subsectionautorefname{\textnormal{Sect.}}
\def\figureautorefname{\textnormal{Fig.}}
\providecommand*{\subfigureautorefname}{\figureautorefname}
\providecommand*{\subtableautorefname}{\tableautorefname}
\ifElsBookRev@opt@hyper\else
  \crefname{section}{Sect.}{Sects.}
\fi

%% =========== Define mathematical and other macros ===========
\ifdef{\tRe}{}{\DeclareMathOperator*{\tRe}{Re}}
\ifdef{\tIm}{}{\DeclareMathOperator*{\tIm}{Im}}
\ifdef{\arcsinh}{}{\DeclareMathOperator*{\arcsinh}{\sinh^{-1}}}
\ifdef{\arccosh}{}{\DeclareMathOperator*{\arccosh}{\cosh^{-1}}}
%\newcommand{\arccosh}{\cosh^{-1}}
\providecommand{\qED}{\rightline{$\square$}}
\ifdef{\argmax}{}{\DeclareMathOperator*{\argmax}{arg\,max}}
\ifdef{\argmin}{}{\DeclareMathOperator*{\argmin}{arg\,min}}
\ifdef{\mathand}{}{\DeclareMathOperator*{\mathand}{and}}
\ifdef{\mean}{}{\DeclareMathOperator*{\mean}{mean}}
\ifdef{\std}{}{\DeclareMathOperator*{\std}{std}}
\ifdef{\intd}{}{\DeclareMathOperator*{\intd}{d}}
\ifdef{\expect}{}{\DeclareMathOperator*{\expect}{\mathbb{E}}}
\ifdef{\sinull}{}{\DeclareSIUnit{\sinull}{\relax}}
\ifElsBookRev@opt@hyper
  \providecommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}}
\else
  \providecommand{\email}[1]{\texttt{#1}}
\fi
\providecommand{\reqdisc}[1]{\textcolor{red}{#1}} % require discussions.

%% =========== Define passowords protection ===========
\providecommand{\ElsBookRev@cmd@setupPassword}{
  \ifthenelse{\equal{\ElsBookRev@opt@ownerPass}{}}{}{
    \ifthenelse{\equal{\ElsBookRev@opt@userPass}{}}{
      \ifxetex
        \special{pdf:encrypt ownerpw (\ElsBookRev@opt@ownerPass) length 128 perm 2052}
      \else
        \errmessage{The file password feature is only supported by XeLaTeX. Please do not use it with other compilers.}
      \fi
    }{
      \ifxetex
        \special{pdf:encrypt ownerpw (\ElsBookRev@opt@ownerPass) userpw (\ElsBookRev@opt@userPass) length 128 perm 2052}
      \else
        \errmessage{The file password feature is only supported by XeLaTeX. Please do not use it with other compilers.}
      \fi
    }
  }
}

%% =========== Define hyperref options ===========
\ifElsBookRev@opt@hyper
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
    pdfauthor={\ElsBookRev@opt@author},%
    pdftitle={\ElsBookRev@opt@title},%
    pdfsubject={\ElsBookRev@opt@institute}%
  }
\fi

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

%% =========== Run pre-defined commands with default configs ===========
\ElsBookRev@cmd@setupPassword
