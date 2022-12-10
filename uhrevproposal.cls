%% --------------------------------------
% CainMagi's Revised UH Proposal Template
% LaTeX Template
%% --------------------------------------
%  Update statements:
%% --------------------------------------
% Version 1.0.1 (12/9/2022)
%   - Fix a hidden bug. The ams packges are required to be loaded before
%     hyperref.
% Version 1.0.0 (12/7/2022)
%   - Create this template.
%   - Prepare all functionalities of this extended template.
%% -----------------------------------
%  Control options statements:
%% -----------------------------------
% Text configuration for the information
% (It is highly recommended to master them. Use \UHRevProposalSetup{} to
%  change them)
%
%  title, author  : [string], the short title and the short author names of 
%                   this report, which appears in head and PDF metadata.
%                   Remember to use \texorpdfstring to skip the commands
%                   for creating the PDF metadata.
%  degree         : [string], the degree to be fetched. It should be specified
%                   like "Doctor of Philosophy" or "Master of XXX".
%  doctype        : [string], the type of the document. It should be specified
%                   like "Dissertation Proposal" or "Thesis Proposal".
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
%  signature       : [true], when configured, print the signature page.
%                    - Complementary option is "nosignature".
%
% Text configurations for committee members.
% (At least 3 members are required for thesis, and 5 members are required for
% the dissertation.)
%
%  advisor        : [string], the name of the committee chair, also your
%                   advisor.
%  firstreader    : [string], the name of the 1st committee member.
%  secondreader   : [string], the name of the 2nd committee member.
%  thirdreader    : [string], the name of the 3rd committee member. Can be
%                   blank.
%  fourthreader   : [string], the name of the 4th committee member. Can be
%                   blank.
%  fifthreader    : [string], the name of the 5th committee member. Can be
%                   blank.
%  dean           : [string], the name of the dean.
%  chair          : [string], the name of the college chair.
%
%% -----------------------------------
% Basic Configuration
% (Options influencing the style. Use them as \documentclass[...]{uhrevproposal}
%  because \UHRevProposalSetup will not work.)
% (Noted that [] shows the default option.)
%
%  hyper       : [false], make links, section titles and frames colored and
%                hyper-referred.
%                - Complementary option is "nohyper".
%  draft       : [false], enable the draft mode for the report class.
%                - Complementary option is "final".
%  oldmathcal  : [true], make \mathcal and related symbols fall back to
%                the old caligraphy style.
%                - Complementary option is "newmathcal".
%  indentfirst : [true], make the first paragraphs of each (sub) sections
%                with indents.
%                - Complementary option is "noindentfirst".
%
%% -----------------------------------
% Other Configuration
% (Configurations not listed above will be passed to the report class.)
%
%% -----------------------------------
% Command & Environment
%  (C marks a command and E marks an environment.)
%
% \makecoverpages {C}
%   - Used to make a modified title.
% \makecontentspages {C}
%   - Used to make the table of contents.
% \UHRevProposalSetup {C}
%   - Basic setup command of the control options.
% Other commands from "uhproposal" package.
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
% heritaged from UH Thesis (Proposal ver) Template!
%% -----------------------------
% University of Houston PhD/MS thesis style -- modifications to the report style
% For LaTeX version 2.09
%
% Author: Dimitrios Georgakopoulos (dimitris@cs.uh.edu)
%
% The float and footnote macros bellow are stolen from the
% Stanfford University thesis style.

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{uhrevproposal}[2022/12/09 v1.0.1 Revised UH Proposal Class - Author: Yuchen Jin]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{ifthen, calc}
\RequirePackage{ifpdf, ifxetex}
\SetupKeyvalOptions{family=UHRevProposal, prefix=UHRevProposal@opt@, setkeys=\kvsetkeys}

\DeclareBoolOption[false]{draft}
\DeclareComplementaryOption{final}{draft}
\DeclareBoolOption[false]{hyper}
\DeclareComplementaryOption{nohyper}{hyper}
\DeclareBoolOption[true]{oldmathcal}
\DeclareComplementaryOption{newmathcal}{oldmathcal}
\DeclareBoolOption[true]{hypercolor}
\DeclareComplementaryOption{nohypercolor}{hypercolor}
\DeclareBoolOption[true]{indentfirst}
\DeclareComplementaryOption{noindentfirst}{indentfirst}
\DeclareBoolOption[true]{captionhang}
\DeclareComplementaryOption{nocaptionhang}{captionhang}
\DeclareBoolOption[true]{lstoftable}
\DeclareBoolOption[true]{lstoffigure}
\DeclareComplementaryOption{nolstoftable}{lstoftable}
\DeclareComplementaryOption{nolstoffigure}{lstoffigure}
\DeclareBoolOption[true]{lstoftablefirst}
\DeclareComplementaryOption{lstoffigurefirst}{lstoftablefirst}
\DeclareBoolOption[true]{copyright}
\DeclareComplementaryOption{nocopyright}{copyright}
\DeclareBoolOption[true]{signature}
\DeclareComplementaryOption{nosignature}{signature}

\DeclareStringOption[Sample Thesis Title - Long, Wide, and Words Capitalized]{title}[Sample Thesis Title - Long, Wide, and Words Capitalized]
\DeclareStringOption[Maya K. Student]{author}[Maya K. Student]
\DeclareStringOption[Doctor of Philosophy]{degree}[Doctor of Philosophy]
\DeclareStringOption[Dissertation Proposal]{doctype}[Dissertation Proposal]
\DeclareStringOption[Electrical and Computer Engineering]{department}[Electrical and Computer Engineering]
\DeclareStringOption[Cullen College of Engineering]{college}[Cullen College of Engineering]
\DeclareStringOption[]{submitdate}[] % if not set, will use today
\DeclareStringOption[]{copyrightyear}[] % if not set, will use today
\DeclareStringOption[References]{refname}[References] % Name of the reference

% List of Professors (Committee members)
\DeclareStringOption[Name of Chair Professor]{advisor}[Name of Chair Professor]
\DeclareStringOption[Name of Prof1]{firstreader}[Name of Prof1]
\DeclareStringOption[Name of Prof2]{secondreader}[Name of Prof2]
\DeclareStringOption[]{thirdreader}[] % optional
\DeclareStringOption[]{fourthreader}[] % optional
\DeclareStringOption[]{fifthreader}[] % optional
\DeclareStringOption[Name of Dean]{dean}[Name of Dean]
\DeclareStringOption[Name of College Chair]{chair}[Name of College Chair]

\DeclareStringOption[]{ownerPass}[]
\DeclareStringOption[]{userPass}[]

\newcommand{\UHRevProposalSetup}[1]{
  \kvsetkeys{UHRevProposal}{#1}
  % Pass bool options to uhthesis2019
  \ifUHRevProposal@opt@captionhang
    \kvsetkeys{UHProposal}{captionhang}
  \else
    \kvsetkeys{UHProposal}{nocaptionhang}
  \fi
  \ifUHRevProposal@opt@lstoftable
    \kvsetkeys{UHProposal}{lstoftable}
  \else
    \kvsetkeys{UHProposal}{nolstoftable}
  \fi
  \ifUHRevProposal@opt@lstoffigure
    \kvsetkeys{UHProposal}{lstoffigure}
  \else
    \kvsetkeys{UHProposal}{nolstoffigure}
  \fi
  \ifUHRevProposal@opt@lstoftablefirst
    \kvsetkeys{UHProposal}{lstoftablefirst}
  \else
    \kvsetkeys{UHProposal}{lstoffigurefirst}
  \fi
  \UHProposalSetup{
    refname=\UHRevProposal@opt@refname,
    copyrightyear=\UHRevProposal@opt@copyrightyear
  }
  % Configure other options for uhrevthesis.
  \ifUHRevProposal@opt@hyper
    \hypersetup{
      pdfauthor={\UHRevProposal@opt@author},% 
      pdftitle={\UHRevProposal@opt@title},%
      pdfsubject={\UHRevProposal@opt@department},%
      %pdfkeywords={}%
    }
    \UHRevProposal@cmd@setHyperrefColors
    \renewcommand{\email}[1]{\href{mailto:##1}{\texttt{##1}}}
  \else
    \renewcommand{\email}[1]{\texttt{##1}}
  \fi
  \UHRevProposal@cmd@setupCoverPages
  \UHRevProposal@cmd@setupPassword
}

\DeclareDefaultOption{
  \PassOptionsToClass{\CurrentOption}{report}
}
\ProcessKeyvalOptions*\relax

% Load the class and the UH thesis package.
%
\ifUHRevProposal@opt@draft
  \PassOptionsToClass{draft}{report}
\fi
\LoadClass{report}

% Need to make ams packages come before hyperref
\RequirePackage{amsmath}
\RequirePackage{amsfonts,amssymb,amsbsy}
\RequirePackage{amsthm}

\ifUHRevProposal@opt@hyper
  \RequirePackage[colorlinks]{hyperref}
  \PassOptionsToPackage{hyperref}{uhproposal}
\fi
\ifUHRevProposal@opt@indentfirst
  \PassOptionsToPackage{indentfirst}{uhproposal}
\fi
\ifUHRevProposal@opt@captionhang
  \PassOptionsToPackage{captionhang}{uhproposal}
\fi
\ifUHRevProposal@opt@lstoftablefirst
  \PassOptionsToPackage{lstoftablefirst}{uhproposal}
\fi
\ifUHRevProposal@opt@lstoftable
  \PassOptionsToPackage{lstoftable}{uhproposal}
\else
  \PassOptionsToPackage{nolstoftable}{uhproposal}
\fi
\ifUHRevProposal@opt@lstoffigure
  \PassOptionsToPackage{lstoffigure}{uhproposal}
\else
  \PassOptionsToPackage{nolstoffigure}{uhproposal}
\fi
\PassOptionsToPackage{
  refname=\UHRevProposal@opt@refname,
  copyrightyear=\UHRevProposal@opt@copyrightyear
}{uhproposal}
\RequirePackage{uhproposal}

%%***************************************
%% Require Packages ...
%%***************************************

% BibLaTeX
\RequirePackage[backend=bibtex,style=ieee,sorting=none]{biblatex}

% Format adjustment
\RequirePackage{caption}
\RequirePackage{microtype}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{appendix}
\RequirePackage{multicol}

% Math
\RequirePackage{dsfont}
\RequirePackage{bm}
\ifUHRevProposal@opt@oldmathcal\else
  \PassOptionsToPackage{cal=rsfs}{mathalpha}
\fi
\RequirePackage[scr=rsfs]{mathalpha}
\RequirePackage{upgreek}
\RequirePackage[normalem]{ulem}

% nGraphic Settings
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
  \graphicspath{{pics}}
  \epstopdfsetup{update}
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

% Tables
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{tabulary}
\RequirePackage{threeparttable}
\RequirePackage{multirow}

% Float environment
\RequirePackage{float}
\RequirePackage{stfloats}
\RequirePackage{subfig}
\RequirePackage[section]{placeins}

% xcolor
\ifUHRevProposal@opt@hyper
  \RequirePackage[svgnames,hyperref]{xcolor}
\else
  \RequirePackage[svgnames]{xcolor}
\fi
\definecolor{UHviolet}{RGB}{100,16,86}
\definecolor{UHred}{RGB}{200,16,46}
\definecolor{UHgray}{RGB}{84,88,90}
\definecolor{UHsemiWhite}{RGB}{255,249,217}
\definecolor{UHwhite}{RGB}{255,255,255}

% Algorithm
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\providecommand*{\algorithmautorefname}{Algorithm}

% Enum environment
\RequirePackage{enumitem} 
\setlist[enumerate]{label=(\arabic*)}

% Others
\RequirePackage{colortbl}
\RequirePackage{datetime}
\RequirePackage{siunitx}

%%***************************************
%% Configurations ...
%%***************************************

% Force the line penalty.
\interdisplaylinepenalty=2500

% Configure the hyperref color settings.
\providecommand{\UHRevProposal@cmd@setHyperrefColors}{
  \ifUHRevProposal@opt@hypercolor
    \hypersetup{
      citecolor={DarkGreen}, linkcolor={blue}, filecolor={DarkRed},
      menucolor={blue}, urlcolor={black}, bookmarksopen, linktocpage
    }
  \else
    \hypersetup{
      citecolor={black}, linkcolor={black}, filecolor={black},
      menucolor={black}, urlcolor={black}, bookmarksopen, linktocpage
    }
  \fi
}

% Extra hyperref configs and pacakges.
\ifUHRevProposal@opt@hyper
  \typeout{UHRevProposal: Hyperref Mode Enabled.}
  \UHRevProposal@cmd@setHyperrefColors
  \RequirePackage[all]{hypcap}
  % This package tries a solution of the problem with hyperref, that 
  % links to floats points below the caption and not at the beginning 
  % of the float. Therefore this package divides the task into two part, 
  % the link setting with \capstart or automatically at the beginning 
  % of a float and the rest in the \caption command.
\else
  \typeout{UHRevProposal: Hyperref Mode Disabled.}
  \RequirePackage[capitalise, noabbrev, sort&compress]{cleveref}
  \let\autoref\cref
\fi

% Configure the depth of the tocs.
\setcounter{secnumdepth}{4}

%%***************************************
%% Make further settings ...
%%***************************************

%% =========== Define tabularx configurations ===========
\renewcommand\tabularxcolumn[1]{m{#1}}  % Automatic column configs
\renewcommand\arraystretch{1.3}  % Global table row stretch
\newcolumntype{Y}{>{\centering\arraybackslash}X}  % New column type

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
\ifUHRevProposal@opt@hyper
  \providecommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}}
\else
  \providecommand{\email}[1]{\texttt{#1}}
\fi

%% =========== Define passowords protection ===========
\providecommand{\UHRevProposal@cmd@setupPassword}{
  \ifthenelse{\equal{\UHRevProposal@opt@ownerPass}{}}{}{
    \ifthenelse{\equal{\UHRevProposal@opt@userPass}{}}{
      \ifxetex
        \special{pdf:encrypt ownerpw (\UHRevProposal@opt@ownerPass) length 128 perm 2052}
      \else
        \errmessage{The file password feature is only supported by XeLaTeX. Please do not use it with other compilers.}
      \fi
    }{
      \ifxetex
        \special{pdf:encrypt ownerpw (\UHRevProposal@opt@ownerPass) userpw (\UHRevProposal@opt@userPass) length 128 perm 2052}
      \else
        \errmessage{The file password feature is only supported by XeLaTeX. Please do not use it with other compilers.}
      \fi
    }
  }
}

%% =========== Define hyperref options ===========
\ifUHRevProposal@opt@hyper
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
    pdfauthor={\UHRevProposal@opt@author},%
    pdftitle={\UHRevProposal@opt@title},%
    pdfsubject={\UHRevProposal@opt@department},%
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

%%***************************************
%% Make special definitions ...
%%***************************************

\DeclareFieldFormat[book]{title}{\uline{#1}}

\renewbibmacro*{author}{%
  \ifboolexpr{
    test \ifuseauthor
    and
    not test {\ifnameundef{author}}
  }
    {%
      \printnames{author}%
      \iffieldundef{authortype}
        {}
        {%
          \setunit{\addcomma\space}%
          \usebibmacro{authorstrg}%
        }%
    }
    {\global\undef\bbx@lasthash}%
}

\titleformat{\chapter}[display]{\bfseries\Large}{\vspace{-0.25in}\chaptertitlename\ \thechapter}{0em}{}
\titlespacing{\chapter}{0pt}{0em}{1em}
\titleformat{\section}{\bfseries\large}{\thesection}{1em}{}
\titlespacing{\section}{0pt}{0em}{0em}
\titleformat{\subsection}{\bfseries}{\thesubsection}{1em}{}
\titlespacing{\subsection}{0pt}{0em}{0em}
\titlespacing{\subsubsection}{0pt}{0em}{0em}

\titlecontents{figure}[5.8em]{}{\contentslabel[Figure~\thecontentslabel.]{5.8em}}{0em}{\titlerule*[8pt]{.}\contentspage}
\titlecontents{table}[5.8em]{}{\contentslabel[Table~\thecontentslabel.]{5.8em}}{0em}{\titlerule*[8pt]{.}\contentspage}

\renewcommand{\vec}[1]{{\textbf{#1}}}
\newcommand{\norm}[1]{\hat{\vec{#1}}}
\newcommand{\vecg}[1]{{\boldsymbol{#1}}}
\newcommand{\mat}[1]{[{#1}]}
\newcommand{\curl}[1]{\nabla\times\vec{#1}}
\newcommand{\curlg}[1]{\nabla\times\vecg{#1}}
\renewcommand{\div}[1]{\nabla\cdot\vec{#1}}
\newcommand{\grad}[1]{\nabla{#1}}
\newcommand{\laplace}[1]{\nabla^2{#1}}
\DeclareMathOperator*{\Res}{Res}

%%***************************************
%% Make final settings ...
%%***************************************

%% =========== Define cover page ===========
\providecommand{\UHRevProposal@cmd@setupCoverPages}{
  \pagenumbering{roman}
  \title{\UHRevProposal@opt@title}
  \author{\UHRevProposal@opt@author}
  \degree{\UHRevProposal@opt@degree}{\UHRevProposal@opt@doctype}
  \department{\UHRevProposal@opt@department}
  \college{\UHRevProposal@opt@college}
  \advisor{\UHRevProposal@opt@advisor}
  \firstreader{\UHRevProposal@opt@firstreader}
  \secondreader{\UHRevProposal@opt@secondreader}
  \thirdreader{\UHRevProposal@opt@thirdreader}
  \fourthreader{\UHRevProposal@opt@fourthreader}
  \fifthreader{\UHRevProposal@opt@fifthreader}
  \dean{\UHRevProposal@opt@dean}
  \chair{\UHRevProposal@opt@chair}
  \ifthenelse{\equal{\UHRevProposal@opt@thirdreader}{}}{
    \threereadersfalse
  }{
    \threereaderstrue
  }
  \ifthenelse{\equal{\UHRevProposal@opt@fourthreader}{}}{
    \fourreadersfalse
  }{
    \fourreaderstrue
  }
  \ifthenelse{\equal{\UHRevProposal@opt@fifthreader}{}}{
    \fivereadersfalse
  }{
    \fivereaderstrue
  }

  \ifthenelse{\equal{\UHRevProposal@opt@submitdate}{}}{
    \submitdate{\monthyeardate\today}
  }{
    \submitdate{\UHRevProposal@opt@submitdate}
  }
  % Whether to print the copyright and signature page.
  \ifUHRevProposal@opt@copyright
    \copyrighttrue
  \else
    \copyrightfalse
  \fi
  \ifUHRevProposal@opt@signature
    \signaturetrue
  \else
    \signaturefalse
  \fi
}

%% =========== Define custom commands here ===========
\newcommand*{\rttensor}[1]{\overline{#1}}
\newcommand{\figwidth}{\linewidth}

%% =========== Correct bad hyphenation here ===========
\hyphenation{op-tical net-works semi-conduc-tor}

%% =========== Run pre-defined commands with default configs ===========
\UHRevProposal@cmd@setupCoverPages
\UHRevProposal@cmd@setupPassword

%% =========== Hot fixtures that should be run at last ===========

\makeatletter

\titlecontents{chapter}[0em]{\addvspace{0em}\bfseries}
{\bfseries\@chapapp\ \thecontentslabel\quad} 
{\hspace{0em}}{\titlerule*[8pt]{.}\contentspage}[\addvspace{0em}]% 

\g@addto@macro\appendices{
  \addtocontents{toc}{\protect\renewcommand{\protect\@chapapp}{\appendixname}}}

\makeatother
