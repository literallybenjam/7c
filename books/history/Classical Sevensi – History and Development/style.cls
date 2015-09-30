\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{leafbk}[2015/09/15 Book class for LaTeX]

%%  Class loading and defaults:  %%

\LoadClass[letterpaper, 17pt, openany, twoside]{memoir}

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
\setotherlanguage{korean}  %  used as stand-in for sevensi, for now
\newfontfamily\koreanfont[ItalicFont = {Nanum Brush Script}, BoldFont = {* ExtraBold}, Script = Hangul]{NanumMyeongjo}

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

\RequirePackage{metalogo}

%%  Option handling:  %%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

\ProcessOptions\relax

%%  Defaults:  %%

\openany
\headstyles{dowding}

%%  Matter handling:  %%

\renewcommand{\frontmatter}{
    \openright
    \pagenumbering{roman}
    \pagestyle{simple}
}
\renewcommand{\mainmatter}{
    \openany
    \pagenumbering{arabic}
    \pagestyle{simple}
}
\renewcommand{\backmatter}{
    \openright
}

%%  Link formatting:  %%

\newcommand{\uriref}[1]{\dashuline{\href{#1}{#1}}}
\newcommand{\urireftext}[2]{\dashuline{\href{#1}{#2}}}
