\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{thesis}[2012/04/25 DBIS Thesis Package]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ExecuteOptions{a4paper,
	10pt,
	%bibtotoc,
	bibliography=totoc,
	%liststotoc,
	listof=totoc,
	twoside,
	openright,
	%pointlessnumbers,
	numbers=noenddot,
	%normalheadings,
	headings=normal,
	chapterprefix,	% Display chapters with additional "Chapter" title
	headsepline,	% Line afer header
	DIV=9}
\ProcessOptions\relax
\LoadClass{scrbook}

\pagestyle{headings}
\RequirePackage[english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}					
\RequirePackage{microtype}						
\renewcommand{\sfdefault}{phv}
\renewcommand{\rmdefault}{phv}
\renewcommand{\ttdefault}{pcr}
\RequirePackage{graphicx}
\graphicspath{{img/}}
\RequirePackage{verbatim}
\RequirePackage{tabularx}
\RequirePackage{url}
\RequirePackage{color}
\RequirePackage{amssymb}
\RequirePackage{setspace}
\RequirePackage{listings}
\RequirePackage{amsmath}					%js
\RequirePackage{booktabs}					%js
\RequirePackage{multirow}					%js
\RequirePackage[left]{eurosym}				%js
\RequirePackage{amsthm}						%js
\RequirePackage{ragged2e}					%js

\RequirePackage{float}						%js
\RequirePackage[section]{placeins}			%js
\RequirePackage{epigraph}					%js
\setlength{\epigraphwidth}{0.4\textwidth}

\RequirePackage{longtable}					%js
\RequirePackage[grey,helvetica]{quotchap}	%js
\RequirePackage[printonlyused]{acronym}		%js

\lstset{language=Java,
		  showstringspaces=false,
		  frame=single,
		  numbers=left,
		  basicstyle=\ttfamily,
		  numberstyle=\tiny,
		captionpos=b,
  		}

%js definition-umgebung setzen!
\newtheorem{definition}{Definition}
% js end definition

% put name etc. here
\newcommand{\@fullname}{\null}
\newcommand{\@email}{\null}
\newcommand{\@headline}{\null}
\newcommand{\@titel}{\null}
\newcommand{\@thesisyear}{\null}
\newcommand{\@matnr}{\null}
\newcommand{\@reviewerA}{\null}
\newif\if@reviewerBSet
\@reviewerBSetfalse
\newcommand{\@reviewerB}{\null}
\newif\if@tutorSet
\@tutorSetfalse
\newcommand{\@tutor}{\null}
\newcommand{\@typ}{\null}
\newcommand{\@faculty}{\null}
\newcommand{\@department}{\null}
\newif\if@licenseSet
\@licenseSetfalse
\newcommand{\@license}{\null}

\newcommand{\fullname}[1]{\renewcommand{\@fullname}{#1}}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\headline}[1]{\renewcommand{\@headline}{#1}}
\newcommand{\titel}[1]{\renewcommand{\@titel}{#1}}
\newcommand{\thesisyear}[1]{\renewcommand{\@thesisyear}{#1}}
\newcommand{\matnr}[1]{\renewcommand{\@matnr}{#1}}
\newcommand{\reviewerA}[1]{\renewcommand{\@reviewerA}{#1}}
\newcommand{\reviewerB}[1]{\renewcommand{\@reviewerB}{#1}\@reviewerBSettrue}
\newcommand{\tutor}[1]{\renewcommand{\@tutor}{#1}\@tutorSettrue}
\newcommand{\typ}[1]{\renewcommand{\@typ}{#1}}
\newcommand{\faculty}[1]{\renewcommand{\@faculty}{#1}}
\newcommand{\department}[1]{\renewcommand{\@department}{#1}}
\newcommand{\license}[1]{\renewcommand{\@license}{#1}\@licenseSettrue}

\newcommand{\thefullname}[0]{\@fullname}
\newcommand{\theemail}{\@email}
\newcommand{\theheadline}{\@headline}
\newcommand{\thetitel}{\@titel}
\newcommand{\thejahr}{\@thesisyear}
\newcommand{\thematnr}{\@matnr}
\newcommand{\thereviewerA}{\@reviewerA}
\newcommand{\thereviewerB}{\@reviewerB}
\newcommand{\thebetreuer}{\@tutor}
\newcommand{\thetyp}{\@typ}
\newcommand{\thefaculty}{\@faculty}
\newcommand{\thedepartment}{\@department}
\newcommand{\thelicense}{\@license}



% Colors in tables
\RequirePackage{colortbl}
\definecolor{Gray}{rgb}{0.80784, 0.86667, 0.90196} %darkblue
\definecolor{Lightgray}{rgb}{0.9176, 0.95, 0.95686} %lightblue
\definecolor{Accent}{rgb}{0.6627, 0.63529, 0.55294} %accentcolor
\setlength{\arrayrulewidth}{0.1pt}

\clubpenalty = 10000
\widowpenalty = 10000

\setlength{\parindent}{0pt}
\setlength{\parskip}{1.4ex plus 0.35ex minus 0.3ex}

\setcounter{tocdepth}{2}	% table of contents depth
\setcounter{secnumdepth}{2} % Define enumeration of the headline depth

% \pdfinfo{
%   /Author	(\@fullname)
%   /Title 	(\pdfescapestring{\@titel})
%   /Producer (pdfeTex 3.14159-1.30.6-2.2)
%   /Keywords (TAGS DEFINIEREN)
%   }

\RequirePackage{hyperref}
\hypersetup{%
% 	pdftitle=\pdfescapestring{\@titel},
% 	pdfauthor={\@fullname},
% 	pdfsubject={\@typ},
% 	pdfproducer={pdfeTex 3.14159-1.30.6-2.2},
	colorlinks=false,
	pdfborder=0 0 0	% no box surrounding links!
}

\renewcommand{\maketitle}[0]
{
% titelepage
\thispagestyle{empty}
\begin{addmargin*}[4mm]{-32mm}

\includegraphics[height=1.8cm]{img/general/unilogo_bild}
\hfill
\includegraphics[height=1.8cm]{img/general/unilogo_wort}\\[1em]

{\footnotesize
{\bfseries Ulm University} \textbar ~89069 Ulm \textbar ~Germany
\hspace*{70.5mm}\parbox[t]{50mm}{\bfseries Faculty of\\
\@faculty\\
\mdseries \@department}\\[2cm]

\parbox{140mm}{\bfseries \huge \@headline}\\[0.5em]
{\footnotesize \@typ  at Ulm University}\\[3em]

{\footnotesize \bfseries Submitted by:}\\
{\footnotesize \@fullname\\\@email}\\[2em]
{\footnotesize \bfseries Reviewer:}\\                     
{\footnotesize\@reviewerA 
\if@reviewerBSet\\%
\@reviewerB\fi%
}\\[2em]
\if@tutorSet%
{\footnotesize \bfseries Supervisor:}\\ 
{\footnotesize\@tutor}\\\fi%
\\
{\footnotesize\@thesisyear}
}
\end{addmargin*}
}

\newcommand{\imprint}[0]
{
\thispagestyle{empty}
{ \small
  \flushleft
  Version from \today \\\vfill
  \copyright~\@thesisyear~\@fullname\\[0.5em]

\if@licenseSet
\@license
\fi
}
}

\def\dotfill#1{\cleaders\hbox to #1{.}\hfill}
\newcommand\dotline[2][.5em]{\leavevmode\hbox to #2{\dotfill{#1}\hfil}}

\newcommand{\honestydisclaimer}[0]
{
\thispagestyle{empty}

Name: \thefullname \hfill Matriculation number: \thematnr \vspace{2cm}

\minisec{Honesty disclaimer}

I hereby affirm that I wrote this thesis independently and that I did not use any other 
sources or tools than the ones specified. \vspace{2cm}

Ulm, \dotline{0.27\textwidth} \hspace{0.07\textwidth} \dotline{0.6\textwidth}

\hspace{10cm} {\footnotesize \thefullname}
}
