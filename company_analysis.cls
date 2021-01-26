\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{company_analysis}[2021/01/25 Company Analysis class]


\newcommand{\headlinecolor}{\normalcolor}
\LoadClass{scrartcl}

\RequirePackage{selinput}
\RequirePackage{layouts}
\RequirePackage{printlen}
\RequirePackage{calculator}
\RequirePackage{geometry}
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

\geometry{
 a4paper,
 left=10mm,
 top=5mm,
 right=5mm,
 bottom=5mm
}
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