%% -----------------------------------
% CainMagi's Revised UH Thesis Template
% LaTeX Template
%% -----------------------------------
%  Update statements:
%% -----------------------------------
% Version 1.2.0 (12/7/22)
%   - Add bool option: "lstoftablefirst".
%   - Change: Make the list of tables before the list of figures.
%     This feature can be disabled if specifying "lstoffigurefirst".
%   - Change the default refname: "Reference" -> "References".
% Version 1.1.4 (12/6/22)
%   - Add a math operator: `\mathand`.
% Version 1.1.3 (11/30/22)
%   - Fix the wrong vertical trailing space of the parbox.
%   - Make the default global table row stretch changed to "1.3".
% Version 1.1.2 (11/30/22)
%   - Fix the indent of dedication, acknowledgements, and abstract.
%   - Fix a typo in the package info.
% Version 1.1.1 (11/30/22)
%   - Fix the wrong link positions in the table of contents.
%   - Fix the wrong leading space of some titles.
%   - Fix the size of some titles.
%   - Add bool option: "hypercolor". If disabled, will make all links
%     black.
% Version 1.1.0 (11/29/22)
%   - Add bool options: "indentfirst", "captionhang", and
%     "refdoublespace".
%   - Add text options: "refname", "copyrightyear".
%   - Enable users to make the first paragraphs with indents.
%   - Enable users to make captions with hanging indents.
%   - Enable users to make the reference double-spaced.
%   - Enable users to change the title of the reference.
%   - Enable users to change the year of the copyright page. If
%     configured, now the package will use the current year.
%   - Make the following options default: "indentfirst", "captionhang",
%     "refdoublespace", and "refname=Reference".
%   - Change the default margin of the page: all=1.0in except left=1.5in.
%   - Fix typos of the password configurations (only works with XeLaTeX).
%   - Fix the misplacement of the toc tag for the list of figures and the
%     list of tables.
% Version 1.0.0 (11/23/22)
%   - Incorporate all required packages.
%   - Fix the \xfloat issue of the original template when using
%     TeXLive >=2020.
%   - Improve the compatibility with hyperref package.
% Version 0.1.0 (11/15/22)
%   - Creating this template.
%% -----------------------------------
%  Control options statements:
%% -----------------------------------
% Text configuration for the information
% (It is highly recommended to master them. Use \UHRevThesisSetup{} to
%  change them)
%
%  title, author  : [string], the short title and the short author names of 
%                   this report, which appears in head and PDF metadata.
%                   Remember to use \texorpdfstring to skip the commands
%                   for creating the PDF metadata.
%  degree         : [optional string], the degree to be fetched. When being
%                   blank, will use the default value.
%  department     : [string], the name of the department. Do NOT need to include
%                   "Department of ...".
%  college        : [string], the name of the college. NEED to include
%                   "College of ...".
%  submitdate     : [optional string], the date of the submission. If needing
%                   to use commands for this option, recommend to use
%                   \submitdate{} to configure this option. When being blank,
%                   will use \today.
%  refname        : [string], the title of the references.
%  copyrightyear  : [string], the year shown in the copyright page. If left
%                   blank, will use the current year.
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
%  captionhang    : [true], make all captions with hanging indents.
%                   - Complementary option is "nocaptionhang".
%  refdoublespace : [true], make the references double-spaced. If not
%                   configured, will use the single space.
%                   - Complementary option is "refsinglespace".
% 
% Boolean configurations for pages
% (Adjust these options according to the situation of the finished manuscript.)
%
%  lstoftable      : [true], when configured, print the list of tables page.
%                     - Complementary option is "nolstoftable".
%  lstoffigure     : [true], when configured, print the list of figures page.
%                    - Complementary option is "nolstoffigure".
%  lstoftablefirst : [true], when configured, make the list of tables before
%                    the list of figures.
%                    - Complementary option is "lstoffigurefirst".
%  copyright       : [true], when configured, print the copyright page.
%                    - Complementary option is "nocopyright".
%  thesis          : [false], when configured, will treat the draft as a thesis.
%                    Otherwise, will treat the draft as a dissertation.
%                    - Complementary option is "dissertation".
%
% Text configurations for committee members.
% (At least 3 members are required for thesis, and 5 members are required for
% the dissertation.)
%
%  chair          : [string], the name of the committee chair.
%  cochair        : [optional string], the name of the committee chair. Can
%                   be blank.
%  firstreader    : [string], the name of the 1st committee member.
%  secondreader   : [string], the name of the 2nd committee member.
%  thirdreader    : [string], the name of the 3rd committee member. Can be
%                   blank.
%  fourthreader   : [string], the name of the 4th committee member. Can be
%                   blank.
%  fifthreader    : [string], the name of the 5th committee member. Can be
%                   blank.
%
%% -----------------------------------
% Basic Configuration
% (Options influencing the style. Use them as \documentclass[...]{uhrevthesis}
%  because \UHRevThesisSetup will not work.)
% (Noted that [] shows the default option.)
%
%  hyper       : [false], make links, section titles and frames colored and
%                hyper-referred.
%                - Complementary option is "nohyper".
%  draft       : [false], enable the draft mode for the article class.
%                - Complementary option is "final".
%  indentfirst : [true], make the first paragraphs of each (sub) sections
%                with indents.
%                - Complementary option is "noindentfirst".
%
%% -----------------------------------
% Other Configuration
% (Configurations not listed above will be passed to the article class.)
%
%% -----------------------------------
% Command & Environment
%  (C marks a command and E marks an environment.)
%
% \makecoverpages {C}
%   - Used to make a modified title.
% \makecontentspages {C}
%   - Used to make the table of contents.
% \UHRevThesisSetup {C}
%   - Basic setup command of the control options.
% Other commands from "uhthesis2019" package.
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
\ProvidesClass{uhrevthesis}[2022/12/07 v1.2.0 Revised UH Thesis Class - Author: Yuchen Jin]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{ifthen, calc}
\RequirePackage{ifpdf, ifxetex}
\SetupKeyvalOptions{family=UHRevThesis, prefix=UHRevThesis@opt@, setkeys=\kvsetkeys}

\DeclareBoolOption[false]{draft}
\DeclareComplementaryOption{final}{draft}
\DeclareBoolOption[false]{hyper}
\DeclareComplementaryOption{nohyper}{hyper}
\DeclareBoolOption[true]{hypercolor}
\DeclareComplementaryOption{nohypercolor}{hypercolor}
\DeclareBoolOption[false]{thesis}
\DeclareComplementaryOption{dissertation}{thesis}
\DeclareBoolOption[true]{indentfirst}
\DeclareComplementaryOption{noindentfirst}{indentfirst}
\DeclareBoolOption[true]{captionhang}
\DeclareComplementaryOption{nocaptionhang}{captionhang}
\DeclareBoolOption[true]{refdoublespace}
\DeclareComplementaryOption{refsinglespace}{refdoublespace}
\DeclareBoolOption[true]{lstoftable}
\DeclareBoolOption[true]{lstoffigure}
\DeclareComplementaryOption{nolstoftable}{lstoftable}
\DeclareComplementaryOption{nolstoffigure}{lstoffigure}
\DeclareBoolOption[true]{lstoftablefirst}
\DeclareComplementaryOption{lstoffigurefirst}{lstoftablefirst}
\DeclareBoolOption[true]{copyright}
\DeclareComplementaryOption{nocopyright}{copyright}

\DeclareStringOption[Sample Thesis Title - Long, Wide, and Words Capitalized]{title}[Sample Thesis Title - Long, Wide, and Words Capitalized]
\DeclareStringOption[Maya K. Student]{author}[Maya K. Student]
\DeclareStringOption[]{degree}[]
\DeclareStringOption[Electrical and Computer Engineering]{department}[Electrical and Computer Engineering]
\DeclareStringOption[Cullen College of Engineering]{college}[Cullen College of Engineering]
\DeclareStringOption[]{submitdate}[] % if not set, will use today
\DeclareStringOption[]{copyrightyear}[] % if not set, will use today
\DeclareStringOption[References]{refname}[References] % Name of the reference

% List of Professors (Committee members)
\DeclareStringOption[Name of Chair Professor]{chair}[Name of Chair Professor]
\DeclareStringOption[]{cochair}[] % optional
\DeclareStringOption[Name of Prof1]{firstreader}[Name of Prof1]
\DeclareStringOption[Name of Prof2]{secondreader}[Name of Prof2]
\DeclareStringOption[]{thirdreader}[] % optional
\DeclareStringOption[]{fourthreader}[] % optional
\DeclareStringOption[]{fifthreader}[] % optional

\DeclareStringOption[]{ownerPass}[]
\DeclareStringOption[]{userPass}[]

\newcommand{\UHRevThesisSetup}[1]{
  \kvsetkeys{UHRevThesis}{#1}
  % Pass bool options to uhthesis2019
  \ifUHRevThesis@opt@refdoublespace
    \kvsetkeys{UHThesis}{refdoublespace}
  \else
    \kvsetkeys{UHThesis}{refsinglespace}
  \fi
  \ifUHRevThesis@opt@captionhang
    \kvsetkeys{UHThesis}{captionhang}
  \else
    \kvsetkeys{UHThesis}{nocaptionhang}
  \fi
  \ifUHRevThesis@opt@lstoftablefirst
    \kvsetkeys{UHThesis}{lstoftablefirst}
  \else
    \kvsetkeys{UHThesis}{lstoffigurefirst}
  \fi
  \UHThesisSetup{
    refname=\UHRevThesis@opt@refname,
    copyrightyear=\UHRevThesis@opt@copyrightyear
  }
  % Configure other options for uhrevthesis.
  \ifUHRevThesis@opt@hyper
    \hypersetup{
      pdfauthor={\UHRevThesis@opt@author},% 
      pdftitle={\UHRevThesis@opt@title},%
      pdfsubject={\UHRevThesis@opt@department},%
      %pdfkeywords={}%
    }
    \UHRevThesis@cmd@setHyperrefColors
    \renewcommand{\email}[1]{\href{mailto:##1}{\texttt{##1}}}
    \renewcommand{\sectionalt}[1]{\section[\texorpdfstring{\bf \uppercase{##1}}{##1}]{##1}}
  \else
    \renewcommand{\email}[1]{\texttt{##1}}
    \renewcommand{\sectionalt}[1]{\section[\bf \uppercase{##1}]{##1}}
  \fi
  \UHRevThesis@cmd@setupCoverPages
  \UHRevThesis@cmd@setupPassword
}

\DeclareDefaultOption{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessKeyvalOptions*\relax

% Load the class and the UH thesis package.
%
\ifUHRevThesis@opt@draft
  \PassOptionsToClass{draft}{article}
\fi
\LoadClass{article}
\ifUHRevThesis@opt@hyper
  \RequirePackage[colorlinks]{hyperref}
  \PassOptionsToPackage{hyperref}{uhthesis2019}
\fi
\ifUHRevThesis@opt@indentfirst
  \PassOptionsToPackage{indentfirst}{uhthesis2019}
\fi
\ifUHRevThesis@opt@captionhang
  \PassOptionsToPackage{captionhang}{uhthesis2019}
\fi
\ifUHRevThesis@opt@refdoublespace
  \PassOptionsToPackage{refdoublespace}{uhthesis2019}
\fi
\ifUHRevThesis@opt@lstoftablefirst
  \PassOptionsToPackage{lstoftablefirst}{uhthesis2019}
\fi
\PassOptionsToPackage{
  refname=\UHRevThesis@opt@refname,
  copyrightyear=\UHRevThesis@opt@copyrightyear
}{uhthesis2019}
\RequirePackage[current]{uhthesis2019}

%%***************************************
%% Require Packages ...
%%***************************************

% Two pacckages required by UH Thesis 2019
\RequirePackage{setspace}
% setspace:
% Provides support for setting the spacing between lines in a document.
% Package options include singlespacing, onehalfspacing, and doublespacing.
% Alternatively the spacing can be changed as required with the
% \singlespacing, \onehalfspacing, and \doublespacing commands. Other size
% spacings also available.
\RequirePackage{geometry}
% geometry:
% The package provides an easy and flexible user interface to customize page
% layout, implementing auto-centering and auto-balancing mechanisms so that
% the users have only to give the least description for the page layout. 

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
\ifUHRevThesis@opt@hyper
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

% *** Use FLOAT PACKAGES ***
\RequirePackage{float}
% \RequirePackage{caption}
% Package caption has been added to uhthesis2019.sty.
\RequirePackage{subfig}
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
\RequirePackage{multicol}
% Multicol is a package that uses the environment to divide sub-columns.

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

% Configure the hyperref color settings.
\providecommand{\UHRevThesis@cmd@setHyperrefColors}{
  \ifUHRevThesis@opt@hypercolor
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

% *** Use HYPERREF PACKAGES ***
\ifUHRevThesis@opt@hyper
  \typeout{UHRevThesis: Hyperref Mode Enabled.}
  \UHRevThesis@cmd@setHyperrefColors
  \RequirePackage[all]{hypcap}
  % This package tries a solution of the problem with hyperref, that 
  % links to floats points below the caption and not at the beginning 
  % of the float. Therefore this package divides the task into two part, 
  % the link setting with \capstart or automatically at the beginning 
  % of a float and the rest in the \caption command.
\else
  \typeout{UHRevThesis: Hyperref Mode Disabled.}
  \RequirePackage[capitalise, noabbrev, sort&compress]{cleveref}
  \let\autoref\cref
\fi

% *** Use other ENHANCING PACKAGES ***
\RequirePackage{enumitem} 
\setlist[enumerate]{label=(\arabic*)}
% enumitem is used to customize lists %\RequirePackage{enumerate}
% \RequirePackage{siunitx}
% enable users to use Système International d'Unités (SI).
\RequirePackage{colortbl}
\RequirePackage{datetime}
\RequirePackage{siunitx}

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
\ifUHRevThesis@opt@hyper
  \providecommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}}
\else
  \providecommand{\email}[1]{\texttt{#1}}
\fi

%% =========== Define passowords protection ===========
\providecommand{\UHRevThesis@cmd@setupPassword}{
  \ifthenelse{\equal{\UHRevThesis@opt@ownerPass}{}}{}{
    \ifthenelse{\equal{\UHRevThesis@opt@userPass}{}}{
      \ifxetex
        \special{pdf:encrypt ownerpw (\UHRevThesis@opt@ownerPass) length 128 perm 2052}
      \else
        \errmessage{The file password feature is only supported by XeLaTeX. Please do not use it with other compilers.}
      \fi
    }{
      \ifxetex
        \special{pdf:encrypt ownerpw (\UHRevThesis@opt@ownerPass) userpw (\UHRevThesis@opt@userPass) length 128 perm 2052}
      \else
        \errmessage{The file password feature is only supported by XeLaTeX. Please do not use it with other compilers.}
      \fi
    }
  }
}

%% =========== Define hyperref options ===========
\ifUHRevThesis@opt@hyper
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
    pdfauthor={\UHRevThesis@opt@author},%
    pdftitle={\UHRevThesis@opt@title},%
    pdfsubject={\UHRevThesis@opt@department},%
    %pdfkeywords={}%
  }
\fi

%% =========== Define the date format ===========
\newdateformat{monthyeardate}{%
  \monthname[\THEMONTH] \THEYEAR%
}
\newdateformat{usvardate}{%
  \monthname[\THEMONTH] \ordinal{DAY}, \THEYEAR%
}

%% =========== Define cover page ===========
\providecommand{\UHRevThesis@cmd@setupCoverPages}{
  \pagenumbering{roman}
  \title{\UHRevThesis@opt@title}
  \author{\UHRevThesis@opt@author}
  \ifUHRevThesis@opt@thesis
    \ifthenelse{\equal{\UHRevThesis@opt@degree}{}}{
      \degree{Master of Engineering}{thesis}
    }{
      \degree{\UHRevThesis@opt@degree}{thesis}
    }
  \else
    \ifthenelse{\equal{\UHRevThesis@opt@degree}{}}{
      \degree{Doctor of Philosophy}{dissertation}
    }{
      \degree{\UHRevThesis@opt@degree}{dissertation}
    }
  \fi
  \department{\UHRevThesis@opt@department}
  \major{\UHRevThesis@opt@department}
  \college{\UHRevThesis@opt@college}
  \chair{\UHRevThesis@opt@chair}
  \ifthenelse{\equal{\UHRevThesis@opt@cochair}{}}{
    \cochairfalse
  }{
    \cochair{\UHRevThesis@opt@cochair}
    \cochairtrue
  }
  \firstreader{\UHRevThesis@opt@firstreader}
  \secondreader{\UHRevThesis@opt@secondreader}
  \ifthenelse{\equal{\UHRevThesis@opt@thirdreader}{}}{}{
    \thirdreader{\UHRevThesis@opt@thirdreader}
  }
  \ifthenelse{\equal{\UHRevThesis@opt@fourthreader}{}}{}{
    \fourthreader{\UHRevThesis@opt@fourthreader}
  }
  \ifthenelse{\equal{\UHRevThesis@opt@fifthreader}{}}{}{
    \fifthreader{\UHRevThesis@opt@fifthreader}
  }
  \ifthenelse{\equal{\UHRevThesis@opt@thirdreader}{}}{
    \threereadersfalse
  }{
    \threereaderstrue
  }
  \ifthenelse{\equal{\UHRevThesis@opt@fourthreader}{}}{
    \fourreadersfalse
  }{
    \fourreaderstrue
  }
  \ifthenelse{\equal{\UHRevThesis@opt@fifthreader}{}}{
    \fivereadersfalse
  }{
    \fivereaderstrue
  }
  \ifthenelse{\equal{\UHRevThesis@opt@submitdate}{}}{
    \submitdate{\monthyeardate\today}
  }{
    \submitdate{\UHRevThesis@opt@submitdate}
  }
  % Whether to print the copyright page.
  \ifUHRevThesis@opt@copyright
    \copyrighttrue
  \else
    \copyrightfalse
  \fi
  % If there are no tables / figures in the Chapters, 
  % we can avoid creating a List of Tables / Figures.
  \ifUHRevThesis@opt@lstoftable
    \tablelisttrue
  \else
    \tablelistfalse
  \fi
  \ifUHRevThesis@opt@lstoffigure
    \figurelisttrue
  \else
    \figurelistfalse
  \fi
}

%% =========== Define custom commands here ===========
\ifUHRevThesis@opt@hyper
  \providecommand{\sectionalt}[1]{\section[\texorpdfstring{\bf \uppercase{#1}}{#1}]{#1}}
\else
  \providecommand{\sectionalt}[1]{\section[\bf \uppercase{#1}]{#1}}
\fi

%% =========== Correct bad hyphenation here ===========
\hyphenation{op-tical net-works semi-conduc-tor}

%% =========== Run pre-defined commands with default configs ===========
\UHRevThesis@cmd@setupCoverPages
\UHRevThesis@cmd@setupPassword
