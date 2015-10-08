\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style}

%%  Class loading and defaults:  %%

\LoadClass[letterpaper, 17pt, openany, twoside, extrafontsizes]{memoir}

%%  Page geometry:  %%

\settypeblocksize{612pt}{450pt}{*}
\setlrmargins{*}{1in}{*}
\setulmargins{*}{1in}{*}
\setheadfoot{\baselineskip}{0.5in}
\setheaderspaces{0.75in}{*}{*}
\checkandfixthelayout[nearest]

%%  Font and language setup:  %%

\RequirePackage{fontspec, polyglossia}
\setmainlanguage{english}
\setmainfont{Junicode}
\newfontfamily\hangulfont[ItalicFont = {Nanum Brush Script}, BoldFont = {* Bold}, Script = Hangul]{NanumMyeongjo}
\newcommand{\hangul}[1]{{\hangulfont #1}}
\newfontfamily\hanzifont[ItalicFont = {Libian SC}, BoldFont = {* Bold}, CJKShape = Simplified, CharacterWidth = Proportional, Script = CJK]{Songti SC}
\newcommand{\han}[1]{{\hanzifont #1}}

%%  List formatting:  %%

\RequirePackage{enumitem}

%%  Underline setup:  %%

\RequirePackage[normalem]{ulem}
\setlength{\ULdepth}{.5ex}

%%  Hypertext setup:  %%

\RequirePackage{hyperref}

%%  Date/time setup:  %%

\RequirePackage[english, cleanlook]{isodate}

%%  Additional packages:  %%

\RequirePackage{metalogo, calc}

%%  Option handling:  %%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

\ProcessOptions\relax

%%  Numbering:  %%

\setsecnumdepth{chapter}

%%  Captions:  %%

\captionnamefont{\small\itshape}
\captiontitlefont{\small}
\captiondelim{ – }

%%  Link formatting:  %%

\newcommand{\uriref}[1]{\dashuline{\href{#1}{#1}}}
\newcommand{\urireftext}[2]{\dashuline{\href{#1}{#2}}}

%%  Defaults:  %%

\openany
\headstyles{dowding}
