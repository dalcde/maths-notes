\ProvidesClass{shortart}[2018/01/01 Short Article Class]
\NeedsTeXFormat{LaTeX2e}

\newif\if@useafourpaper
\DeclareOption{fullpage}{\@useafourpapertrue}

\ProcessOptions\relax

\if@useafourpaper
  \LoadClass[a4paper]{article}
\else
  \LoadClass[a5paper, 10pt]{article}
  \RequirePackage[margin=0.4in, includefoot]{geometry}
\fi

\RequirePackage[hidelinks]{hyperref}
\RequirePackage[hang, symbol]{footmisc}
\RequirePackage{microtype}
\RequirePackage{titlesec}

\titleformat{\section}{\normalfont\Large\sc}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\large\sc}{\thesubsection}{1em}{}
\renewcommand\tableofcontents{\@starttoc{toc}}

\setcounter{tocdepth}{1}
\def\footnotemargin{10pt}

\date{}

\let\real@title\title
\renewcommand\title[1]{\real@title{#1}\hypersetup{pdftitle={#1}}}
\let\real@author\author
\renewcommand\author[1]{\real@author{#1}\hypersetup{pdfauthor={#1}}}

\AtBeginDocument{\null \begin{center}\vskip 1.4em {\LARGE \@title \par } \vskip 1em{\large \@author}\end{center}\vskip 1.5em\tableofcontents\vskip 1.5em}

\newcommand\qedshift{\vspace{-17pt}}
\newcommand\fakeqed{\pushQED{\qed}\qedhere}
\newcommand\separator{\begin{center}\rule{3cm}{0.2pt}\vspace{2pt}\end{center}}
