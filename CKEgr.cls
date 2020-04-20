%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cain King's Elegant Report
% LaTeX Template
% -----------------------------------
% % Update statements:
% -----------------------------------
% Version 1.7 (4/19/20)
%   - Make the APIs more neat.
%   - Remove useless features.
%   - Redefine the support of multi-figures.
%   - Remove the Chinese related supports.
%   - Merge some commands, like `\nhyperset`, `\Coding` with `\ckesetup`,
%     now users do not need to call them explicitly.
% Version 1.5 (6/30/17)
%   - Adding 5 new options for users: LongFlo, CSensLabel, UpInclude
%     ChineseTOC, RefNum and sourcehan
%   - Change the form of the footnotes of title and author.
%     Now users could use `titlenote` and `authnote` to define them
%     flexiblely.
%   - Adding command `nbrac` so that users could use them to add
%     bracket notes.
% Version 1.2 (8/27/16)
%   - Optimize the code of the monthname by utilize `datetime`.
%   - Adding a new command to produce the content: \CKEcontents.
%     -- It allows users to produce the main content and the other
%        types of lists.
%   - Adding a new environment named `shadequote`:
%     -- A refined quote environment to emphasize the cited part.
% Version 1.1 (6/23/16)
%   - Adding the coding command: \Coding:{Ownerpass, Userpass}
%     -- A userpass with "none" will cancel the userpass (default)
%   - Adding a new environment: Signature
% Version 1.0 (6/7/16)
%
% -----------------------------------
% % Control options statements:
% -----------------------------------
% % ----------------------
% % Text Configuration
%  (It is highly recommended to master them. Use \ckesetup{} to
%   change them)
% %
%  turn, numb : [number]s, which are used to state the sequence of
%    the experiment and the number of the report.
%  modified : [number]s, used to state the modify number.
%  originyear, originmonth, origindate: [number]s, used to state the
%    date of the original draft. These options would be enabled
%    only when `modified` is not 0.
%  titlenote, authnote: [string], the footnotes on the first page.
%    -- if they are set `none`, the footnotes would be produced
%       automatically (default).
%    -- if they are set ``, the footnotes would be omitted.
%  title, subject, keword, author, [string]s, used as their names.
%  campus, scampus: [string]s, university name and its short version.
%  colledge: [string], colledge name
%  location, slocation: [string]s, the location of the author and a short
%    version.
%  amsno: [string], AMS number of the document.
%  quote: [string], a proberb representing the spirits of the university.
%  authorinfo: [string], the author's information, which is a simple
%    sentence in English, it is not recommended to replace it with a
%    Chinese version.
% % ----------------------
% % Basic Configuration
%  (Options influencing the style. Use them as \documentclass[...]{CKEgr}
%     because \ckesetup will not work.)
% %
%  CSensLabel: Change the forms of all labels so they could show the titles
%   of sections
%  refNum: Change the title of reference so that it could include its number.
%  codeStyle: Use it to change the style of code list.
%    - Avaliable: box, default.
%  linkColor: Use it to enable the colored reference.
%  innerSig: Whether to state a inner signature in the title page. [noInnerSig]
%    is a complementary option (default). Noted that \InnerSignature will
%    exert an influence on this option.
% % ----------------------
% % Command & Environment
%  (C marks a command and E marks an environment.)
% %
% % \maketitle {C}
%   - Used to make a modified title.
% % \makeabstract {C}
%   - Used to make a default abstract.
% % \bibliographystyle{IEEEtran}
% % \bibliography{IEEEabrv,bib/ref} {C}
%   - Highly recommended to use it to produce an reference area.
% % \ckesetup {C}
%   - Basic setup command of the control options.
%   - After the setup, the password, the metadata, the footnotes and the
%     code style would be renewed.
% % \titlepage {C}
%   - Make a title page.
%     -- Alternative option: \titlepage{style}.
%        Can be chosen as 1 (titleGP), 2 (titlePM) or 3 (colored).
% % \reneweqnum, \renewtabnum, \renewfignum, \renewsecnum {C}
%   - Use them to reset the counter of equation, table, figure or sections.
% % \import {C}
%   - An upgraded version of `include`.
%   - The imported files should be stored in the folder named `Documents`.
% % \includepage{pages}{filename} {C}
%   - Use it to import pdf pages.
%   - pages: the imported pages in the file. `-` means all imported.
%   - filename: the name of imported file (should have a postfix as `.pdf`).
% % \begin{signature}{1}{2}{3}{4} ... \end{signature} {E}
%   - Use it to include an internally defined signature environment,
%     -- Alternative option: four options marked by 1 to 4.
%     -- Option 1: The whole width of the signature.
%     -- Option 2: The width of the graph of the signature.
%     -- Option 3: The width of the comment of the signature.
%     -- Option 4: The path of the included graph.
% % \innerSignature {C}
%   - Including a signature for myself (referred to the author of the
%     template :-). I am glad to recommend you to modify it for yourself.
%     Because this setting inference the option `Innersig`. )
%     -- Defined format: \begin{Signature}{#1}{1.6in}{#2}{Sign.eps} ...
%        It is also an example of this environment.
% % \begin{multicol}{num} ... \end{multicol} {E}
%   - Use it to produce a multi-column document. Noted that in this
%     environment the floated table/figure is not permitted. Just use
%     a definite setting to produce a table/figure. For example:
%     \begin{table}[H] ... \end{table}
%     -- Alternative option:
%     -- Option `num`: The number of column.
% % \CKEcontents{type}{app} {C}
%   - Including a content. Now this module provide 3 types:
%     -- Alternative option:
%     -- e.g. \CKEcontents{}{}: The main content.
%     -- e.g. \CKEcontents{tab/fig}{}: The list of table/figure.
%     -- e.g. \CKEcontents{thser}{title}: Use `thser` to include the output
%             theorem name set, `title' is the subtitle of the list. This
%             mode produces a list of several theorems derived from `ntheorem'.
%     -- Alternative option:
%        \CKEcontents[opt]{...}{...}
%        Adding control sequences could provide more effects, now it allows:
%     -- Option `2col`: Repack the list into a 2-column sub-part.
% % \begin{shadequote}[loc]{author} ... \end{shadequote} {E}
%   - Use it to include an embedded quote box.
%     -- Alternative option:
%     -- Option `loc`: The location of the author name, use `r`, `c` or `l`.
%     -- Option `author`: The name of the author, it could be blank.
% ---------Thank you for using this template!---------
%
% -----------------------------------
% % Publications:
% -----------------------------------
% Author:
% Cain King (cainmagi@gmail.com / cain.king@foxmail.com)
%
% Adapted from:
% Template of Chinese Journal of Applied Probability and Statistics 2.05
% Tang Yincai aps@stat.ecnu.edu.cn 
%
% License:
% MIT License
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CKEgr}[2020/04/19 v1.7 Cain King's Elegant Report class]
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{ifthen}
\SetupKeyvalOptions{family=CKE, prefix=CKE@opt@, setkeys=\kvsetkeys}
\newcommand{\ckesetup}[1]{
  \kvsetkeys{CKE}{#1}
  \CKE@command@footnote
  \CKE@command@setcode
  \CKE@command@setHyperref
  \CKE@command@encryption
}

\DeclareBoolOption[false]{draft}
\DeclareComplementaryOption{final}{draft}
\DeclareStringOption[default]{codeStyle}[default]
\DeclareBoolOption[false]{linkColor}
\DeclareComplementaryOption{linkGray}{linkColor}
\DeclareBoolOption[false]{innerSig}
\DeclareComplementaryOption{noInnerSig}{innerSig}
\DeclareBoolOption[false]{CSensLabel}
\DeclareComplementaryOption{TSensLabel}{CSensLabel}
\DeclareBoolOption[false]{refNum}
\DeclareComplementaryOption{noRefNum}{refNum}

\DeclareStringOption[CKETemplate001]{ownerpass}[CKETemplate001]
\DeclareStringOption[none]{userpass}[none]

\DeclareStringOption[1]{turn}[1]
\DeclareStringOption[1]{numb}[1]
\DeclareStringOption[2017]{originyear}[2017]
\DeclareStringOption[1]{originmonth}[1]
\DeclareStringOption[1]{origindate}[1]
\DeclareStringOption[0]{modified}[0]
\DeclareStringOption[(1995--),~Male.,~Tel:XXX-XXX-XXXX,~E-mail:~\href{mailto:cainmagi@gmail.com}{cainmagi@gmail.com}]{authorinfo}[(1995--),~Male.,~Tel:XXX-XXX-XXXX,~E-mail:~\href{mailto:cainmagi@gmail.com}{cainmagi@gmail.com}]

\DeclareStringOption[none]{titlenote}[none]
\DeclareStringOption[none]{authornote}[none]

\DeclareStringOption[Report~for~a~Particular~Subject]{title}[Report~for~a~Particular~Subject]
\DeclareStringOption[Yuchen~Jin]{author}[Yuchen~Jin]
\DeclareStringOption[math]{subject}[math]
\DeclareStringOption[University~of~Houston]{campus}[University~of~Houston]
\DeclareStringOption[UH]{scampus}[UH]
\DeclareStringOption[4800~Calhoun~Road,~Houston,~TX,~77002]{location}[4800~Calhoun~Road,~Houston,~TX,~77002]
\DeclareStringOption[ECE~6000]{slocation}[ECE~6000]
\DeclareStringOption[Department~of~Electrical~and~Computer~Engineering]{colledge}[Department~of~Electrical~and~Computer~Engineering]
\DeclareStringOption[Cougars fight for dear old U of H]{quote}[Cougars fight for dear old U of H]

\DeclareStringOption[keywords]{keyword}[keywords]
\DeclareStringOption[none]{amsno}[none]
\DeclareStringOption[Example abstract.]{abstract}[Example abstract.]

% Protected variables, these variables should not be changed be user
\providecommand{\CKE@var@textorigin}{}
\providecommand{\CKE@var@textmodified}{}
\providecommand{\CKE@var@thksTitle}{}
\providecommand{\CKE@var@thksAuthor}{}
\providecommand{\recyear}{\number\year}   % Get current year
\providecommand{\recmonth}{\number\month} % Get current month
\providecommand{\recdate}{\number\day}    % Get current day

\DeclareDefaultOption{\relax}
\ProcessKeyvalOptions*\relax

\ifCKE@opt@draft
  \PassOptionsToClass{draft}{article}
\fi
\LoadClass[letterpaper, 10pt]{article} % A4 paper and 11pt font size
\RequirePackage{multicol}
\RequirePackage{ifxetex,ifluatex}
\RequirePackage{framed}
\RequirePackage{calc}
\RequirePackage{bm}
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

\ifxetexorluatex%
  \RequirePackage{fontspec}
  \RequirePackage{libertine} % or use \setmainfont to choose any font on your system
  \newfontfamily\quotefont[Ligatures=TeX]{Linux Libertine O} % selects Libertine as the quote font
  \setmonofont{DejaVu Sans Mono}
\else
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[T1]{fontenc}
  \RequirePackage{libertine} % or any other font package
  \newcommand*\quotefont{\fontfamily{LinuxLibertineT-LF}} % selects Libertine as the quote font
  \RequirePackage{beramono}
\fi
%\RequirePackage[T1]{fontenc} % Use 8-bit encoding that has 256 glyphs
%\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amsmath, bm}
\RequirePackage{amssymb, mathrsfs} % Math packages
\RequirePackage{hyperref} % Reference Package
\RequirePackage{multirow, hhline, tabularx, array} % Table Package
\RequirePackage{colortbl}
\RequirePackage[small,compact]{titlesec}
\RequirePackage{fancyhdr, fancybox} % Custom headers and footers
\RequirePackage{setspace}% Space between rows
\RequirePackage{paralist}
\RequirePackage{abstract}% Resize abstract and appendix environment
\RequirePackage{datetime}

\RequirePackage{listings}
\RequirePackage{enumerate}
\RequirePackage[square, comma, sort&compress, numbers]{natbib}
\RequirePackage[toc, page, title, titletoc, header]{appendix}

\RequirePackage[svgnames]{xcolor}
\RequirePackage{tikz,mwe}
\RequirePackage{algorithm, algorithmic}

\definecolor{cvgreen}{HTML}{92114F}
\definecolor{cvgray}{HTML}{D8E4EE}
\definecolor{cvtext}{HTML}{92909B}
\usetikzlibrary{shadows}

\setlength{\headheight}{18pt}
\linespread{1.1}
\headsep 6 true mm
\footskip 32pt
\addtolength{\topmargin}{-4 true mm}
\oddsidemargin 0.4 true cm
\evensidemargin 0.4 true cm
\textwidth 15.0 true cm
\textheight 21.5 true cm

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%       Definiton for the encryption                         %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\CKE@command@encryption{%
  \ifxetex
    \ifdefstring{\CKE@opt@ownerpass}{none}{}{
      \ifdefstring{\CKE@opt@userpass}{none}{
        \special{pdf:encrypt ownerpw (\CKE@opt@ownerpass) length 128 perm 2052}
      }{
        \special{pdf:encrypt ownerpw (\CKE@opt@userpass) userpw (\CKE@opt@userpass) length 128 perm 2052}
      }
    }
  \fi
}
\CKE@command@encryption

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%       Definition for the signature                         %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Properties:
% 1: Total length
% 2: Signature graph length
% 3: Text length
% 4: Graph path of Signature

\newenvironment{signature}[4]{
  \begin{minipage}[htbp]{#1}
    \begin{minipage}[htbp]{#2}
      \includegraphics[width=#2,draft=false]{#4}
    \end{minipage}%
    \hfill
    \begin{minipage}[htbp]{#3}
      \small
}{
    \textbf{Time:} \shortmonthname{}. {\number\day} {\number\year}, \hhmmsstime{}
   \end{minipage}%
 \end{minipage}%
}

\newcommand{\innerSignature}[2]{
  \begin{signature}{#1}{1.2in}{#2}{Sign.eps}
    \textbf{Name:} \CKE@opt@author \\
    \textbf{Position:} \CKE@opt@campus \\
    \textbf{E-mail:} cainmagi@gmail.com \\
    \textbf{Tel:} XXX-XXX-XXXX \\
  \end{signature}
}

\providecommand{\CKE@command@InnerSigCoordinated}[1]{
  \ifnumequal{#1}{1}{
    \innerSignature{3.4in}{12em}
  }{
    \innerSignature{3.4in}{15em}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%       Definition for the abstract                          %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\absleftindent}{0pt}
\setlength{\absrightindent}{0pt}
\setlength{\absparindent}{2em}
\setlength{\absparsep}{16pt}
\setlength{\abstitleskip}{-\absparindent}
\renewcommand{\abstractnamefont}{\normalfont\large\bfseries}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%       Definition for the enumitem                          %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\pltopsep}{1.7ex}
\let\itemize\compactitem
\let\enditemize\endcompactitem
\let\enumerate\compactenum
\let\endenumerate\endcompactenum
\let\description\compactdesc
\let\enddescription\endcompactdesc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%       Definition for the pseudo-code                       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}

\def\CKE@command@setcode{
  \ifdefstring{\CKE@opt@codeStyle}{box}{
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
    \ifdefstring{\CKE@opt@codeStyle}{default}{
      \lstset{numbers=left,
        numberstyle= \tiny,
        basicstyle={\footnotesize\ttfamily},
        keywordstyle= \color{ blue!70},commentstyle=\color{red!50!green!50!blue!50},
        frame=shadowbox,
        rulesepcolor= \color{ red!20!green!20!blue!20},
        breaklines=true %对过长的代码自动换行
      }
    }
  }
}
\CKE@command@setcode

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%       Definion for the footnotes on the first page         %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\CKE@command@footnote{%
  \ifnumequal{\CKE@opt@modified}{0}{
    % The case when the draft has not been modifed.
    \renewcommand{\CKE@var@textorigin}{%
      This report is drafted on \shortmonthname[\recmonth]~{\recdate},~\recyear%
    }
    \renewcommand{\CKE@var@textmodified}{}
    \renewcommand{\CKE@var@thksTitle}{\CKE@var@textorigin.}
  }{
    % The case when the draft is modified today.
    \renewcommand{\CKE@var@textorigin}{%
      This report is drafted on \shortmonthname[\CKE@opt@originmonth]~\CKE@opt@origindate,~\CKE@opt@originyear%
    }
    \renewcommand{\CKE@var@textmodified}{%
      newly modified on \recyear.~\shortmonthname[\recmonth].~{\recdate}.~Version~\CKE@opt@modified%
    }
    \renewcommand{\CKE@var@thksTitle}{\CKE@var@textorigin,~\CKE@var@textmodified.}
  }
  % Override the footnotes if user define them explicitly.
  \ifthenelse{\equal{\CKE@opt@titlenote}{none}}{}{
    \renewcommand{\CKE@var@thksTitle}{\CKE@opt@titlenote}
  }
  \ifthenelse{\equal{\CKE@opt@authornote}{none}}{
    \renewcommand{\CKE@var@thksAuthor}{\CKE@opt@author~\CKE@opt@authorinfo}
  }{
    \renewcommand{\CKE@var@thksAuthor}{\CKE@opt@authornote}
  }
}
\CKE@command@footnote

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%       Definition for the table and figure                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{mygray}{gray}{.9}
\def\hlinedge#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
   \reserved@a\@xhline
}
\def\hlinerev#1{%
  \ifnumequal{#1}{1}{
    \\ \rowcolor{mygray}
  }{
    \\
  }
}

\RequirePackage{float}
\RequirePackage{stfloats}
\RequirePackage{subfig}
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
  \graphicspath{{pics/}}
  \DeclareGraphicsExtensions{.pdf,.jpeg,.jpg,.png,.eps}
\else
  \ifxetex
    \RequirePackage{graphicx}
  \else
    \RequirePackage[dvipdfmx]{graphicx}
    \RequirePackage{bmpsize}
  \fi
  \graphicspath{{pics/}}
  \DeclareGraphicsExtensions{.pdf,.jpeg,.jpg,.png,.eps}
\fi

\newcommand{\renewsecnum}[1]{\setcounter{section}{#1}}
\newcommand{\renewtabnum}[1]{\setcounter{table}{#1-1}}
\newcommand{\renewfignum}[1]{\setcounter{figure}{#1-1}}
\newcommand{\reneweqnum}[1]{\setcounter{equation}{#1-1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     Definition for the hyperref package                    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\CKE@command@setHyperref{
  % Basic settings
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
  % Detect the color mode
  \ifCKE@opt@linkColor
    \typeout{Elegant Color Link Started.}
    \hypersetup{colorlinks}
  \else
    \hypersetup{hidelinks}
  \fi
  \ifpdf
  \else
    \ifxetex
    \else
      \hypersetup{dvipdfmx}
    \fi
  \fi
  % Detect the metadata
  \hypersetup{
    pdfauthor={\CKE@opt@author},%
    pdftitle={\CKE@opt@title},%
    pdfsubject={\CKE@opt@subject},%
    pdfkeywords={\CKE@opt@keyword}%
  }
}
\CKE@command@setHyperref

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     Definition for the heading and foot (first page)       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\fancypagestyle{plain}{%
  \fancyhf{}
  \lhead{\scriptsize{Experiment Report of \CKE@opt@scampus}}
  \rhead{\scriptsize{Exp.\CKE@opt@turn~No.\CKE@opt@numb,~\shortmonthname[\recmonth].~Year~\recyear}}
  \lfoot{}
  \cfoot{}
  \rfoot{}
  \renewcommand{\headrulewidth}{0pt}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Definition for the headings and foots (following pages)   %%
%%   R,C,L means left, center, right. O,E means odd, even     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\scriptsize{\CKE@opt@author~:~\CKE@opt@title}}
\fancyhead[C]{\scriptsize{Experiment Report of \CKE@opt@scampus}}
\fancyhead[R]{\scriptsize{\thepage}}
\lfoot{}
\cfoot{}
\rfoot{}
\renewcommand{\headrulewidth}{0.4pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Definition for title and section styles             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\section}[hang]{\bf \large \centering} % make section title centered
  {\large \S\,\thesection.}{1em}{}{}
\titlespacing{\section}
  {0pt}{1.5ex plus .1ex minus .2ex}{\wordsep}
\titleformat{\subsection}[hang]{}
  {\thesubsection}{1em}{}{}
\titlespacing{\subsection}%
  {2em}{1.5ex plus .1ex minus .2ex}{\wordsep}
\ifthenelse{\equal{\CKE@var@thksTitle}{}}{
  \title{
    \textbf{\CKE@opt@title}
  }
}{
  \title{
    \textbf{\CKE@opt@title}~\thanks{\CKE@var@thksTitle}
  }
}
\ifthenelse{\equal{\CKE@var@thksAuthor}{}}{
  \author{\textit{\CKE@opt@author}\\[-1pt]\small \textit{\CKE@opt@campus} \\[-1pt]\small \textit{\CKE@opt@location} \\[-2pt]}
}{
  \author{\textit{\CKE@opt@author}~\thanks{\CKE@var@thksAuthor}\\[-1pt]\small \textit{\CKE@opt@campus} \\[-1pt]\small \textit{\CKE@opt@location} \\[-2pt]}
}

\renewcommand{\emph}[1]{\textcolor{Navy}{\textit{#1}}}
\setcounter{tocdepth}{5}
\setcounter{secnumdepth}{5}

\newcommand*{\plogo}{\large \fbox{$\mathcal{UH}$}} % Generic publisher logo

\newcommand*{\tpcontents}[1]{
  \ifnumequal{#1}{1}{
    \begingroup % Create the command for including the title page in the document
      \centering % Center all text
      \vspace*{\baselineskip} % White space at the top of the page
      \rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt} % Thick horizontal line
      \rule{\textwidth}{0.4pt}\\[\baselineskip] % Thin horizontal line
      {\LARGE \textbf{\textsc{Report from \CKE@opt@scampus}}\\ \Large \CKE@opt@subject \\[0.3\baselineskip] \Large \textit{\CKE@opt@quote}}\\[0.2\baselineskip] % Title
      \rule{\textwidth}{0.4pt}\vspace*{-\baselineskip}\vspace{3.2pt} % Thin horizontal line
      \rule{\textwidth}{1.6pt}\\[\baselineskip] % Thick horizontal line
      % Small caps
      \large \textbf{\CKE@opt@title} \\ % Tagline(s) or further description
      \large \textit{\CKE@opt@slocation} \\[\baselineskip] % Tagline(s) or further description
      \large \recyear.\recmonth.\recdate.\par % Location and year
      \vspace*{2\baselineskip} % Whitespace between location/year and editors
      \large \textit{Authorized by} \\[\baselineskip]
      {\Large \CKE@opt@author \par} % Editor list
      \vspace*{1\baselineskip} % Whitespace between location/year and editors
      {\large \CKE@opt@campus \\ \CKE@opt@colledge \par} % Editor affiliation
      \ifCKE@opt@innerSig
        \vspace{2\baselineskip}
        \CKE@command@InnerSigCoordinated{#1}
      \fi
      \vfill % Whitespace between editor names and publisher logo
      \plogo \\[0.3\baselineskip] % Publisher logo
      {\recyear} \\[0.3\baselineskip] % Year published
      {\large Completed}\par % Publisher
    \endgroup
  }{
    \begin{tikzpicture}[remember picture,overlay]
      \fill[cvgreen] (current page.north west) rectangle ([xshift=5cm]current page.south west);
      \fill[cvgray] ([yshift=-5cm]current page.north west) rectangle ([yshift=-10cm]current page.north east);
      \node[cvtext,right] at ([yshift=-7cm]current page.north west) {\bfseries \Huge \quad \CKE@opt@title};
      \node[cvtext,above left] at ([xshift=-1cm,yshift=-9.5cm]current page.north east) {\huge\bfseries \CKE@opt@author};
      \ifCKE@opt@InnerSig
        \node[inner sep=2cm,below right] (image) at ([xshift=5cm,yshift=-10cm]current page.north west) {\CKE@command@InnerSigCoordinated{#1}};
      \else
        \node[inner sep=2cm,below right] (image) at ([xshift=5cm,yshift=-10cm]current page.north west) {};
      \fi
      %\node[fill=white,drop shadow,align=center,text width=6.4cm,inner sep=0.3cm,below] (name) at (image.south) {\LARGE \LaTeX Studio};
      \node[text width=15cm,inner sep=0.3cm,below right] at (image.south west) {\Large\obeylines%
        \CKE@opt@campus \\[0.8\baselineskip]
        \CKE@opt@colledge \\[0.8\baselineskip]
        \CKE@opt@subject \\[0.8\baselineskip]
        \CKE@opt@slocation
      };
      \node[white,text width=5cm,inner sep=0.3cm,above right] at ([yshift=1cm]current page.south west) {\large\obeylines%
        \textbf{Presented in} \\
        \recyear.\recmonth.\recdate.
      };
    \end{tikzpicture}
  }
}

\newcommand*{\abscontents}{
  \begin{center}
    \begin{minipage}[c]{\textwidth}
      \renewcommand{\abstractname}{Abstract}
      \begin{abstract}
          \CKE@opt@abstract
      \end{abstract}
      \vspace{-0.6em}
      \mbox{} \small \qquad\textbf{Keywords:}\quad \CKE@opt@keyword%
      \ifdefstring{\CKE@opt@amsno}{none}{}{
        \\
        \mbox{} \small \qquad\textbf{AMS Subject Classification:} \quad \CKE@opt@amsno.
      }
      \vspace{0.6em}
    \end{minipage}
  \end{center}
  %
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%         Definition for import and pdfpages                 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{pdfpages}
\newcommand{\FormedWidth}{\paperwidth}
\newcommand{\FormedHeight}{\paperheight}
\newcommand{\includepage}[2]{\includepdf[pages=#1,templatesize={\FormedWidth}{\FormedHeight},pagecommand={\thispagestyle{empty},\setcounter{page}{0}}]{#2}}
\newcommand{\includepagetoc}[3]{\includepdf[addtotoc={1,section,1,#3,#3},pages=#1,templatesize={\FormedWidth}{\FormedHeight}]{#2}}

\newcommand{\setzerocounter}{\setcounter{table}{0} \setcounter{figure}{0} \setcounter{equation}{0}}
\newcommand{\import}[1]{\setzerocounter \input{Documents/#1} \clearpage}
\newcommand{\upcite}[1]{\textsuperscript{\citenum{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%          Definition for tags and contents                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[amsmath,thref,hyperref]{ntheorem}
\RequirePackage{multicol}
\theoremlisttype{allname}
\theorempreskip{2pt}
\theorempostskip{2pt}
\theoremclass{question}
\theoremstyle{plain}
\newtheorem{question}{Question}
\newenvironment{proof}[1][Proof]{\textbf{#1:~~~}}{\hfill\hspace{\qquad}$\square$}

\def\CKEcontents{\futurelet\next\CKEcontentsAux}
\def\CKEcontentsAux{
  \ifx\next[%
    \expandafter\CKEcontentsOptArg
  \else
    \expandafter\CKEcontentsArg
  \fi
}
\def\CKEcontentsOptArg[#1]#2#3{\relax
  \ifthenelse{\equal{#1}{2col}}{
    \setlength\columnseprule{.5pt}
    \begin{multicols}{2}
        \CKEcontentsArg{#2}{#3}
    \end{multicols}
    \setlength\columnseprule{0pt}
  }{
    \CKEcontentsArg{#2}{#3}
  }
}
\def\CKEcontentsArg#1#2{\relax
  \ifthenelse{\equal{#1}{}}{
    \tableofcontents
  }{
    \ifthenelse{\equal{#1}{tab}}{
      \listoftables
    }{
      \ifthenelse{\equal{#1}{fig}}{
        \listoffigures
      }{
        \ifthenelse{\equal{#2}{}}{
          \section*{\contentsname}
        }{
          \section*{#2}
        }
        \listtheorems{#1}
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                   Definition for autoref                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\eqref}[1]{\hyperref[#1]{(\ref*{#1})}}
\providecommand*{\theoremautorefname}{Theorem}
\providecommand*{\questionautorefname}{Question}
\providecommand*{\subfigureautorefname}{\figureautorefname}
\providecommand*{\subtableautorefname}{\tableautorefname}
\providecommand*{\algorithmautorefname}{Algorithm}

%-----------------------------------------------------------------------------------
%	Inner Defined Options
%-----------------------------------------------------------------------------------
\makeatletter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%            Enable chapter-senstive lable style             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifCKE@opt@CSensLabel
  \newcommand\capfont{}
  \renewcommand\thefigure{\@arabic\c@section-\@arabic\c@figure}%
  \renewcommand\thetable{\@arabic\c@section-\@arabic\c@table}%
  \renewcommand\theequation{\@arabic\c@section-\@arabic\c@equation}%
  \long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\capfont{#1\hskip 1em#2}}%
  \ifdim \wd\@tempboxa >\hsize
    \capfont{#1\hskip 1em#2}\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%              Enable the reference number                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifCKE@opt@refNum
  \renewenvironment{thebibliography}[1]
    {\section{\refname}%
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
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%              Definition for the shaded quote               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

\newcommand*\shadedauthorformat{\textsf} % define format for the author argument

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%            Definition for the title page entry             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\titlepage#1{
  \setcounter{page}{0}
  \pagestyle{empty}
  \newpage
  \tpcontents{#1}
  \clearpage
  \pagestyle{fancy}
}

\def\makeabstract{
  \abscontents
}

\def\@maketitle{%
 \setcounter{page}{1}
 \newpage
  \null
  \vskip 0em% the original length is 2em
 \begin{center}%
 \let \footnote \thanks
   {\LARGE \@title \par}%
   \vskip 1.5em%
   {\large
     \lineskip .5em%
     \begin{tabular}[t]{c}%
       \@author
     \end{tabular}\par}%
   \vskip 1em%
 \end{center}%
 \par
 \vskip 1.5em}
\makeatother

\endinput
