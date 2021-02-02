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



\usetikzlibrary{shapes.geometric}

\captionsetup[figure]{name={}}

\usepackage{mathtools}
\SetLabelAlign{center}{\clap{#1}}


\pagestyle{headings}
\setlist{itemsep=-0.2em} % or \setlist{noitemsep} to leave space around whole list
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
        \begin{itemize}[align=center]\scriptsize
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



% +++ SWOT Analysis +++ %
\newcommand{\swot}[4]{
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
}

\newenvironment{piechart}[1]
{
    \begin{tikzpicture}[scale=.75, every node/.style={scale=.75}]
        \pie[sum=auto, rotate=90, radius=2]
        {
            #1
        }

}
{
    \end{tikzpicture}
}



