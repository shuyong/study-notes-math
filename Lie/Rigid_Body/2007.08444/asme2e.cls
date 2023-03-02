% ASME DOCUMENT CLASS - asme2e.cls
% 	for LaTeX version 2e - 3/17/10
%
% WARNING: This is an unauthorized class file. It has not been thoroughly
% tested so it probably still has bugs. We will do our best to fix them when
% found.
%
% ---------------------------------------------------------------------------
%   filename:      asme2e.cls
%   version 1.7.2, Aug 28, 2012.
%        (1) Integrated journal samples and class files: pass class option
%            "journal" to switch to journal mode. This file now incorporates
%            all content from asme2ej.  Using the \confXX macros in journal
%            mode displays a warning but doesn't change the output.
%        (2) Fixed font and capitalization of captions.
%        (3) Start using package "geometry" to ensure we get the page size
%            we want.
%             --- Ryan Pavlik <rpavlik@iastate.edu>
%   version 1.7.1, Mar 17, 2010.
%        (1) Remove embedded cite.sty and just use one.
%        (2) Part and section headings in uppercase.
%        (3) Remove commented-out "boatanchors" in favor of version control.
%             --- Ryan Pavlik <rpavlik@iastate.edu>
%   version 1.6, Jan 11, 2010.
%        (1) Greek letters in math mode are italicized.
%        (2) Figure captions are in uppercase bold sans serif font of 9 points.
%        (3) The defined commands \hour \minute conflict with the commands
%              \hour and minute in the approved package SIunits.
%              They were changed to \thour and \tminute.
%             --- Marc LaViolette <laviolette-m@rmc.ca>
%   version 1.4, May 12, 2005.
%        (1) Modified asme2e.cls to support pdflatex
%        (2) Modified asme2e.cls to support multiple lines in conference name.
%             --- Matt Campbell mtycampbell@ucdavis.edu
%   version:       1.2
%   date:          6/29/01
%   ported by:     Kenneth Sprott
%   address:       Department of Mechanical Engineering
%		   University of California, Davis
%		   Davis, California 95616
%   e-mail:        kssprott@ucdavis.edu
%   description:   This is a new version of the asme2e class file v1.0.
%		   New features in this file include:
%		   1. Eliminating the pifont package from the file.
%		      It was not required and had caused some problems.
%		   2. Fixed the font size definitions.  It is now possible
%		      to use 10, 11, and 12pt font.  The old size definition
%		      was incorrect and the default 12pt was actually 10pt.
%		      The default is now 10pt.
%		   3. Add support for the new reference format required by
%		      ASME. This requires the use of Bibtex.
%                  4. Eliminate the subfigure code held over from the original
%                     ASME style file. Usepackage subfigure instead.
%                  5. Add cleanhead option to eliminate the banner on the title
%                     page.
%                  6. Add cleanfoot option to eliminate the copyright on each
%                     footer.
%   usage:         \documentclass[options]{asme2e}
% ---------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{asme2e}[2012/08/28 v1.7.2 ASME conference/journal paper class]

\RequirePackage{ifthen}
\RequirePackage{times}      % Loads the Times-Roman Fonts
%\RequirePackage{mathptmx}    % Loads the Times-Roman Math Fonts
\RequirePackage{ifpdf}      % Needed to pick between latex and pdflatex
\RequirePackage{cite}      % Replacing the embedded one.
\RequirePackage{textcase}  % Safer upper/lowercasing

\newboolean{@titlepage}
\newcommand\@ptsize{}
\newboolean{@cleanfoot}
\newboolean{@cleanhead}
\newboolean{@asme@journal}

% -------------------------------------------------------
%                   Options
% -------------------------------------------------------

\DeclareOption{twoside}{\@twosidetrue \@mparswitchtrue}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{cleanfoot}{\@cleanfoottrue}
\DeclareOption{cleanhead}{\@cleanheadtrue}
\DeclareOption{journal}{\setboolean{@asme@journal}{true}}
\DeclareOption{conference}{\setboolean{@asme@journal}{false}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}} % Corresponds to 10pt font
\DeclareOption{11pt}{\renewcommand\@ptsize{1}} % Corresponds to 11pt font
\DeclareOption{12pt}{\renewcommand\@ptsize{2}} % Corresponds to 12pt font

\ExecuteOptions{oneside,onecolumn,letterpaper,10pt,final,conference}
\ProcessOptions


\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\newcommand\currenttime{\tminute\time\thour\tminute\divide\thour60
\the\thour:\multiply\thour60\advance\tminute-\thour\the\tminute}



% ------------------------------------------------------
%                Font and Size Definitions
% ------------------------------------------------------

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand{\baselinestretch}{1}

% These next conditional statements set up the font size definitions
% for either 10, 11, or 12 pt font.  The default is 10pt.

\ifthenelse{\@ptsize = 0}{
\typeout{Ten Point}
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{12}%
   \abovedisplayskip 18\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayshortskip \abovedisplayskip
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \belowdisplayskip \abovedisplayskip}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{10}
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep \z@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt{8}}
\newcommand\tiny{\@setfontsize\tiny\@vpt{6}}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}


\def\@listI{\leftmargin\leftmargini
            \parsep 4\p@ \@plus2\p@ \@minus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep4\p@ \@plus2\p@ \@minus\p@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@ \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
}{}

\ifthenelse{\@ptsize = 1}{
\typeout{Eleven Point}
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt{13.6}%
   \abovedisplayskip 19\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayshortskip \abovedisplayskip
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@ixpt{11}%
   \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep \z@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\def\@listI{\leftmargin\leftmargini
            \parsep 4.5\p@ \@plus2\p@ \@minus\p@
            \topsep 9\p@   \@plus3\p@ \@minus5\p@
            \itemsep4.5\p@ \@plus2\p@ \@minus\p@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4.5\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@   \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
}{}

\ifthenelse{\@ptsize = 2}{
\typeout{Twelve Point}
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xiipt{14.5}%
   \abovedisplayskip 20\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayshortskip \abovedisplayskip
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xipt{13.6}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 9\p@ \@plus3\p@ \@minus5\p@
               \parsep 4.5\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\large{\@setfontsize\large\@xivpt{18}}
\newcommand\Large{\@setfontsize\Large\@xviipt{22}}
\newcommand\LARGE{\@setfontsize\LARGE\@xxpt{25}}
\newcommand\huge{\@setfontsize\huge\@xxvpt{30}}
\let\Huge=\huge
\def\@listI{\leftmargin\leftmargini
            \parsep 5\p@  \@plus2.5\p@ \@minus\p@
            \topsep 10\p@ \@plus4\p@   \@minus6\p@
            \itemsep5\p@  \@plus2.5\p@ \@minus\p@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    5\p@   \@plus2.5\p@ \@minus\p@
              \parsep    2.5\p@ \@plus\p@    \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2.5\p@\@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
}{}



% These are specific fonts used in the file.

\DeclareFixedFont{\ninsfb}{OT1}{phv}{b}{n}{9}
\DeclareFixedFont{\ninsf}{OT1}{phv}{m}{n}{9}
\DeclareFixedFont{\egtsf}{OT1}{phv}{m}{n}{8}
\DeclareFixedFont{\egtsfb}{OT1}{phv}{b}{n}{8}
\DeclareFixedFont{\sevsf}{OT1}{phv}{m}{n}{7}
\DeclareFixedFont{\bannerfnt}{OT1}{phv}{b}{n}{10}
\DeclareFixedFont{\pnumfnt}{OT1}{phv}{b}{n}{18}
\DeclareFixedFont{\twlsfb}{OT1}{phv}{b}{n}{12}
\DeclareFixedFont{\tensfb}{OT1}{phv}{b}{n}{10}
\DeclareFixedFont{\tensf}{OT1}{phv}{m}{n}{10}
\DeclareFixedFont{\phvtf}{OT1}{phv}{b}{n}{18}


\DeclareOldFontCommand{\rmbf}{\normalfont\rmfamily\bf}{\mathrm}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand*\mit{\@fontswitch{\relax}{\mathnormal}}

\DeclareFontFamily{OT1}{msbm}{}
\DeclareFontShape{OT1}{msbm}{m}{n}{<5> <6> <7> <8> <9> <10> gen * msbm }{}

\newcommand\bb{\fontfamily{msbm}\selectfont}
\newcommand\bi{\fontseries{bc}\fontshape{it}\selectfont}

\ifthenelse{\boolean{@asme@journal}} {
  % JOURNAL PAPER
  \typeout{ASME Journal Paper}
  \newcommand\@asme@heading@caps{}
  \DeclareFixedFont{\@asme@heading@font}{OT1}{ptm}{b}{n}{10}
} {
  % CONFERENCE PAPER
  \typeout{ASME Conference Paper}
  \newcommand\@asme@heading@caps{\MakeTextUppercase}
  \DeclareFixedFont{\@asme@heading@font}{OT1}{phv}{b}{n}{10}
} % end of journal/conference conditional

\DeclareFixedFont{\@asme@caption@font}{OT1}{phv}{b}{n}{8}
\DeclareFixedFont{\@asme@affiliation@font}{OT1}{phv}{m}{n}{10}
\DeclareFixedFont{\@asme@author@font}{OT1}{phv}{b}{n}{10}

\newcommand\@asme@caption@text[1]{\@asme@caption@font\@asme@heading@caps{#1}}

% -----------------------------------------------------------
%                 Page Layout
% -----------------------------------------------------------

\setlength{\paperheight}{11in}
\setlength{\paperwidth}{8.5in}

\RequirePackage{geometry}
\ifthenelse{\boolean{@asme@journal}} {
  % JOURNAL PAPER
  \setlength{\oddsidemargin}{0.925in}
  \setlength{\evensidemargin}{0.925in}
  % Added by Matt Campbell to make compatible with pdflatex 3/8/2005
  \ifpdf%
     \setlength{\topmargin}{0.8in}
  \else
     \setlength{\topmargin}{1.5in}
  \fi
  % End pdflatex section

   \setlength{\columnsep}{.17in}
   \setlength{\textheight}{10.00in}
   \setlength{\textwidth}{6.85in}
} {
  % CONFERENCE PAPER
  \setlength{\oddsidemargin}{48pt}
  \setlength{\evensidemargin}{48pt}
  % Added by Matt Campbell to make compatible with pdflatex 3/8/2005
  \ifpdf%
     \setlength{\topmargin}{1.3in}% use 1.3in top margin for pdflatex
  \else
     \setlength{\topmargin}{2.0in}% use 2.0in top marging for latex - same as original
  \fi
  % End pdflatex section

   \setlength{\columnsep}{.375in}
   \setlength{\textheight}{9.00in}
   \setlength{\textwidth}{7.5in}
} % end of journal/conference conditional
\setlength{\marginparwidth}{0pt}
\setlength{\marginparsep}{11pt}
\setlength{\marginparpush}{5pt}
\setlength{\columnseprule}{0pt}
\setlength{\headheight}{10pt}
\setlength{\headsep}{18pt}
\setlength{\topskip}{10pt}
\setlength{\footskip}{24pt}
\advance\textheight by -\headheight
\advance\textheight by -\headsep
\setlength{\footnotesep}{6.65pt}
\setlength{\skip\footins}{9pt plus4pt minus 2pt}
\setlength{\floatsep}{18pt plus2pt minus2pt}
\setlength{\textfloatsep}{20pt plus4pt minus2pt}
\setlength{\intextsep}{24pt plus4pt minus2pt}
\setlength{\dblfloatsep}{12pt plus2pt minus2pt}
\setlength{\dbltextfloatsep}{20pt plus2pt minus4pt}
\setlength{\@fptop}{0pt plus 1fil}
\setlength{\@fpsep}{8pt plus 2fil}
\setlength{\@fpbot}{0pt plus 1fil}
\setlength{\@dblfptop}{0pt plus 1fil}
\setlength{\@dblfpsep}{8pt plus 2fil}
\setlength{\@dblfpbot}{0pt plus 1fil}
\setlength{\parskip}{0pt plus 1pt}
\setlength{\parindent}{.25in}
\setlength{\partopsep}{2pt plus 1pt minus 1pt}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

\setlength{\leftmargini}{.25in}
\setlength{\leftmarginii}{22pt}
\setlength{\leftmarginiii}{18.7pt}
\setlength{\leftmarginiv}{17pt}
\setlength{\leftmarginv}{10pt}
\setlength{\leftmarginvi}{10pt}

% -------------------------------------------------------------------------
%                          Sections and Enumerate
% -------------------------------------------------------------------------

% Changes the enumerate environments

\setlength{\leftmargin}{\leftmargini}
\setlength{\labelsep}{5pt}
\setlength{\labelwidth}{\leftmargini}
\addtolength{\labelwidth}{-\labelsep}
\renewcommand{\@listI}{\leftmargin\leftmargini\parsep\z@
\topsep 6\p@ plus2\p@ minus1\p@\itemsep\z@}
\let\@listi\@listI
\@listi
\renewcommand{\@listii}{\setlength{\leftmargin}{\leftmarginii}
   \setlength{\labelwidth}{\leftmarginii}
   \addtolength{\labelwidth}{-\labelsep}
   \setlength{\topsep}{4\p@ plus2\p@ minus\p@}
   \setlength{\parsep}{\z@}
   \setlength{\itemsep}{\parsep}}
\renewcommand{\@listiii}{\setlength{\leftmargin}{\leftmarginiii}
    \setlength{\labelwidth}{\leftmarginiii}
    \addtolength{\labelwidth}{-\labelsep}
    \setlength{\topsep}{2\p@ plus\p@ minus\p@}
    \setlength{\parsep}{\z@}
    \setlength{\partopsep}{\p@ plus\z@ minus\p@}
    \setlength{\itemsep}{\parsep}}
\renewcommand{\@listiv}{\setlength{\leftmargin}{\leftmarginiv}
     \setlength{\labelwidth}{\leftmarginiv}
     \addtolength{\labelwidth}{-\labelsep}}
\renewcommand{\@listv}{\setlength{\leftmargin}{\leftmarginv}
     \setlength{\labelwidth}{\leftmarginv}
     \addtolength{\labelwidth}{-\labelsep}}
\renewcommand{\@listvi}{\setlength{\leftmargin}{\leftmarginvi}
     \setlength{\labelwidth}{\leftmarginvi}
     \addtolength{\labelwidth}{-\labelsep}}
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}


\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item[]}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item[]}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}

\newenvironment{sequence}{      % Special enumerate environments for asme
    \renewcommand{\theenumi}{\alph{enumi}}
    \renewcommand{\labelenumi}{(\theenumi)}
    \begin{enumerate}}
    {\end{enumerate}}
\newenvironment{enumeroman}{
     \renewcommand{\theenumi}{\roman{enumi}}
     \renewcommand{\labelenumi}{(\theenumi)}
     \begin{enumerate}}
     {\end{enumerate}}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\renewcommand\theequation{\@arabic\c@equation}  % equation environment

\setlength\arraycolsep{1.5pt}  %Different from article class
\setlength\tabcolsep{6pt}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}

\renewcommand{\footnoterule}{    % This modifies the default footnote style
     \kern12\p@
     \hrule width.5in height.25pt
     \kern10\p@}

\long\def\@makefntext#1{\parindent 1em\noindent
    \hbox to1.8em{\hss$\m@th^{\@thefnmark}$}#1}

\def\@fnsymbol#1{\ifcase#1\or *\or \dagger\or \ddagger\or
  \Section\or \Paragraph\or \|\or **\or \dagger\dagger
   \or \ddagger\ddagger \else\@ctrerr\fi\relax}

% Title page definition

\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \if@compatibility
        \setcounter{page}{0}
      \else
        \setcounter{page}{1}%
      \fi}%
    {\if@restonecol\twocolumn \else \newpage \fi
      \setcounter{page}{1}%
    }


% Section Definitions

\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart         {\@Roman\c@part}
\renewcommand\thesection      {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\part{\par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname~\thepart
       \par\nobreak
     \fi
     \huge \bfseries \@asme@heading@caps{#2}%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \huge \bfseries \@asme@heading@caps{#1}\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}
\def\@endpart{\vfil\newpage
              \if@twoside
                \hbox{}%
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}

% This changes the section headings style

\newcommand{\section}{\@startsection {section}{1}{\z@}
                        {24pt plus3pt minus2pt}
                        {0.0001pt}
                        {\@asme@heading@font\@asme@heading@caps}}
\newcommand{\subsection}{\@startsection {subsection}{2}{\z@}
                           {18pt plus2pt minus1pt}
                           {0.0001pt}
                           {\@asme@heading@font}}
\ifthenelse{\boolean{@asme@journal}} {
  % JOURNAL PAPER
  \newcommand{\subsubsection}{\@startsection {subsubsection}{3}{\z@}
                             {18pt plus2pt minus1pt}
                             {0.0001pt}
                             {\@asme@heading@font}}
} {
  % CONFERENCE PAPER
  \newcommand{\subsubsection}{\@startsection {subsubsection}{3}{\parindent}
                             {18pt plus2pt minus1pt}
                             {-1em}
                             {\@asme@heading@font}}
} % end of journal/conference conditional

\newcommand{\paragraph}{\@startsection {paragraph}{4}{\z@}
                          {12pt plus2pt minus1pt}
                          {-1em}
                          {\normalfont\normalsize\bfseries}}
\newcommand{\subparagraph}{\@startsection {subparagraph}{4}{\parindent}
                            {12pt plus2pt minus1pt}
                            {-1em}
                            {\normalfont\normalsize\bfseries}}

% -----------------------------------------------------------------------
%                         Table of Contents
% -----------------------------------------------------------------------

\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\newcommand\tableofcontents{%
    \section*{\contentsname
        \@mkboth{%
           \MakeTextUppercase\contentsname}{\MakeTextUppercase\contentsname}}%
    \@starttoc{toc}%
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
      \fi
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{{List of Figures}
      \@mkboth{\MakeTextUppercase{List of Figures}}
              {\MakeTextUppercase{List of Figures}}}
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{{List of Tables}
      \@mkboth{%
          \MakeTextUppercase{List of Tables}}
         {\MakeTextUppercase{List of Tables}}}
    \@starttoc{lot}%
    }
\let\l@table\l@figure

% ------------------------------------------------------------------------
%                         Tables and Figures
% ------------------------------------------------------------------------
\setcounter{topnumber}{4}         % These change the float placement
\renewcommand{\topfraction}{.9}
\setcounter{bottomnumber}{4}
\renewcommand{\bottomfraction}{.9}
\setcounter{totalnumber}{4}
\renewcommand{\textfraction}{.1}
\renewcommand{\floatpagefraction}{.901}
\setcounter{dbltopnumber}{4}
\renewcommand{\dbltopfraction}{.9}
\renewcommand{\dblfloatpagefraction}{.91}

\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{APPENDIX}
\newcommand\refname{\@asme@heading@caps{References}}
\newcommand\contentsname{CONTENTS}
\ifthenelse{\boolean{@asme@journal}} {
  % JOURNAL PAPER
  \newcommand\figurename{Fig.}
} {
  % CONFERENCE PAPER
  \newcommand\figurename{Figure}
} % end of journal/conference conditional


\long\def\@makecaption#1#2{ % This remains the same from asme.sty
   \par\addvspace{6pt}{
   \setbox\@tempboxa\hbox{\@asme@caption@font#1.\quad\@asme@caption@text{#2}}%
   \ifdim \wd\@tempboxa >\hsize
       {\@asme@caption@font#1.\quad\ignorespaces\@asme@caption@text{#2}}\par
     \else
       \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
   \fi}} %

\newbox\tempbox
\newcommand{\figurebox}[2]{%
            \dimen99=#2
            \divide\dimen99 by2
            \centerline{\vbox{\hrule\hbox to #1{\vrule\hfill\vbox to #2{\hbox to
            #1{\hfill{\vrule height\dimen99 width0pt{\hfill}}\hfill}\vfill}
            \vrule}\hrule}}}
\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\small\textbf{\textsf{\@asme@heading@caps{\figurename~\thefigure}}}}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\small\textbf{\textsf{\@asme@heading@caps{\tablename~\thetable}}}}
\newenvironment{table}{%
            \small
            \renewcommand{\arraystretch}{1.5}
            \@float{table}}
            {\end@float}
\newenvironment{table*}{%
            \small
            \renewcommand{\arraystretch}{1.5}
            \@dblfloat{table}}
            {\end@dblfloat}

\newcommand\x{@{\extracolsep{\hfill}}} % Command to control column space in
                                         % table environment.
% --------------------------------------------------------------------------
%                               Title Page
% --------------------------------------------------------------------------



\ifthenelse{\boolean{@asme@journal}} {
  % JOURNAL PAPER

   \newcommand{\confshortname}[1]{\typeout{Warning: in journal paper mode, so ignoring confshortname=#1}}
   \newcommand{\conffullname}[1]{\typeout{Warning: in journal paper mode, so ignoring conffullname=#1}}
   \newcommand{\confdate}[1]{\typeout{Warning: in journal paper mode, so ignoring confdate=#1}}
   \newcommand{\confmonth}[1]{\typeout{Warning: in journal paper mode, so ignoring confmonth=#1}}
   \newcommand{\confyear}[1]{\typeout{Warning: in journal paper mode, so ignoring confyear=#1}}
   \newcommand{\confcountry}[1]{\typeout{Warning: in journal paper mode, so ignoring confcountry=#1}}
   \newcommand{\confcity}[1]{\typeout{Warning: in journal paper mode, so ignoring confcity=#1}}
   \newcommand{\papernum}[1]{\typeout{Warning: in journal paper mode, so ignoring papernum=#1}}
} {
  % CONFERENCE PAPER
   \newcommand\@confshortname{}
   \newcommand\@conffullname{}
   \newcommand\@confdate{}
   \newcommand\@confmonth{}
   \newcommand\@confyear{}
   \newcommand\@confcity{}
   \newcommand\@confcountry{}
   \newcommand\@papernum{}
   \newcommand{\confshortname}[1]{\gdef\@confshortname{#1}}
   \newcommand{\conffullname}[1]{\gdef\@conffullname{#1}}
   \newcommand{\confdate}[1]{\gdef\@confdate{#1}}
   \newcommand{\confmonth}[1]{\gdef\@confmonth{#1}}
   \newcommand{\confyear}[1]{\gdef\@confyear{#1}}
   \newcommand{\confcountry}[1]{\gdef\@confcountry{#1}}
   \newcommand{\confcity}[1]{\gdef\@confcity{#1}}
   \newcommand{\papernum}[1]{\gdef\@papernum{#1}}
} % end of journal/conference conditional

\if@titlepage
  \newcommand{\maketitle}{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \let\thanks\relax\let\maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}}
\else
\newcommand{\maketitle}{\par
  \begingroup
    \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox to\z@{$\m@th^{\@thefnmark}$\hss}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hbox to1.8em{\hss$\m@th^{\@thefnmark}$}##1}%
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
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \let\thanks\relax
  \let\maketitle\relax\let\@maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}}
\fi
 
%\renewcommand\title[1]{\gdef\@title{\uppercase{#1}}}
\renewcommand\title[1]{\gdef\@title{#1}}

\if@cleanhead
\def\@maketitle{%
  \newpage
  \null\vspace*{-26pt}
   \vbox{\hbox to \textwidth{\begin{tabular}{@{}c@{\hskip3pc}}
   \hbox to 46pt{\vbox to 46pt{\vss\hsize46pt\vss}}\end{tabular}\hss
  \vbox{\hsize37pc\scriptsize\sf\vskip\baselineskip%

  \vskip.5in}
  \hskip1pc}}
  \vskip.25in
  \vskip .25pc{\large\twlsfb
               \begin{center}\leftskip.5in plus1fill\rightskip\leftskip
               \@title\par\end{center}}
  \vskip2pc{\begin{center}\@author\par\end{center}}\vskip12pt}

\else

\def\@maketitle{%
  \newpage
  \null\vspace*{-26pt}             % Took out ASMElogo provision
   \vbox{\hbox to \textwidth{\begin{tabular}{@{}c@{\hskip3pc}}
   \hbox to 46pt{\vbox to 46pt{\vss\hsize46pt\vss}}\end{tabular}\hss
  \vbox{\hsize37pc\scriptsize\sf\vskip\baselineskip%
  \bannerfnt\begin{flushright}% added flushright to properly wrap long conference names
  \ifthenelse{\boolean{@asme@journal}} {} {
     % Conference paper only
     \hfill Proceedings of \@conffullname\par
     \hfill \@confshortname\par
     \hfill \@confmonth\ \@confdate, \@confyear, \@confcity, \@confcountry

     \vskip.5in
     \hfill {\pnumfnt\@papernum}
  } % end of journal/conference conditional

  \end{flushright}}
  \hskip1pc}}
  \ifthenelse{\boolean{@asme@journal}} {
     % Journal paper
     \vskip .5pc{\Large\phvtf
                  \begin{center}\leftskip.5in plus1fill\rightskip\leftskip
                  \@title\par\end{center}}
  } {
     % Conference paper
     \vskip.15in%.25in original value w/out flushright
     \vskip .25pc{\large\twlsfb
                  \begin{center}\leftskip.5in plus1fill\rightskip\leftskip
                  \@title\par\end{center}}
  } % end of journal/conference conditional
  \vskip2pc{\begin{center}\@author\par\end{center}}\vskip12pt}
\fi

\if@titlepage
  \newenvironment{abstract}{%
     \titlepage
     \null\vfil
     \begin{center}
        {\@asme@heading@font ABSTRACT}
        \@endparpenalty\@M
     \end{center}}
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
     \if@twocolumn
        \ifthenelse{\boolean{@asme@journal}} {
           % Journal paper
           \normalsize\noindent
           \noindent
         } {
           % Conference paper
           \normalsize\par\addvspace{12pt}\noindent
           {\@asme@heading@font ABSTRACT}\par
         } % end of journal/conference conditional
     \else
        \begin{center}
          {{\@asme@heading@font ABSTRACT}\vspace{-.5em}\vspace{\z@}}
        \end{center}
        \quotation
     \fi}
     {\if@twocolumn\else\endquotation\fi}
\fi

% Get the multiple author set

\newcount\@authcnt
\newcount\@tmpcnt\@tmpcnt\z@

\def\@author{%
 \ifnum\@authcnt>7
  \ifnum\@tmpcnt<\@authcnt
   \global\advance\@tmpcnt1
   \leavevmode\hbox{\hss\csname @auth\romannumeral\the\@tmpcnt\endcsname\hss}%
   \quad
   \let\next\@author
  \else
   \let\next\relax
  \fi
 \else
  \ifnum\@tmpcnt<\@authcnt
   \global\advance\@tmpcnt1
   \ifnum\@tmpcnt=\@authcnt
    \expandafter\expandafter\expandafter\au@car\csname @auseq\romannumeral\the%
\@authcnt\endcsname\@nil
    \leavevmode\hbox to \@au@car{\hss\csname @auth\romannumeral\the\@tmpcnt%
\endcsname\hss}
   \else
    \expandafter\expandafter\expandafter\au@car\csname @auseq\romannumeral%
    \the\@authcnt\endcsname\@nil
    \leavevmode\hbox to \@au@car{\hss\csname @auth\romannumeral\the\@tmpcnt%
    \endcsname\hss}
   \fi
   \let\next\@author
  \else
   \let\next\relax
  \fi
 \fi
 \next}


\newcommand{\affiliation}[1]{\\ \@asme@affiliation@font #1}

\def\@auseqi{{7.4in}}
\def\@auseqii{{3.45in}{3.45in}}
\def\@auseqiii{{2.4in}{2.4in}{2.4in}}
\def\@auseqiv{{3.45in}{3.45in}{3.45in}{3.45in}}
\def\@auseqv{{2.4in}{2.4in}{2.4in}{3.45in}{3.45in}}
\def\@auseqvi{{2.4in}{2.4in}{2.4in}{2.4in}{2.4in}{2.4in}}
\def\@auseqvii{{3.45in}{3.45in}{2.4in}{2.4in}{2.4in}{3.45in}{3.45in}}
\def\au@car#1#2\@nil{\gdef\@au@car{#1}}
\def\au@cdr#1#2\@nil{\expandafter\gdef\csname @auseq\romannumeral\the\@authcnt%
\endcsname{#2}}

\renewcommand{\author}[1]{%
    \global\advance\@authcnt1
    \expandafter\gdef\csname @auth\romannumeral\the\@authcnt\endcsname
    {\normalsize\sf\begin{tabular}[t]{@{}c@{}}\@asme@author@font#1\\[20pt]
     \end{tabular}}}

% ---------------------------------------------------------------------------
%                           Bibliography
% ---------------------------------------------------------------------------

\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\@Alph\c@section}}

\newcommand\newblock{}
\newif\if@openbib
\@openbibfalse

% This generates the format for the bibliography enties. It is taken from
% the article class.

\newdimen\bibindent
\bibindent=1.5em
\newenvironment{thebibliography}[1]
     {\section*{\refname
        \@mkboth{\MakeTextUppercase\refname}{\MakeTextUppercase\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \if@openbib
              \advance\leftmargin\bibindent
              \itemindent -\bibindent
              \listparindent \itemindent
              \parsep \z@
            \fi
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \if@openbib
        \renewcommand\newblock{\par}%
      \else
        \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
      \fi
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}



% ---------------------------------------------------------------------------
%                          Special ASME declarations
% --------------------------------------------------------------------------

% Nomenclature environment

\newbox\tempbox
\newenvironment{nomenclature}{%
   \newcommand\entry[2]{%
       \setbox\tempbox\hbox{##1.\quad}
       \hangindent\wd\tempbox\noindent{##1}\quad\ignorespaces##2\par}
       \section*{\@asme@heading@caps{Nomenclature}}}{\par\addvspace{12pt}}

% Acknowledgement environment

\ifthenelse{\boolean{@asme@journal}} {
  % JOURNAL PAPER
   \newenvironment{acknowledgment}{%
   \section*{\@asme@heading@caps{Acknowledgements}}}{\par\addvspace{12pt}}
} {
  % CONFERENCE PAPER
   \newenvironment{acknowledgment}{%
   \section*{\@asme@heading@caps{Acknowledgement}}}{\par\addvspace{12pt}}
} % end of journal/conference conditional

% The following are the new theorem definitions


\AtEndOfClass{%
  \def\@begintheorem#1#2{\trivlist \item[\hskip \labelsep%
  {\tensfb #1\ #2.}]\it}
  \def\@opargbegintheorem#1#2#3{\trivlist
        \item[\hskip \labelsep%
  {\tensfb #1\ #2\ (#3).}]\it}
  \def\newtheorem{\@ifstar{\@newstheorem}{\@newtheorem}}
  \def\@newtheorem#1{\@ifnextchar[{\@othm{#1}}{\@nthm{#1}}}
  \def\@newstheorem#1#2{\@namedef{#1*}
  {\@ifnextchar[{\@opargbeginstheorem{#2}}{\@beginstheorem{#2}}}%
  \@namedef{end#1*}{\@endtheorem}}
  \def\@beginstheorem#1{\trivlist \item[\hskip \labelsep%
  {\tensfb #1.}]\it}
  \def\@opargbeginstheorem#1[#2]{\trivlist\item[\hskip \labelsep%
  {\tensfb #1\ (#2).  }]\it}
%
  \def\proof{\@ifnextchar[{\@optargproof}{\@proof}}
  \def\@proof{\trivlist \item[\hskip \labelsep{\it Proof.}]}
  \def\@optargproof[#1]{\trivlist \item[\hskip \labelsep{\it #1.}]}
  \def\endproof{\endtrivlist}
  \def\qed{\vskip-\lastskip\vskip-\baselineskip\hbox to \hsize{\hfill$\Box$}}
}


% -------------------------------------------------------------------------
%                 Header and Footer Definitions
% -------------------------------------------------------------------------

\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\sectionmark##1{%
      \markboth {\MakeTextUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection\hskip 1em\relax
        \fi
        ##1}}{}}%
    \def\subsectionmark##1{%
      \markright {%
        \ifnum \c@secnumdepth >\@ne
          \thesubsection\quad
          \fi
          ##1}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\sectionmark##1{%
      \markright {\MakeTextUppercase{%
        \ifnum \c@secnumdepth >\m@ne
          \thesection\quad
        \fi
        ##1}}}}
\fi

\if@cleanfoot
 \def\ps@myheadings{%
    \let\@mkboth\@gobbletwo
    \def\@oddfoot{\hfil\thepage\hfil}
    \def\@evenfoot{\hfil\thepage\hfil}
    \let\@oddhead\@empty\let\@evenhead\@empty
    \def\sectionmark##1{}
    \def\subsectionmark##1{}
    }
\def\ps@plain{\let\@mkboth\@gobbletwo
     \def\@oddhead{$\smash{\raise72pt\hbox%
                  {}}$\hfill}%
     \def\@oddfoot{\reset@font\rm \hfil\thepage%
     \hfil}%
     \let\@evenhead\@oddhead\let\@evenfoot\@oddfoot}

\else
 \def\ps@myheadings{%
     \let\@mkboth\@gobbletwo
     \ifthenelse{\boolean{@asme@journal}} {} {
         % CONFERENCE PAPER
        \def\@oddfoot{\hskip1.55in\hfil\thepage\hfil Copyright\ \ \copyright\ \@confyear%
       ~by ASME}%
        \def\@evenfoot{\hskip1.55in\hfil\thepage\hfil Copyright\ \ \copyright\ \@confyear%
       ~by ASME}%
     } % end of journal/conference conditional

    \let\@oddhead\@empty
    \let\@evenhead\@empty
    \def\sectionmark##1{}
    \def\subsectionmark##1{}
    }
\def\ps@plain{\let\@mkboth\@gobbletwo
     \def\@oddhead{$\smash{\raise72pt\hbox%
                  {}}$\hfill}%
     \ifthenelse{\boolean{@asme@journal}} {} {
        % CONFERENCE PAPER
        \def\@oddfoot{\reset@font\rm\hskip1.55in\hfil\thepage%
        \hfil Copyright\ \ \copyright\ \@confyear\ by ASME}%
     } % end of journal/conference conditional
     \let\@evenhead\@oddhead\let\@evenfoot\@oddfoot}

\fi




\mark{{}{}}

\newcount\tminute\newcount\thour
\def\currenttime{t\minute\time\thour\tminute\divide\thour60
\the\thour:\multiply\thour60\advance\tminute-\thour\the\tminute}

\markboth{}{}
\ps@myheadings
\pagenumbering{arabic}
\if@twocolumn\twocolumn\sloppy\flushbottom\else\onecolumn\fi
\advance\hoffset-7pc
\advance\voffset-10pc
%
%
\endinput

% End of Class


