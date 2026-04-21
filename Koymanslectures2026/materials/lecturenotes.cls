\NeedsTeXFormat{LaTeX2e}
% \ProvidesClass{lecturenotes}[A class for taking lecture notes.]
\LoadClass[]{amsart}
\RequirePackage[table]{xcolor}
\RequirePackage{array}
\RequirePackage{fancyhdr}
\RequirePackage[pdfencoding=auto,hidelinks,backref]{hyperref}
% \usepackage{geometry}
% \geometry{
%     a4paper,
%     total={170mm,257mm},
%     left=20mm,
%     top=20mm,
% }



%Data handling
\newcommand{\@lecturer}{}
\newcommand{\lecturer}[1]{\renewcommand{\@lecturer}{#1}}
\newcommand{\@notetaker}{}
\newcommand{\notetaker}[1]{\renewcommand{\@notetaker}{#1}}
\newcommand{\@coursename}{}
\newcommand{\coursename}[1]{\renewcommand{\@coursename}{#1}}
\newcommand{\@location}{}
\newcommand{\location}[1]{\renewcommand{\@location}{#1}}


%Disclaimer
\newcommand{\@disclaimer}{These notes were taken live during lectures.  In particular, any mistakes are the fault of the transcriber and not of the lecturer.}
\newcommand{\disclaimer}[1]{\renewcommand{\@disclaimer}{#1}}


%Set up counters for lecture numbering
\newcounter{countlecture}
\setcounter{countlecture}{1}
\newcommand{\lecture}[2]{\vspace{5pt}\begin{center}{\Large\sc{Lecture \arabic{countlecture}\ifthenelse{\equal{#1}{}}{}{ (#1)}\ifthenelse{\equal{#2}{}}{}{: #2}}}\end{center}\stepcounter{countlecture}}

%Data use for headers and title
\author{Course: \@lecturer\\Notes: \@notetaker}
\title{\MakeUppercase{\@coursename}}
\pagestyle{fancy}
\setlength{\headheight}{10pt}
\fancyhf{}        
\renewcommand{\headrulewidth}{0pt}
\fancyhead[CE]{\footnotesize\MakeUppercase{\@lecturer}}
\fancyhead[LE,RO]{\footnotesize\sc\thepage}
\fancyhead[CO]{\footnotesize\MakeUppercase{\@coursename}}


\let\oldmaketitle\maketitle
\renewcommand{\maketitle}{
    \ifthenelse{\equal{\@disclaimer}{}}{}{\renewcommand{\abstractname}{Disclaimer}\begin{abstract}\@disclaimer\end{abstract}}
    \oldmaketitle
}
%PDF SETUP
\hypersetup{
    pdftitle={\@coursename},
    pdfauthor={\@notetaker}
}