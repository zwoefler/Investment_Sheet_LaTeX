\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{company_analysis}[2021/01/25 Company Analysis class]

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass{scrartcl}

\RequirePackage{selinput}
\RequirePackage{layouts}
\RequirePackage{printlen}
\RequirePackage{calculator}
\RequirePackage[a4paper, left=10mm, top=5mm, right=5mm, bottom=5mm]{geometry}
\RequirePackage{enumitem,varwidth}
\RequirePackage[svgnames]{xcolor}
\RequirePackage{tikz}
\RequirePackage{pgf-pie}
\RequirePackage{lmodern}
\RequirePackage{environ}
\RequirePackage{wrapfig}
\RequirePackage{fdsymbol}
\RequirePackage{fontawesome}
\RequirePackage{graphicx}
\RequirePackage{siunitx}
\RequirePackage{csquotes}
\RequirePackage[gen]{eurosym}
\RequirePackage{caption}
\RequirePackage{xparse}
\RequirePackage{fancypar}


\usetikzlibrary{shadows}
\usetikzlibrary{shapes.geometric}

% Standard Figure caption is empty
\captionsetup[figure]{name={}}

\usepackage{mathtools}
\SetLabelAlign{center}{\clap{#1}}


\pagestyle{headings}
\setlist{itemsep=-0.2em}

% Standard image path
\graphicspath{ {./img/} }


\newcommand{\swotWidth}{18}
\newcommand{\swotHeight}{8}
\DIVIDE{\swotWidth}{2}{\tileWidth}
\DIVIDE{\swotHeight}{2}{\tileHeight}
\DIVIDE{\tileWidth}{2}{\xTile}
\DIVIDE{\tileHeight}{2}{\yTile}

\sisetup{
    group-separator = {,},
    group-minimum-digits = 4
}


% +++ Company Title +++ %
\newcommand{\companyname}[2]{
    \begin{minipage}{\textwidth}
        \center\includegraphics[width=2em]{#1}
        {\textbf{#2}}
    \end{minipage}\\
}


% +++ Company Story Section +++ %
\newcommand{\story}[1]{
    \begin{minipage}[t]{0,72\linewidth}
        #1
    \end{minipage}\hfill
}


% +++ Company Info Section +++ %
\newcommand{\infosection}[9]{
    \begin{minipage}[t]{0,25\linewidth}
        \begin{itemize}[align=center, labelsep=0em]\scriptsize
            \item [\faAsterisk] #1
            \item [\faMale] #2
            \item [\faEuro] \faEuro \num{#3} m
            \item [\faUsers] \num{#4}
            \item [\faIndustry] #5
            \item [\faBook] \faEuro \num{#6} m
            \item [\reflectbox{\rotatebox[origin=c]{270}{\faLevelDown}}] \faEuro #7
            \item [\faFolderOpen] #8
            \item [\faQuestion] #9
        \end{itemize}
    \end{minipage}\\\\
}


% +++ Reasons enumerate for company Info section +++ %



% +++ SWOT Analysis +++ %
\newcommand{\swot}[4]{
    \begin{tikzpicture}[
        square/.style={%
            shape=rectangle, minimum width=\tileWidth cm, minimum height=\tileHeight cm,
            inner sep=-1mm, draw
        }, font=\scriptsize\sffamily, thick
    ]
    \draw[black, fill=gray] (-\tileWidth,-\tileHeight) rectangle (\tileWidth,\tileHeight);

    \node [square, fill=DarkSeaGreen!75!yellow, text width=\tileWidth cm] at (-\xTile,\yTile) {
        \begin{varwidth}{\linewidth}
            #1
        \end{varwidth}
    };

    \node [square, fill=red!25, text width=\tileWidth cm] at (\xTile, \yTile) {
        \begin{varwidth}{\linewidth}
            #2
        \end{varwidth}
    };

    \node [square, fill=DarkSeaGreen!75, text width=\tileWidth cm] at (-\xTile,-\yTile) {
        \begin{varwidth}{\linewidth}
            #3
        \end{varwidth}
    };

    \node [square, fill=Salmon!75, text width=\tileWidth cm] at (\xTile,-\yTile) {
        \begin{varwidth}{\linewidth}
            #4
        \end{varwidth}
    };


    \draw(-0.3,0.3) node {\large\textbf{S}};
    \draw(0.3,0.3) node {\large\textbf{W}};
    \draw(-0.3,-0.3) node {\large\textbf{O}};
    \draw(0.3,-0.3) node {\large\textbf{T}};

    \end{tikzpicture}
}


\definecolor{myyellow}{RGB}{253,242,28}
\definecolor{myred}{RGB}{220,70,70}
\definecolor{myorange}{RGB}{244, 180, 22}

\makeatletter
\pgfdeclareshape{document}{
\inheritsavedanchors[from=rectangle] % this is nearly a rectangle
\inheritanchorborder[from=rectangle]
\inheritanchor[from=rectangle]{center}
\inheritanchor[from=rectangle]{north}
\inheritanchor[from=rectangle]{south}
\inheritanchor[from=rectangle]{west}
\inheritanchor[from=rectangle]{east}
% ... and possibly more
\backgroundpath{% this is new
% store lower right in xa/ya and upper right in xb/yb
\southwest \pgf@xa=\pgf@x \pgf@ya=\pgf@y
\northeast \pgf@xb=\pgf@x \pgf@yb=\pgf@y
% compute corner of ‘‘flipped page’’
\pgf@xc=\pgf@xb \advance\pgf@xc by-27pt % this should be a parameter
\pgf@yc=\pgf@yb \advance\pgf@yc by-17pt
% construct main path
\pgfpathmoveto{\pgfpoint{\pgf@xa}{\pgf@ya}}
\pgfpathlineto{\pgfpoint{\pgf@xa}{\pgf@yb}}
\pgfpathlineto{\pgfpoint{\pgf@xc}{\pgf@yb}}
\pgfpathlineto{\pgfpoint{\pgf@xb}{\pgf@yc}}
\pgfpathlineto{\pgfpoint{\pgf@xb}{\pgf@ya}}
\pgfpathclose
% add little corner
\pgfpathmoveto{\pgfpoint{\pgf@xc}{\pgf@yb}}
\pgfpathlineto{\pgfpoint{\pgf@xc}{\pgf@yc}}
\pgfpathlineto{\pgfpoint{\pgf@xb}{\pgf@yc}}
\pgfpathlineto{\pgfpoint{\pgf@xc}{\pgf@yc}}
}
}
\makeatother

\NewDocumentCommand\StickyNote{O{6cm}mO{6cm}O{myyellow}}{%
\begin{tikzpicture}
\node[
document,
draw,
drop shadow={
  shadow xshift=2pt,
  shadow yshift=-3pt
},
inner xsep=7pt,
fill=#4,
xslant=-0.1,
yslant=0.1,
inner ysep=10pt
] {\parbox[t][#1][c]{#3}{#2}};
\end{tikzpicture}%
}






\newcommand{\piechart}[2][]
{
    \begin{minipage}{.35\linewidth}
        \centering
        \begin{tikzpicture}[scale=0.75, every node/.style={scale=0.75}]
            \pie[sum=auto, rotate=90, radius=2]
                {
                    #2
                }
        \end{tikzpicture}
        \captionof*{figure}{#1}
    \end{minipage}
}

\newcommand{\smallpiechart}[2][]
{
    \begin{minipage}{.25\linewidth}
        \centering
        \begin{tikzpicture}[scale=0.3, every node/.style={scale=0.75}]
            \pie[sum=auto, rotate=90, radius=2]
                {
                    #2
                }
        \end{tikzpicture}
        \captionof*{figure}{#1}
    \end{minipage}
}