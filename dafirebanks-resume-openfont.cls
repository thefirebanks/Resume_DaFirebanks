
% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% %%%%%%%%%%%%%%%%


% \RequirePackage{xcolor}
% \definecolor{darkgray}{HTML}{333333}
% \definecolor{gray}{HTML}{4D4D4D}
% \definecolor{lightgray}{HTML}{999999}

% \ifdefined\@cv@print
%   \colorlet{blue}{gray}
%   \colorlet{red}{gray}
%   \colorlet{orange}{gray}
%   \colorlet{green}{gray}
%   \colorlet{purple}{gray}
%   \colorlet{aquamarine}{gray}
%   \colorlet{fillheader}{white}
%   \colorlet{header}{gray}
% \else
%   \colorlet{fillheader}{gray}
%   \colorlet{header}{white}
% \fi
% \colorlet{textcolor}{gray}
% \colorlet{headercolor}{gray}


% \RequirePackage{tikz}

% \newcommand{\headerbro}[2]{%
%   \begin{tikzpicture}[remember picture,overlay]
%     \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=2cm] (box) at (current page.north){};
%     \node [anchor=center] (name) at (box) {%
%       \fontsize{40pt}{65pt}\color{header}%
%       {\thinfont #1}{\bodyfont  #2}
%     };
%   \end{tikzpicture}
%   \vspace{1cm}
%   \vspace{-2\parskip}
% }

% %%%%%%%%%%%%%%%


% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{1a1a1a} 
\definecolor{headings}{HTML}{000080}
\definecolor{subheadings}{HTML}{333333}
\definecolor{name}{HTML}{000000}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newfontfamily\FA[Path=.,Extension=.otf]{FontAwesome}
\usepackage{fontawesome}

% Set spacing depending on the amount of text
\linespread{1.05}

% Date command
% \usepackage[absolute]{textpos}
% \usepackage[UKenglish]{isodate}
% \setlength{\TPHorizModule}{1mm}
% \setlength{\TPVertModule}{1mm}
% \newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
% \color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
% Last Updated on \today
% \end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\color{name}
\fontsize{40pt}{50pt}
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
} \\[5pt]
\centering{
\color{subheadings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Information commands (github, email, phone, linkedin, address)
\newcommand{\email}[2]{\faEnvelope ~ \href{mailto:#1}{#2}}
\newcommand{\git}[2]{\faGithub ~ \href{#1}{#2}}
\newcommand{\linkedin}[2]{\faLinkedinSquare ~ \href{#1}{#2}}
\newcommand{\phone}[1]{\faMobile ~ #1}
\newcommand{\address}[1]{\faHome ~ #1}


% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{5pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{15pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{11pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{11pt}\selectfont\bfseries\uppercase{#1}\normalfont}

% \newcommand{\ressubsection}[1]{
% \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{11pt}\selectfont\bfseries\underline{#1}\normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{headings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{13pt}\selectfont {#1 } \normalfont}

\newcommand{\resdescript}[1]{
\color{headings}\raggedright\itshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{13pt}\selectfont {#1 }\normalfont}

% Location command
\newcommand{\location}[1]{
\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
