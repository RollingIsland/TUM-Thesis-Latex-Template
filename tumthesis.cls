% File:      tumthesis.cls
% Author:    Zhiying WANG
% Email:     zhiying.wang@tum.de
% Institute: Professur für Satellitengeodäsie
%            Technische Universität München
% Created:   2025-07-24
%
% Description:
%   Class file for thesis of Professur für Satellitengeodäsie
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tumthesis}
\LoadClass[11pt,a4paper,twoside]{report}

% packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{dblfloatfix}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{parskip}
\RequirePackage{glossaries}
\RequirePackage{bm}
\RequirePackage{amsmath}
\RequirePackage{empheq}
\RequirePackage{mathtools}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{makecell}
\RequirePackage{multirow}
\RequirePackage[inkscapearea=page]{svg}
\RequirePackage{datetime}
\RequirePackage[export]{adjustbox}
\RequirePackage{setspace}
\RequirePackage[scaled]{helvet}
\RequirePackage{xcolor}
\RequirePackage{makecell}
\RequirePackage{emptypage}
% \setsvg{inkscape={"D:/Inkscape/bin/inkscape.exe"}} % Path for Inkscape, if its path is not included in the enviroment variables
\RequirePackage[%  
    colorlinks=true,
    pdfborder={0 0 0},
    linkcolor=blue,
    citecolor=blue,
]{hyperref}
\RequirePackage[a4paper,
    head=25.8mm,
    top=25.8mm,
    bottom=24.8mm,
    inner=40mm,
    outer=21mm
]{geometry}

% commands
\newcommand{\helvet}{\fontfamily{phv}\selectfont}
\newdateformat{monthyeardate}{\monthname[\THEMONTH] \THEYEAR}
\newdateformat{noweekday}{\ordinaldate{\THEDAY}~\monthname[\THEMONTH] \THEYEAR}
\definecolor{tumblue}{RGB}{0,101,189}

\makeatletter

\title{}
\author{}
\newcommand{\@subtitle}{}  
\newcommand{\@program}{}  
\newcommand{\@chair}{}  
\newcommand{\@type}{}  

% supervisor list, you can de-comment the "supervisorC" or even add more if you want
\newcommand{\@supervisorA}{}  
\newcommand{\@supervisorB}{}  
% \newcommand{\@supervisorC}{}  

\newcommand{\@submissiondate}{} 

\newcommand{\subtitle}[1]{\def\@subtitle{#1}}
\newcommand{\program}[1]{\def\@program{#1}}
\newcommand{\chair}[1]{\def\@chair{#1}}
\newcommand{\type}[1]{\def\@type{#1}}

% assignment function of the supervisor list, must match with the supervisor list
\newcommand{\supervisorA}[1]{\def\@supervisorA{#1}}
\newcommand{\supervisorB}[1]{\def\@supervisorB{#1}}
% \newcommand{\supervisorC}[1]{\def\@supervisorC{#1}}

\newcommand{\submissiondate}[3]{%
  \newdate{sdate}{#1}{#2}{#3}%
  \noweekday
  \def\@submissiondate{\displaydate{sdate}}%
}

\newcommand{\makecover}{
    \begin{titlepage}
        \begin{spacing}{1.0}
        \small\helvet\textcolor{tumblue}{
        \begin{tabular*}{\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
            \@chair & \multirow{3}{*}{\includegraphics[height=3.5em]{Universitaet_Logo_RGB.pdf}} \\ 
            TUM School of Engineering and Design \\
            Technische Universität München \\
        \end{tabular*}}
        \end{spacing}
        \bigskip\vspace{6em}
        \begin{center}
            \noindent\rule{\textwidth}{1pt}
		        \Huge\textbf{\@title}\\
            {\LARGE \textbf{\@subtitle}} \\
            \vspace{-0.5em}
		    \noindent\rule{\textwidth}{1pt}\\
            \bigskip\bigskip
            {\huge \textbf{\@author}}\\
		        \bigskip\bigskip
		        \Large{Thesis submitted to the program \\ \@program}\par
                \bigskip\bigskip
		        {\Large
            \begin{tabular}{p{4.5em}l} 
              Supervisors: & \@supervisorA \\
                           & \@supervisorB \\
                           % & \@supervisorC \\
            \end{tabular}}
            \vfill{\Large München, \monthyeardate\today}
        \end{center}
    \end{titlepage}

    % document properties / or copyright page
    \newpage
    \thispagestyle{empty}
    \section*{\LARGE Document Properties}
    \begin{tabular}{p{10em} l}
        \textbf{Title} & \@title : \@subtitle \\
        \textbf{Document Type} & \@type \\
        \textbf{Author} & \@author \\
        \textbf{Chair} & \@chair \\
                       & der TUM School of Engineering and Design \\
        \textbf{Supervisors} & \@supervisorA \\
                             & \@supervisorB \\
                             % & \@supervisorC \\
        \textbf{Submission Date} & \@submissiondate \\
    \end{tabular}

    \newpage
    \thispagestyle{empty}
    \cleardoublepage
    \thispagestyle{empty}
}

\makeatother

\renewcommand{\baselinestretch}{1.5} 
\raggedbottom

\setcounter{secnumdepth}{3}

% head and foot
\fancypagestyle{onlypagenum}
{
  \fancyhead{}
  \fancyfoot{}
  \renewcommand\headrulewidth{0pt}
  \renewcommand\footrulewidth{0pt}
  \fancyfoot[C]{\thepage}
}

\pagestyle{fancy}
\fancyhead{}
\fancyhead[RO]{\large \textsl{\rightmark}}
\fancyhead[LE]{\large \textsl{\thechapter \space \leftmark}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}

% captions
\captionsetup[figure]{name={Figure},labelsep=period,font=small}%,belowskip=0em,aboveskip=0em}
\captionsetup[table]{name={Table},labelsep=period,font=small}%,belowskip=0.5em,aboveskip=0em}

\titleformat{\paragraph}[hang]{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}

% abbreviations
\renewcommand{\glsnamefont}[1]{\textbf{#1}}
