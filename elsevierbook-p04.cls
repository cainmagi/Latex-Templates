%%
%% This is file `elsevierbook-p04.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% elsevierbook.dtx  (with options: `main,class,p04')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2017 by Deimantas Galčius <deimi@vtex.lt>
%% 
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{elsevierbook-p04}[2024/09/23, 12:42 (deimi) Elsevier book class - model P04]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions*
\LoadClass{book}
\def\@listi%
{%
  \leftmargin\leftmargini%
  \parsep 0\p@ \@plus.5\p@ \@minus.5\p@%
  \topsep 8\p@ \@plus2\p@ \@minus4\p@%
  \itemsep4\p@ \@plus2\p@ \@minus\p@%
}
\let\saved@listi\@listi
\@listi
\RequirePackage{etoolbox}
\RequirePackage{calc}
\RequirePackage{afterpackage}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{fmtcount}
\RequirePackage{tikz}
\RequirePackage{textcase}
\newtoggle{bookseries}\togglefalse{bookseries}
\newtoggle{multiauthor}\togglefalse{multiauthor}
\def\metamacro#1{\csdef{#1}##1{\bgroup\csuse{#1prehook}\csuse{#1preskip}\csuse{#1format}{##1}\csuse{#1postskip}\csuse{#1posthook}\egroup}}
\def\metamacrolist#1%
{%
 \def\do##1{\metamacro{##1}}%
 \docsvlist{#1}%
}
\metamacrolist%
{%
  booktitle,%
  booksubtitle,%
  bookseriestitle,%
  bookvolumenr,%
  bookedition,%
  bookeditedby,%
  bookisbn,%
  bookissn,%
  booklanguage,%
  bookauthor,%
  bookeditor,%
  bookauthoraddress,%
}
\RequirePackage[T1]{fontenc}
\RequirePackage[full]{textcomp}
\RequirePackage{newtxtext}
\RequirePackage[type1,lining]{FiraSans}% sans serif
\RequirePackage[varqu,varl]{zi4}% inconsolata typewriter
\csdef{verbatim@font}{\ttfamily\fontsize{8}{10}\selectfont}
\RequirePackage[varvw]{newtxmath}
\let\Bbbk\relax
\RequirePackage{amsmath,amssymb,amsfonts}
\let\openbox\relax
\RequirePackage{amsthm}
\newlength\textcolumnwidth
\RequirePackage%
[%
  total={7.5in,9.25in},%
  body={118.71mm,185.649mm},%
  %  twoside=true,%
  head=22pt,
  headsep=2pc,
  centering,
]{geometry}
\setlength\textcolumnwidth{(118.71mm-4mm)/2}%
\setlength\parindent{14pt}%
\setlength\parskip{0pt plus0.1pt}%
\setlength\marginparsep{1pc}
\setlength\marginparwidth{9pc}
\patchcmd\cleardoublepage{\hbox}{\thispagestyle{empty}\hbox}{}{\@latex@error{Fail to patch \string\cleardoublepage}\@ehc}
\newcommand*{\Mainmatter}%
{%
 \addtocontents{toc}{\addvspace{1pc}}
 \cleardoublepage
 \pagenumbering{arabic}%
 \setcounter{page}{1}%
}
\newcommand*{\Frontmatter}%
{%
 \pagenumbering{roman}%
 \relax
}
\def\startfrontmatter%
{%
  \cleardoublepage%
}
\def\noindentafter{\@afterindentfalse\@afterheading}
\def\stopfrontmatter%
{%
  \par%
  \csuse{frontmatterpostskip}%
  \aftergroup\noindentafter%
}
\csdef{frontmatterpostskip}{\addvspace{5.292mm}}
\renewenvironment{frontmatter}%
 {\startfrontmatter}%
 {\stopfrontmatter}%
\newcommand*{\Backmatter}%
{%
 \let\bibsection\relax
}
\RequirePackage{titlesec}
\def\zerorule{\hrule height0pt\relax}
\titleclass{\part}{straight}
\renewcommand\thepart{\arabic{part}}
\titleformat{\part}[block]%
  {\thispagestyle{empty}%
    \null
    \vskip58mm
    \zerorule
    \vskip-34pt%
    \rlap{%
      \hskip290pt\rlap{\color{black}\rule[-8pt]{178pt}{30pt}}%
      \rlap{\space\color{white}\sffamily\fontsize{18}{18}\fontseries{bx}\selectfont\ \MakeUppercase{\partname}}
    }%
    \vskip-.4pt
    \titlerule
    \vskip3pc%
  }%
  {\rlap{\smash{\vtop to40pt{\vss\hfill\fontsize{115}{115}\selectfont\thepart}}}}%
  {0pt}%
  {\sffamily\fontsize{32}{40}\fontseries{l}\selectfont\setlength\rightskip{60pt plus1fil}}%
\titleformat{name=\part,numberless}%[display]%
  {\thispagestyle{plain}}%
  {}%
  {0pt}%
  {\sffamily\fontsize{22}{24}\fontseries{l}\selectfont}%
\newcommand*\partpostskip{4pc}
\titlespacing*{\part}%
  {0pt}%
  {0pt}%
  {\partpostskip}%
\def\ttl@tocpart{\def\ttl@a{\string\numberline{\thepart}}}
\newcounter{chapterstar}
\newcommand*\subchapterfont{\sffamily\fontseries{l}\Large}
\newcommand*\subchapterprehook%
{%
  \vskip-\chapterpostskip%
  \vskip.26\baselineskip%
  \noindent%
}
\newcommand*\subchapterposthook
{%
  \addvspace{\chapterpostskip}%
}
\newcommand\subchapter[1]%
{%
  \csuse{subchapterprehook}%
  \bgroup%
    \csuse{subchapterfont}%
    #1%
  \egroup%
  \par%
  \csuse{subchapterposthook}
}%
\titleclass{\chapter}{straight}%
\titleformat{\chapter}[block]%
{\if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{plain}%
    \zerorule
    \vskip-34pt%
    \rlap{%
      \hskip290pt\rlap{\color{black}\rule[-8pt]{178pt}{24pt}}%
      \rlap{\space\color{white}\sffamily\fontseries{bx}\selectfont\ \MakeUppercase{\@chapapp}}
    }%
    \vskip-.4pt
    \titlerule
    \vskip1pc%
}%
  {\rlap{\smash{\vtop to40pt{\vss\hfill\fontsize{84}{84}\selectfont\thechapter}}}}%
  {0pt}%
  {\sffamily\fontsize{22}{28}\fontseries{l}\selectfont\setlength\rightskip{75pt plus1fil}}%
\titleformat{name=\chapter,numberless}%[display]%
  {\thispagestyle{plain}}%
  {}%
  {0pt}%
  {\sffamily\fontsize{22}{24}\fontseries{l}\selectfont}[\refstepcounter{chapterstar}]%%
\newcommand*\chapterpostskip{3pc}
\titlespacing*{\chapter}%
  {0pt}%
  {0pt}%
  {\chapterpostskip}%
\setcounter{secnumdepth}{6}
\newcounter{subsubparagraph}
\renewcommand*\thesubsubparagraph{\thesubparagraph.\arabic{subsubparagraph}}
\titleclass{\subsubparagraph}{straight}[\subparagraph]
\titleformat{\section}%
  {\titlerule\vskip3pt\sffamily\bfseries\mathversion{bold}\fontsize{13.50}{13}\selectfont}%
  {\thesection}%
  {1em}%
  {}%
\titleformat{\subsection}%
  {\sffamily\bfseries\mathversion{bold}\fontsize{12}{14}\selectfont}%
  {\thesubsection}%
  {1em}%
  {}%
\titleformat{\subsubsection}%
  {\sffamily\bfseries\fontshape{it}\fontsize{11}{13}\selectfont}%
  {\thesubsubsection}%
  {1em}%
  {}%
\titleformat{\paragraph}%
  {\sffamily\fontsize{10.75}{12}\selectfont}%
  {\theparagraph}%
  {1em}%
  {}%
\newcommand{\periodafter}[1]{#1.}
\titleformat{\subparagraph}[runin]%
  {\sffamily\bfseries\itshape\fontsize{10}{12}\selectfont\mathversion{bold}}%
  {\thesubparagraph}%
  {1em}%
  {\periodafter}%
\titleformat{\subsubparagraph}[runin]%
  {\normalfont\sffamily\bfseries\itshape\fontsize{9.50}{12}\selectfont\color{black!60}}%
  {\thesubsubparagraph}%
  {1em}%
  {}%
\titlespacing*{\section}{0pt}%
  {5.292mm}%
  {2.117mm}%
\titlespacing*{\subsection}{0pt}%
  {5.292mm}%
  {2.117mm}%
\titlespacing*{\subsubsection}{0pt}%
  {4.233mm}%
  {1.058mm}%
\titlespacing*{\paragraph}{0pt}%
  {4.233mm}%
  {1.058mm}%
\titlespacing*{\subparagraph}{0pt}%
  {*0}%
  {*1}%
\titlespacing*{\subsubparagraph}{1em}%
  {*0}%
  {*1}%
\newcounter{aug}
\def\theaug{\arabic{aug}}
\newenvironment{aug}%
{%
  \stepcounter{aug}%
  \def\fad@authorlist{}%
  \def\fad@addresslist{}%
  \let\addressnolabel\undefined
  \setcounter{fadauthor}{0}%
  \setcounter{addresslabel}{0}%
  \setcounter{fadaddress}{0}%
  \setcounter{footnote}{0}%
  \augfont
  \setbox\@tempboxa=\vbox\bgroup%
}%
{%
 \egroup%
  \printauthorlist%
  \printaddresslist
}%
\newcounter{augtemp}
\def\author@notes@format#1{\textsuperscript{#1}}
\def\printauthorlist%
{%
  \bgroup%
  \authorfont
    \setcounter{augtemp}{0}%
    \def\do##1%
    {%
       \let\author@notes\@empty%
       \let\author@fnmarks\@empty%
       \stepcounter{augtemp}%
       \edef\@next{\csuse{author@\number\c@augtemp @addressrefs}}%
       \csvlistassess{\author@notes}{\@next}{\noexpand\ref{\number\c@aug.addressid.*}}%
       \csdef{author@sep@\number\c@augtemp}{\author@sep@one}% default
       %\csletcs{autor@sep@i\number\c@augtemp}{author@sep@one}% default
      \ifnum\c@fadauthor=\c@augtemp\relax% Last item
        \ifnum\c@augtemp=2\relax% if two items only
        \csdef{author@sep@\number\c@augtemp}{\author@sep@two}%
         \else%
           \ifnum\c@augtemp=1\relax%
             \csdef{author@sep@\number\c@augtemp}{}%
           \else
             \csdef{author@sep@\number\c@augtemp}{\author@sep@last}%
           \fi%
        \fi%
      \fi%
      \csuse{author@sep@\number\c@augtemp}%
      \bgroup
        \def\@footnotemark{\listxadd\author@fnmarks{\@thefnmark}}%
        ##1%
        \egroup
      \listassess{\author@notes}{\author@fnmarks}{*}%
      \author@notes@format{\author@notes}%
    }%
    \dolistloop{\fad@authorlist}%
  \egroup%
  \par%
  \ignorespaces
}
\def\assess@sep{,}
\robustify{\ref}
\def\csvlistassess#1#2#3%
{%
  \def\@iii{#3}%
  \def\@iv{\@empty}%
  \patchcmd\@iii{*}{\@@@listitem}{}{}%
  \bgroup%
    \def\do##1%
    {%
      \def\@@@listitem{##1}%
      \ifdefvoid{#1}{}{\def\@iv{\assess@sep}}%
      \xappto#1{\@iv\@iii}%
    }%
    \edef\@nexti{\noexpand\docsvlist{#2}}%
    \@nexti
  \egroup%
}
\def\listassess#1#2#3%
{%
  \def\@iii{#3}%
  \def\@iv{\@empty}%
  \patchcmd\@iii{*}{\@@@listitem}{}{}%
  \bgroup%
    \def\do##1%
    {%
      \def\@@@listitem{##1}%
      \ifdefvoid{#1}{}{\def\@iv{\assess@sep}}%
      \xappto#1{\@iv\@iii}%
    }%
    \dolistloop{#2}%
  \egroup%
}
\def\printaddresslist%
{%
  \bgroup%
  \addressskip\addressfont%
    \setcounter{addrtemp}{0}%
    \def\do##1%
    {%
      \stepcounter{addrtemp}%
      \csdef{address@sep@\number\c@addrtemp}{\address@sep@one}% default
      %\csletcs{autor@sep@i\number\c@augtemp}{author@sep@one}% default
      \ifnum\c@fadaddress=\c@addrtemp\relax% Last item
        \ifnum\c@addrtemp=2\relax% if two items only
          \csdef{address@sep@\number\c@addrtemp}{\address@sep@two}%
       \else%
         \ifnum\c@addrtemp=1\relax%
           \csdef{address@sep@\number\c@addrtemp}{}%
         \else
           \csdef{address@sep@\number\c@addrtemp}{\address@sep@last}%
         \fi%
        \fi%
      \fi%
      \csuse{address@sep@\number\c@addrtemp}%
      % do not print superscript if
      % address count = 1
      % and
      % \addressnolabel is defined
      \ifnum\c@fadaddress=1%
      \ifdefined\addressnolabel\let\addresslabel\@gobble\fi
      \fi
      %
      \addresslabel{\csuse{address@\number\c@addrtemp @id}}%
      \csuse{address@\number\c@addrtemp @corresponding}%
      \csuse{address@\number\c@addrtemp @type}{##1}%
    }%
    \dolistloop{\fad@addresslist}%
    \par%
  \egroup%
  \par
  \ignorespaces
}
\csdef{author@sep@one}{\csdef{author@sep@one}{,\space}}%
\csdef{author@sep@two}{\space and\space}%   case = 2: Author<sep@two>Author
\csdef{author@sep@last}{,\space and\space}% case > 2: Author<sep@one>Author<sep@last>Author
\csdef{address@sep@one}{\csdef{address@sep@one}{,\space}}%
\csdef{address@sep@two}{,\space}%   case = 2: Author<sep@two>Author
\csdef{address@sep@last}{,\space}% case > 2: Author<sep@one>Author<sep@last>Author
\newcounter{addrtemp}
\newcommand*\authorfont{\sffamily\bfseries}
\newcommand*\augfont{\raggedleft}
\newcommand*\authorskip{\setlength\parindent{0pt}}
\newcommand*\authorsep{\@empty}
\renewcommand*\author{\@ifnextchar[\fad@author{\fad@author[]}}
\newcounter{fadauthor}
\define@key{author}{id}{}
\define@key{author}{addressrefs}{\csxdef{author@\number\c@fadauthor @addressrefs}{#1}}
\define@key{address}{id}{\csxdef{address@\number\c@fadaddress @id}{#1}}
\define@key{address}{type}{\csgdef{address@\number\c@fadaddress @type}{\csuse{address@#1@type}}}
\define@key{address}{label}{\csgdef{address@\number\c@fadaddress @label}{#1}}
\define@key{address}{corresponding}[true]{%
  \ifstrequal{#1}{true}%
  {\csgdef{address@\number\c@fadaddress @corresponding}{\address@corresponding@type}}%
  {}
}
\newcommand*\address@electronic@type[1]{\texttt{#1}}
\newcommand*\address@corresponding@type{Corresponding author:\space}
\def\fad@author[#1]#2%
{%
  \stepcounter{fadauthor}%
  \bgroup%
  \ifstrempty{#1}{}{\setkeys{author}{#1}}%
    \bgroup%
      \listgadd\fad@authorlist{#2}%
    \egroup%
 \egroup%
 \ignorespaces
}
\let\fnm\@firstofone
\let\snm\@firstofone
%%
\def\@address[#1]#2%
{%
  \stepcounter{fadaddress}%
  \bgroup%
  \ifstrempty{#1}{\xdef\addressnolabel{}}{\setkeys{address}{#1}}%
    \bgroup%
      \listgadd\fad@addresslist{#2}%
    \egroup%
 \egroup%
 \par%
 \ignorespaces
}
\newcommand*\addressskip{\par\noindent}
\newcommand*\addressfont{\normalfont\fontsize{8.5}{12}\itshape\selectfont}
\def\address{\@ifnextchar[{\@address}{\@address[]}}
\newcounter{fadaddress}
\newcounter{addresslabel}
\renewcommand*\theaddresslabel{\alph{addresslabel}}
\newcommand*\addressmark{\textsuperscript{\theaddresslabel}}
\newcommand*\addressmark@withlabel[1]{\textsuperscript{#1}}
\def\addresslabel#1{%
  \bgroup
  \@ifundefined{address@\number\c@addrtemp @label}%
  {%
    \refstepcounter{addresslabel}%
  }%
  {%
    \protected@edef\@currentlabel{\csuse{address@\number\c@addrtemp @label}}%
    \def\theaddresslabel{\csuse{address@\number\c@addrtemp @label}}%
  }%
  \addressmark%
  \label{\number\c@aug.addressid.#1}%
  \egroup
}
\newcommand*\abstractname{Abstract}
\newcommand*\abstractheadfont{\bfseries\sffamily}
\newcommand*\abstractpreskip%
{%
  \medskip%
  \hrule height.5pt%
  \vskip6pt%
}
\newcommand*\abstractpostskip%
{
  \vskip4pt%
  \hrule height.5pt%
  \medskip%
}
\newcommand*\abstractprehook{\setlength\parindent{0pt}}
\newcommand*\abstractposthook{}
\newcommand*\abstracthead{{\abstractheadfont\MakeUppercase{\abstractname}}\par}
\newcommand*\abstractfont{\small}
\newenvironment{abstract}
{%
  \abstractprehook
  \abstractpreskip
  \abstracthead
  \abstractfont
}%
{%
  \strut
  \abstractpostskip%
  \abstractposthook%
}
\newcommand*\keywordsname{Keywords}
\newcommand*\keywordsheadfont{\bfseries\sffamily}
\newcommand*\keywordspreskip{\medskip}
\newcommand*\keywordspostskip{\medskip}
\newcommand*\keywordsprehook{\setlength\parindent{0pt}}
\newcommand*\keywordsposthook{}
\newcommand*\keywordshead{{\keywordsheadfont\MakeUppercase{\keywordsname}}\par}
\newcommand*\kwdsep{\renewcommand*\kwdsep{\unskip,\space}}
\newcommand*\keywordsfont{\small}
\newenvironment{keywords}
{%
  \keywordsprehook
  \keywordspreskip
  \keywordshead
  \keywordsfont
  \def\kwd##1{\kwdsep ##1}%
}
{%
  \keywordspostskip%
  \keywordsposthook%
}
\RequirePackage{enumitem}
\setlist%
{%
 topsep=0pt,%
 labelsep=6pt,
 noitemsep,%
 leftmargin=*,%
 itemindent=0pt,%
}
\setitemize[3]{label={-}}
\setenumerate[3]{label={-}}
\setdescription{%
  labelindent=0pt,
  labelsep=6pt,
  itemindent=-6pt,%
  leftmargin=!,%
}
\setitemize[1]{label=\ensuremath{\bullet},topsep=4pt,leftmargin=*}
\setitemize[2]{label=\ensuremath{\bullet},leftmargin=*}
\setenumerate[1]{label={\arabic*.},ref={\arabic*},font=\sffamily\textbf,topsep=4pt,leftmargin=*}
\setenumerate[2]{label={\alph*.},ref={\alph*},font=\sffamily\textbf,leftmargin=*}
\newcommand*\quotefont{\fontsize{9}{11}\itshape\color{black!80}}
\newcommand*\quotesourcefont{\normalfont\normalcolor\fontsize{9}{11}\selectfont}
\newcommand*\quoteleftindent{4mm}
\newcommand*\quoterightindent{4mm}
\newcommand*\quotelistparindent{4mm}%
\newcommand*\quotetopsep{2.117mm}
\newcommand*\quotationfont{\fontsize{9}{12}\itshape}
\newcommand*\quotationsourcefont{\normalfont\fontsize{9}{11}\selectfont}
\newcommand*\quotationtopsep{0pt}
\newcommand*\quotesourceprehook%
{%
  \nointerlineskip\vskip4pt%
  \raggedleft%
}
\newcommand\quotesource[1]%
{%
  \par%
  \csuse{quotesourceprehook}%
  \bgroup%
  \hfill
  \hbox to-\rightmargin
  {%
    \llap%
    {%
       \csuse{quotesourcefont}#1\unskip%
     }%
   \hss%
   }%
  \egroup%
  \par%
}
\def\quotationsource{\quotesource}
\renewenvironment{quote}%
{%
  \begin{list}{}%
 {%
   \setlength{\leftmargin}{\quoteleftindent}%
   \setlength{\rightmargin}{\quoterightindent}%
   \setlength{\topsep}{\quotetopsep}%
   \setlength{\parsep}{0pt\@plus1pt}%
   \setlength{\listparindent}{\quotelistparindent}%
 }%
 \item\relax\quotefont%
 \let\source\quotesource%
}%
{%
  \end{list}%
}
\renewenvironment{quotation}%
{%
  \renewcommand*\quotelistparindent{0mm}%
  \begin{quote}%
}{%
  \end{quote}%
}
\def\dispquoteleftmargin{4mm}
\def\dispquotetopsep{\quotationtopsep}
\def\dispitemindent{\listparindent}
\def\dispquoterule{\hrule height.5pt\nobreak\vskip2.6pt}
\newenvironment{dispquote}%
{%
  \begin{list}{}%
  {%
    \setlength{\leftmargin}{\dispquoteleftmargin}%
    \setlength{\topsep}{\dispquotetopsep}%
    \setlength{\itemindent}{\dispitemindent}%
    \setlength{\rightmargin}{\leftmargin}%
    \setlength{\parsep}{\z@ \@plus \p@}%
  }%
  \item\relax\quotationfont%
  \let\source\quotationsource%
  \csuse{disquoterule}%
  \csuse{dispquotefont}%
}%
{%
  \end{list}%
}%
\newcommand*\chapterpointshead[1]{\item[]\hskip-10pt{\bfseries\fontsize{10}{12}\selectfont#1}}
\newcommand*\chapterpointsfont{\raggedright\fontsize{8.5}{10}\sffamily}
\newcommand*\chapterpointsprehook{\zerorule}
\newcommand*\chapterpointsheadskip{\vskip2pt}
\newenvironment{chapterpoints}[1][Chapter Points]
{%
  \chapterpointsprehook
  \begin{chapterpointslist}%
  \chapterpointsfont%
  \chapterpointshead{#1}%
  \chapterpointsheadskip%
}%
{%
  \end{chapterpointslist}%
}
\newlist{chapterpointslist}{itemize}{1}
\setlist[chapterpointslist]{label=\ensuremath{\bullet},topsep=6pt,leftmargin=20pt,rightmargin=12pt}
\def\contributorname#1{\listtitle{#1}\item[]}
\def\listtitle#1%
{%
  \bgroup\parshape0
  \vskip\listtitle@topsep
  \listtitle@fmt{#1}%
 \egroup%
}
\def\listtitle@size{\bfseries}
\def\listtitle@fmt#1{\hbox{\vbox{\noindent\listtitle@size{#1}}}}
\def\listtitle@rule{\hrule height0pt depth-0pt}
\def\listtitle@topsep{10pt}
\newlist{contributorslist}{description}{1}
\setlist[contributorslist]{labelsep=0pt,itemindent=0pt,leftmargin=0pt,itemsep=\medskipamount,%
  before*={\let\name\contributorname\sffamily\raggedright}%
}
\RequirePackage{caption}
\DeclareCaptionLabelSeparator{enskip}{\enskip}
\DeclareCaptionLabelSeparator{rule35}{\\\rule[4pt]{\linewidth}{.35pt}\\[-2pt]}
\DeclareCaptionFont{figcaptionfont-p04}{\fontsize{8.75}{10}\selectfont}
\DeclareCaptionFont{tablecaptionfont-p04}{\fontsize{9.75}{12}\selectfont}
\protect\def\figuresource#1{\textit{(#1)}}
\preto\figure{%
  \def\source{\protect\figuresource}%
  \appto\@floatboxreset{\@figureboxreset@hook}%
  \def\title#1{\def\figuretitle{\nobreakspace#1}}%
}
\preto\table
{%
  \def\source{\protect\tablesource}%
  \appto\@floatboxreset{\@tableboxreset@hook}%
  \def\title#1{\def\tabletitle{\nobreakspace#1}}%
}%
\def\@figureboxreset@hook{\centering}
\def\@tableboxreset@hook{\fontsize{8.50}{11}\selectfont\sffamily}
\captionsetup[figure]%
{%
  labelsep=rule35,%
  labelfont={figcaptionfont-p04,bf,sf},%
  font={figcaptionfont-p04,sf},
  name=FIGURE,%
}
\captionsetup[table]%
{%
  labelsep=quad,%
  labelfont={tablecaptionfont-p04,bf,sf},%
  font={tablecaptionfont-p04,sf},%
  name=Table,%
  margin=\tabcolsep,
  skip=2.6pt,
}
\let\figuretitle\relax
\let\tabletitle\relax
\def\fnum@figure{\figurename\nobreakspace\thefigure\figuretitle}
\def\fnum@table{\tablename\nobreakspace\thetable\tabletitle}
%% Tabnotes
\def\tabnotesfont{\scriptsize}
\def\tabnotesfont{\fontsize{7.5}{9}\selectfont\itshape}
\def\tabnotesparindent{0pt}
\newenvironment{tabnotes}%
{%
  \unskip\par
  \tabnotesfont
  \lineskip6\p@
  \parindent=\tabnotesparindent
  \noindent\hbox to\hsize\bgroup\hfill\vbox\bgroup\hsize=\textwidth%\tablewidth
  \expandafter\noindent\ignorespaces
}
{%
  \egroup\hfill\egroup\par%
}
\RequirePackage{environ}
\RenewEnviron{tabnotes}%
{%
  \unskip\par
  \tabnotesfont
  \lineskip6\p@
  \null\hskip\tabcolsep\parbox{\hsize-2\tabcolsep}{\BODY}%
}
\newcounter{tabnote}
\def\thetabnote{\@alph\c@tabnote}
\def\tabnoteref@shape#1{\sustyle\ref{tabnote.#1}}
\def\tabnotemark@fmt#1{\hbox{\tabnoteref@shape{#1}}}
\def\tabnoteref{\@ifnextchar[{\@tabnoteref}{\@tabnoteref[]}}
\def\@tabnoteref[#1]#2%
{%
    \tabnotemark@fmt{#2}%
}%
\def\tablewidth{\textwidth}
\def\tabnoteanchor@fmt[#1]#2%
{%
  %\@textsuperscript{#1}%
  \bgroup%
    #1%
  \egroup%
  \def\@currentlabel{#1}%
  \label{tabnote.#2}%
}
\long\def\tabnotetext[#1]#2#3%
{%
  \lineskip2\p@%
  \ifhmode\par\fi
  \noindent
  \parbox[t]{\tablewidth-2\tabcolsep}{%\parindent\tabnotetextwidth\relax
    \ifx.#1.\relax
    \else
      \noindent
      \bgroup
      \hbox{\tabnoteanchor@fmt[#1]{#2}\kern1\p@}%
      \egroup%
    \fi%
    {\itshape #3}\par}%
  \vtop to\z@{}\par%
}
\long\def\legend#1{\lineskip4\p@%
  \ifhmode\par\fi
  \noindent
  \parbox[t]{\tablewidth-2\tabcolsep}%
  {
    %\parindent\tabnotetextwidth
    \noindent#1\par}%
  \vtop to\z@{}\par
}
\def\tablesourcehead{Source:\space}
\def\tablesource#1{\legend{\tablesourcehead #1}}
\def\tch#1%
{%
  \bgroup%
    \fontsize{8.5}{12}%
    \bfseries%
    #1%
  \egroup%
}
\def\tchi#1%
{%
  \bgroup%
    \fontsize{8}{12}%
    \bfseries%
    \itshape
    #1%
  \egroup%
}
\colorlet{thd}{black!20}
\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{colortbl}
\setlength{\arrayrulewidth}{.5pt}
\setlength{\doublerulesep}{0pt}
\setlength{\minrowclearance}{2pt}%
\def\Hline{\hline\hline\hline}
\def\bhline{\hline\hline}
\def\tophline{}
\def\bottomhline{\hline}
\mdfdefinestyle{table-a02}%
{%
  backgroundcolor=black!10,
  innerleftmargin=0pt,
  innerrightmargin=0pt,
  linewidth=0pt,
  innertopmargin=5pt,
  innerbottommargin=10pt,
}
\mdfdefinestyle{table-p04}%
{%
  backgroundcolor=black!0,
  innerleftmargin=0pt,
  innerrightmargin=0pt,
  linewidth=0pt,
  innertopmargin=5pt,
  innerbottommargin=10pt,
}
\mdfdefinestyle{table-a08a}%
{%
  innerleftmargin=0pt,
  innerrightmargin=0pt,
  linewidth=0pt,
  innertopmargin=0pt,
  innerbottommargin=0pt,
}
\newenvironment{tableframe}[1][]%
{%
  \mdfsetup{style=table-p04}%
  \begin{mdframed}[#1]%
}%
{%
 \end{mdframed}%
 \arrayrulecolor{black}%
}
\RequirePackage[hang,bottom,stable]{footmisc}
\def\footnoterule{\kern-3pt\hrule height.5pt\kern2.6pt}
\setlength{\footnotemargin}{1em}
\setlength{\footnotemargin}{0em}
\skip\footins=1pc
\def\eqnarray@error%
{%
  \GenericError{}%
  {%
    LaTeX Error:
    \MessageBreak Environment 'eqnarray' is obsolete!%
    \MessageBreak See http://m.tug.org/pracjourn/2006-4/madsen/madsen.pdf%
    \MessageBreak Please use 'align' (or other) environment from amsmath package%
  }{}{}%
}
\csdef{eqnarray}{\eqnarray@error}
\csdef{eqnarray*}{\eqnarray@error}
\def\thepageformat#1{\rlap{\hskip2pc\rhlabelfont #1}}
\def\thepageformateven#1%
{%
  \rlap%
  {%
    \hskip-10pc%
    \rule[12pt]{10pc}{8.5pt}%
    \rule[12pt]{\hsize}{1pt}%
  }%
  \llap{\rhlabelfont #1\hskip2pc}%
}
\def\thepageformatodd#1%
{%
  \llap%
  {%
    \rule[12pt]{\hsize}{1pt}%
    \rule[12pt]{10pc}{8.5pt}%
    \hskip-10pc%
  }%
  \rlap{\hskip2pc\rhlabelfont #1}%
}
\def\ps@plain@thepagepostfix{}
\def\thepagesep{}
\def\headsize{\sffamily\fontseries{l}\fontsize{11}{11}\selectfont}
\def\ps@headings%
{%
  \def\@oddfoot{\@empty}%
  \def\@evenfoot{\@empty}%
  \def\@oddhead{\headsize\hfill\rightmark\thepagesep\thepageformat\thepage}%
  \def\@evenhead{\hbox{\headsize\thepageformat\thepage\thepagesep\leftmark}\hfill}%
}
\def\ps@headings%
{%
  \def\@oddfoot{\@empty}%
  \def\@evenfoot{\@empty}%
  \def\@oddhead{\headsize\hfill\rightmark\thepagesep\thepageformatodd\thepage}%
  \def\@evenhead{\hbox{\headsize\thepageformateven\thepage\thepagesep\leftmark}\hfill}%
}
\def\ps@plain%
{%
  \def\@oddhead{\@empty}%
  \def\@evenhead{\@empty}%
  \def\@oddfoot{\hfill\headsize\thepageformat\thepage\csuse{ps@plain@thepagepostfix}}%
  \def\@evenfoot{\headsize\thepageformat\thepage\hfill}%
}
\newcommand*\acknowledgementfont{\fontsize{8.5}{10}\selectfont}
\newcommand*\acknowledgementheading{\section*}
\newenvironment{ack}[1][Acknowledgement]%
{%
  \acknowledgementheading{#1}%
  \acknowledgementfont%
}%
{%
  \par%
}
\newenvironment{acks}[1][Acknowledgements]%
{%
  \acknowledgementheading{#1}%
  \acknowledgementfont%
}%
{%
  \par%
}
\AfterPackage{natbib}{%
\def\bibsection{\section*{\bibname}}%
\def\bibfont{\normalfont\fontsize{8}{11}\selectfont}%
\setlength{\bibhang}{10pt}%
\setlength{\bibsep}{0pt \@plus.1pt}%
}
\csdef{bibstyle@elsarticle-num}{%
  \bibpunct{[}{]}{,}{n}{}{,}%
  % numbers
  \NAT@numberstrue
  % sort&compress
  \def\NAT@sort{\@ne}\def\NAT@cmprs{\@ne}%
  % nospace
  \def\NAT@spacechar{}%
}

\csdef{bibstyle@elsarticle-harv}{%
  % name-year
  \NAT@numbersfalse
  % round
  \renewcommand\NAT@open{(}%
  \renewcommand\NAT@close{)}%
  % semicolon
  \renewcommand\NAT@sep{;}%
}
\csdef{bibstyle@vancouver}{\csuse{bibstyle@elsarticle-num}}
\csdef{bibstyle@ama}%
{%
  \bibpunct{}{}{,}{s}{}{\textsuperscript{,}}
   % numbers
   \NAT@numberstrue
   % nospace
   \def\NAT@sort{\z@}
   \def\NAT@cmprs{\z@}
   %
   \def\NAT@spacechar{}%
  \let\bibauthor\@firstofone%
  \let\bibpages\@firstofone%
  \gdef\xfnm[##1]{\unskip\space\removeDot{##1}}%
  \def\bibinfo##1##2%
  {%
    \def\next{##1}%
    \def\@@@pg{pages}\def\@@@au{author}\def\@@@volume{volume}%
    \ifx\next\@@@pg\bibpages{##2}\else
    \ifx\next\@@@au\bibauthor{##2}\else
    \ifx\next\@@@volume{\fontseries{m}\selectfont ##2}\else
    ##2\fi\fi\fi%
  }%
}
\csdef{bibstyle@vancouver-super}{%
   \bibpunct{}{}{,}{s}{}{\textsuperscript{,}}
   % numbers
   \NAT@numberstrue
   % sort&compress
   \def\NAT@sort{\@ne}\def\NAT@cmprs{\@ne}%
   % nospace
   \def\NAT@spacechar{}%
   \gdef\bibnumfmt##1{##1.}%
 }

\csdef{bibstyle@apa}{\csuse{bibstyle@elsarticle-harv}}
\csdef{bibstyle@saunders}%
{%
  % name-year
  \NAT@numbersfalse
  % round
  \renewcommand\NAT@open{(}%
  \renewcommand\NAT@close{)}%
  % semicolon
  \renewcommand\NAT@sep{;}%
  \let\bibauthor\@firstofone%
  \let\bibpages\@firstofone%
   \gdef\xfnm[##1]{\unskip\space\removeDot{##1}}
   \def\bibinfo##1##2{\def\next{##1}%
   \def\@@@pg{pages}\def\@@@au{author}%
   \ifx\next\@@@pg\bibpages{##2}\else
   \ifx\next\@@@au\bibauthor{##2}\else
   ##2\fi\fi}
}
\csdef{bibstyle@saunders-super}%
{%
  \bibpunct{}{}{,}{s}{}{\textsuperscript{,}}%
   % numbers
   \NAT@numberstrue
   % no sort&compress
   \def\NAT@sort{\@ne}\def\NAT@cmprs{\z@}%
   % nospace
   \def\NAT@spacechar{}%
   \gdef\bibnumfmt##1{##1.}%
  \let\bibauthor\@firstofone%
  \let\bibpages\@firstofone%
   \gdef\xfnm[##1]{\unskip\space\removeDot{##1}}%
   \def\bibinfo##1##2{\def\next{##1}%
   \def\@@@pg{pages}\def\@@@au{author}%
   \ifx\next\@@@pg\bibpages{##2}\else
   \ifx\next\@@@au\bibauthor{##2}\else
   ##2\fi\fi}%
}
\csdef{bibstyle@acs-num}%
{%
  \bibpunct{\textit{(}}{\textit{)}}{,}{n}{}{,}%
  % numbers
  \NAT@numberstrue
  % sort&compress
  \def\NAT@sort{\@ne}\def\NAT@cmprs{\z@}%
  % nospace
  \def\NAT@spacechar{}%
  \let\citenumfont=\itshape
}
\csdef{bibstyle@acs-super}%
{%
   \bibpunct{}{}{,}{s}{}{\textsuperscript{,}}
   % numbers
   \NAT@numberstrue
   % sort&compress
   \def\NAT@sort{\@ne}\def\NAT@cmprs{\@ne}%
   % nospace
   \def\NAT@spacechar{}%
}
\csdef{bibstyle@acs}%
{%
  % name-year
  \NAT@numbersfalse
  % round
  \renewcommand\NAT@open{(}%
  \renewcommand\NAT@close{)}%
  % semicolon
  \renewcommand\NAT@sep{;}%
  \let\bibauthor\@firstofone%
  \let\bibpages\@firstofone%
  \def\bibinfo##1##2{\def\next{##1}%
   \def\@@@pg{pages}\def\@@@au{author}\def\@@@year{year}\def\@@@volume{volume}%
   \ifx\next\@@@pg\bibpages{##2}\else
   \ifx\next\@@@au\bibauthor{##2}\else
   \ifx\next\@@@year{\textbf{##2}}\else
   \ifx\next\@@@volume{\textit{##2}}\else
   ##2\fi\fi\fi\fi%
 }%
}
\def\removeDot#1{\def\tmp{#1}%
    \ifx\tmp\@empty\else\@removeDot#1\@nil\fi}
\def\@removeDot#1\@nil{\edef\fchar{\expandafter\@car#1\@nil}%
      \edef\rchar{\expandafter\@cdr#1!\@nil}%
      \def\@xmltempa{.}\def\@xmltempb{!}%
      \ifx\fchar\@xmltempb\relax\else%
      \ifx\fchar\@xmltempa\relax\else%
      \fchar\ignorespaces\fi\removeDot{\rchar}\fi}
\providecommand{\href}[2]{{#2}}
\newcommand*\titlepagehook%
{%
  \let\seriestitle\bookseriestitle%
  \let\title\booktitle%
  \let\subtitle\booksubtitle%
  \let\address\bookauthoraddress%
  \let\author\bookauthor%
  \let\edition\bookedition%
  \let\editedby\bookeditedby%
  \let\volume\bookvolumenr%
}
\let\titlepage@latex\titlepage
\let\titlepage\relax
\let\endtitlepage\relax
\newenvironment{titlepage}
{%
  \titlepage@latex
  \csuse{titlepagehook}%
  \csuse{titlepagefont}%
  \setlength{\parindent}{0pt}%
}{\par}%
\def\titlepagefont{\sffamily\raggedleft}
\def\booktitleposthook{\par}
\def\booktitlepreskip{\zerorule\vskip4\baselineskip}
\long\def\booktitleformat#1{\sffamily\fontsize{34}{36}\selectfont #1\par}
\long\def\booksubtitleformat#1{\sffamily\fontsize{25}{27}\selectfont #1\par}
\def\titlepagerule{}
\def\endtitlepagerule{\vskip2\baselineskip}
\def\booksubtitleposthook{\par}
\def\booksubtitlepreskip{\vskip.5\baselineskip}
\def\booksubtitlepostskip{\vskip.5\baselineskip}
\def\bookauthorposthook{\par}
\def\bookauthorpreskip{\vskip\baselineskip}
\def\bookauthoraddressposthook{\par}
\def\bookauthoraddressformat{\fontsize{16}{18}\selectfont}
\def\bookauthorformat#1{\fontsize{16}{18}\selectfont\textbf{#1}}
\def\bookeditedbypreskip{\vskip2pc}
\def\bookvolumenrformat#1{#1}
\def\dedicationhead%
{%
  \zerorule%
  \vskip8pc%
}
\def\dedicationprehook{\cleardoublepage\thispagestyle{empty}\center}
\def\dedicationposthook{\endcenter}
\def\dedicationfont{\itshape}
\newenvironment{dedication}%
{%
  \csuse{dedicationprehook}%
  \dedicationfont%
  \dedicationhead%
}%
{%
   \csuse{dedicationposthook}%
}
\newenvironment{biography}{\par}{}
\pagestyle{headings}
\def\chaptermark#1{\markright{#1\enskip\hbox{\color{black!30}\@chapapp\enskip|\enskip\thechapter}}}
\def\partmark#1{%
  \markboth%
  {\hbox{\color{black!30}\partname\enskip|\enskip\thepart}\enskip#1}%
  {#1\enskip\hbox{\color{black!30}\partname\enskip|\enskip\thepart}}%
}
\def\sectionmark#1{}
\def\rhlabelfont{\sffamily\bfseries\fontsize{11}{11}\selectfont}
\def\chaptermarklabel{{\rhlabelfont \MakeUppercase{\@chapapp} \thechapter\quad}}
\def\sectionmarklabel{{\rhlabelfont\thesection\quad}}
\def\chaptermark#1{\markboth{\chaptermarklabel #1}{\chaptermarklabel #1}}
\def\sectionmark#1{\markright{\sectionmarklabel #1}}
\RequirePackage[tight]{minitoc}
\preto\minitoc{\setcounter{mtc}{\number\c@chapter}}
\AtBeginDocument{\dominitoc}
\RequirePackage{multicol}
\protected\def\minitocnumberline#1{\hb@xt@\@tempdima{#1\hfil}}
\let\minitoc@dottedtocline\@dottedtocline
\def\minitoc@dottedtocline#1#2#3#4#5%
{%
  \ifnum #1>\c@tocdepth \else \vskip \z@ \@plus .2\p@
  {%
    \leftskip #2\relax \rightskip \@tocrmarg
    \parfillskip -\rightskip \parindent #2\relax
    \@afterindenttrue \interlinepenalty \@M \leavevmode \@tempdima #3\relax
    \advance \leftskip \@tempdima \null \nobreak \hskip -\leftskip {#4}\nobreak
    \leaders \hbox {$\m@th \mkern \@dotsep mu\hbox {.}\mkern \@dotsep mu$}\hfill
    \nobreak \hb@xt@ \@pnumwidth {\hfil \normalfont \normalcolor {\csuse{minitocpnumfont}{#5}}\kern -\p@
      \kern \p@
    }%
    \par
  }%
  \fi
}
\appto\beforeminitoc{\setminitoclines}
\def\minitocpnumfont%
{%
  \def\mtcSfont{\normalfont\sffamily\upshape}%
  \def\mtcSSfont{\normalfont\sffamily\upshape}%
  \def\mtcSSSfont{\normalfont\sffamily\upshape}%
}
\newcommand*\setminitoclines%
{%
 \let\numberline\minitocnumberline
%%<p04> \def\mtcSfont{\normalfont\sffamily}
%%<p04> \def\mtcSSfont{\normalfont\sffamily}
%%<p04> \def\mtcSSSfont{\normalfont\sffamily}
  \def\l@section{\minitoc@dottedtocline {1}{0em}{2.3em}}%
  \def\l@subsection{\minitoc@dottedtocline {2}{2.3em}{3em}}%
  \def\l@subsubsection{\minitoc@dottedtocline {3}{5.3em}{3.5em}}%
}
\mtcsetformat{minitoc}{dotinterval}{1000}
\mtcsetformat{minitoc}{dotinterval}{1}
\setcounter{minitocdepth}{3}
\setlength{\mtcindent}{0pt}
\mtcsetoffset{minitoc}{0pt}
\mtcsettitle{minitoc}{Contents}
\mtcsettitle{minitoc}{Contents\vskip4pt\hrule}
\mtcsettitlefont{minitoc}{\large\sffamily\bfseries}
\mtcsetfont{minitoc}{section}{\sffamily\bfseries}
\mtcsetfont{minitoc}{subsection}{\sffamily}
\mtcsetfont{minitoc}{subsubsection}{\sffamily}
\mtcsetfont{minitoc}{subsubsection}{\sffamily\itshape}
\mtcsetrules{minitoc}{off}
\mtcsetformat{minitoc}{tocrightmargin}{2.55em plus 1fil}
\def\tableofcontents{\@starttoc{toc}}
\def\listoffigures{\global\@mtc@lof@used@true\@starttoc{lof}}
\def\listoftables{\global\@mtc@lot@used@true\@starttoc{lot}}
%% TODO: chapter numberline
%% TODO: part numberline
\let\tocnumberline\numberline
\long\def\tocpartnumberline#1%
{%
  \vskip1pc
  \noindent%
  \bgroup%
    \normalfont\sffamily\bfseries\fontsize{14}{16}\selectfont
    \MakeUppercase{\partname}\space%
    #1\enskip%
  \egroup
}
\def\tocchaptername{CHAPTER}
\def\tocappendixname{APPENDIX}
\appto\appendix%
{%
  \immediate\write\@auxout%
  {%
    \noexpand\@writefile{toc}%
    {%
      \detokenize{\let\tocchaptername\tocappendixname\protected@file@percent}%
    }%
  }%
}
\def\tocfigurename{Fig.}
\def\tocfigurenumberline#1{\hb@xt@\@tempdima{\tocfigurename\space#1\hfil}}
\def\tocfigureshape{\sffamily}
\def\toctablenumberline#1{#1\hfill}
\def\toctableshape{}
\def\tocpartshape{\normalfont\sffamily\bfseries\fontsize{14}{16}\selectfont}
\def\tocpartpostskip{\vskip4pt\hrule\vskip4pt}
\def\tocchaptershape{\normalfont\sffamily\bfseries\fontsize{12}{16}\selectfont}
\def\tocchapternumberline#1{\tocnumberline{\tocchaptername\space #1}}
\def\tocsectionshape{\normalfont\normalsize}
\def\tocsectionnumberline#1{\tocnumberline{\hphantom{\tocchaptershape\tocchaptername\space}{\sffamily\bfseries\fontsize{10}{12}\selectfont#1}}}
\def\tocsubsectionshape{\normalfont}
\def\l@figure%
{%
  \def\@dotsep{1000}%
  \def\@tocentry{figure}%
  \csuse{tocfigureshape}%
  \let\figuresource\@gobbletwo
  \let\numberline\tocfigurenumberline%
  \book@dottedtocline{1}{0pc}{3.8pc}%
}%
\def\l@table%
{%
  \def\@tocentry{table}%
  \csuse{toctableshape}%
  \let\tablesource\@gobbletwo
  \let\numberline\toctablenumberline%
  \book@dottedtocline{1}{0pc}{3.8pc}%
}%
\def\l@part#1#2%
{%
  \def\@tocentry{part}%
  \let\numberline\tocpartnumberline%
  \csuse{tocpartshape}%
  #1%
  \hangindent=4pc
  \par
  \csuse{tocpartpostskip}%
}%
\ExplSyntaxOn
\def\tocsetup#1{\setkeys{tocsetup}{#1}\tocsetupinit}
\def\tocsetupinit%
{%
       \setlength\tocsectionnumberlinenumwidth{\tocchapternumberlinenumwidth}%
       \setlength\tocsubsectionindent{\tocsectionnumberlinenumwidth+\tocsectionindent}%
}
\define@key{tocsetup}{chapternumwidth}{\setlength\tocchapternumberlinenumwidth{#1}}
\define@key{tocsetup}{sectionnumwidth}{\setlength\tocsectionnumberlinenumwidth{#1}}
\define@key{tocsetup}{subsectionnumwidth}{\setlength\tocsubsectionnumberlinenumwidth{#1}}
\define@key{tocsetup}{subsubsectionnumwidth}{\setlength\tocsubsubsectionnumberlinenumwidth{#1}}
\define@key{tocsetup}{chapterindent}{\setlength\tocchapterindent{#1}}
\define@key{tocsetup}{sectionindent}{\setlength\tocsectionnumindent{#1}}
\define@key{tocsetup}{subsectionindent}{\setlength\tocsubsectionindent{#1}}
\define@key{tocsetup}{subsubsectionindent}{\setlength\tocsubsubsectionindent{#1}}
\newlength\tocpartnumberlinenumwidth
\newlength\tocpartindent
\newlength\tocchapternumberlinenumwidth
\newlength\tocchapterindent
\newlength\tocsectionnumberlinenumwidth
\newlength\tocsectionindent
\newlength\tocsubsectionnumberlinenumwidth
\newlength\tocsubsectionindent
\newlength\tocsubsubsectionnumberlinenumwidth
\newlength\tocsubsubsectionindent
\setlength\tocchapterindent{0pc}
      \setlength\tocsectionindent{0pt}
 \setlength\tocchapternumberlinenumwidth{6pc}
 \setlength\tocsectionnumberlinenumwidth{\tocchapternumberlinenumwidth}
 \setlength\tocsubsectionnumberlinenumwidth{2.5pc}
\setlength\tocsubsectionindent{\tocsectionnumberlinenumwidth+\tocsectionindent}
\setlength\tocsubsubsectionindent{5.3em}
\setlength\tocsubsubsectionnumberlinenumwidth{3.5em}
\def\l@chapter%
{%
  \def\@tocentry{chapter}%
  \let\numberline\tocchapternumberline%
  \csuse{tocchaptershape}%
  \book@dottedtocline{0}%
  {\tocchapterindent}{\tocchapternumberlinenumwidth}%
}%
\def\l@chapterstar%
{%
  \def\@tocentry{chapterstar}%
  \csuse{tocchapterstarshape}%
  \book@dottedtocline{0}{0pt}{1pc}%
}%
\def\l@section%
{%
  \def\@tocentry{section}%
  \csuse{tocsectionshape}%
  \let\numberline\tocnumberline%
  \let\numberline\tocsectionnumberline%
  \book@dottedtocline{1}{\tocsectionindent}{\tocsectionnumberlinenumwidth}%
}%
\def\l@subsection%
{%
  \def\@tocentry{subsection}%
  \csuse{tocsubsectionshape}%
  \let\numberline\tocnumberline%
 \book@dottedtocline{2}{\tocsubsectionindent}{\tocsubsectionnumberlinenumwidth}%
%%%<p04>  \book@dottedtocline{2}{3pc}{5pc}%
}%
\def\l@subsubsection%
{%
  \def\@tocentry{subsubsection}%
  \csuse{tocsubsubsectionshape}%
  \let\numberline\tocnumberline%
  \book@dottedtocline{3}{\tocsubsubsectionindent}{\tocsubsubsectionnumberlinenumwidth}%
}%
\def\pnumshape{\sffamily\fontsize{9}{11}\selectfont}
\def\l@paragraph#1#2{}%
\let\l@paragraph\@gobbletwo%
\let\l@subparagraph\@gobbletwo%
\let\l@subsubparagraph\@gobbletwo%
\def\book@dottedtocline#1#2#3#4#5%
{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor \pnumshape #5}%
     \par%
   }%
   \csuse{toc\@tocentry postskip}%
  \fi%
}
 \newcommand\source[1]%
 {%
   \bgroup
   \vskip1pc
   \let\author\@firstofone%
   \let\address\@firstofone%
   \let\date\@firstofone%
   \begin{flushright}
   #1%
   \end{flushright}
   \egroup%
   \par%
 }

\RequirePackage{mdframed}
\newmdenv{textbox}
\mdfdefinestyle{BtypeA}%
{%
  font={\fontsize{8}{10}\selectfont},%
  frametitlefont={\fontsize{9}{11}\sffamily\bfseries\MakeUppercase},%
  innertopmargin=4pt,%
  innerbottommargin=6pt,%
  innerleftmargin=6pt,%
  innerrightmargin=6pt,%
  backgroundcolor=black!15,%
  frametitleaboveskip=6pt,%
  linewidth=1.5pt%
}
\mdfdefinestyle{BtypeB}%
{%
  font={\fontsize{8}{10}\selectfont},%
  frametitlefont={\boxrule\fontsize{9}{11}\sffamily\bfseries\MakeUppercase},%
  linewidth=1.5pt,%
  innertopmargin=4pt,%
  innerbottommargin=6pt,%
  innerleftmargin=6pt,%
  innerrightmargin=6pt,%
  frametitleaboveskip=6pt,%
}
\def\boxrule{\rlap{\smash{\rule[-4pt]{\dimexpr(\textwidth)}{.5pt}}}}
\mdfsetup%
{%
  theoremseparator=,%
  theoremspace=\enskip,%
}
\AfterPackage{index}
{%
\renewenvironment{theindex}%
{%
  \edef\indexname{\the\@nameuse{idxtitle@\@indextype}}%
  \if@twocolumn%
    \@restonecolfalse
  \else%
    \@restonecoltrue%
  \fi%
  \columnseprule\z@%
  \columnsep35\p@%
  \twocolumn%
  [%
   \chapter*{\indexname}%
  ]%
  \indexfont
  \parindent\z@
  \parskip\z@ \@plus .3\p@\relax
  \let\item\@idxitem
}%
{%
  \if@restonecol%
    \onecolumn%
  \else%
    \clearpage
  \fi
}
\def\runmakeindex%
{%
  \begingroup
    \immediate\write18{makeindex \jobname}%
  \endgroup
}
\AtEndPreamble
{%
  \runmakeindex%
  \def\indexfont{\small}%
  \newindex{default}{idx}{ind}{Index}%
}
}
\AfterPackage{hyperref}%
{%
  \definecolor{linkcolor}{rgb}{0,.502,.675}%
  \hypersetup%
  {%
    colorlinks=true,
    bookmarksnumbered=true,
    allcolors=linkcolor,
    breaklinks=true,
    % hypertexnames=false, % Activate global counter; do not use \theH.... counters.
    %  pageanchor=false, % remove pageanchor.
    setpagesize=false, %% double PS code otherwise.
    %  pdfpagelabels=false, % we set pagelabels in esbook-pagelabel.dtx
    unicode=true,
  }%
}
\endinput
%%
%% End of file `elsevierbook-p04.cls'.
