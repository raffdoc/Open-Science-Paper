%%------------------------------------------------------------------------------------%%
%%------------------------------------------------------------------------------------%%
%% Content : Open-Science-Paper LateX-Class 
%% Use : Open-Sciene-Paper formatting 
%% Author : Claas-Thido Pfaff
%%------------------------------------------------------------------------------------%%
%%------------------------------------------------------------------------------------%%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{open-science-paper}[2012/09/10 version 0.1 LaTeX class Open-Science-Paper]

\LoadClassWithOptions{scrreprt}

%% Font and input encodings %%
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

%% Font %%
\RequirePackage{lmodern}

%% patch old LaTeX problems %%
\RequirePackage{fixltx2e}
\RequirePackage{scrhack}
\RequirePackage{etex}
\reserveinserts{30}

%% Language options %%
\RequirePackage[ngerman,english]{babel} 
\RequirePackage[autostyle]{csquotes}

% correction of white spaces 
\RequirePackage{ellipsis}
\RequirePackage{xspace}

%% Lorem ipsum dolor sit amet ... %%
\RequirePackage{lipsum}

%% Paper abstract %%
\RequirePackage{abstract}

%% Calculate with latex sizes %%
\RequirePackage{calc}

%% Upper and lower case text %% 
\RequirePackage{textcase}

%% use color %%
\RequirePackage{xcolor} 
% Standards
% green, blue, cyan, magenta, red, yellow, black, white, darkgray, gray, lightgray

%% Color definitions %%
\xdefinecolor{ListingBackgroundColor}{gray}{.95}
\xdefinecolor{ListingCommentstyleColor}{gray}{.60}
\xdefinecolor{LinkColor}{rgb}{0,0,0.4}

\colorlet{ListingStringstyleColor}{green!25} 
\colorlet{ListingEmphstyleColor}{blue}
\colorlet{ListingKeywordstyleColor}{orange!70}

\xdefinecolor{ListingBackgroundColor}{gray}{.95}
\xdefinecolor{ListingCommentstyleColor}{gray}{.60}

\xdefinecolor{gray}{rgb}{0.4,0.4,0.4}
\xdefinecolor{darkblue}{rgb}{0.0,0.0,0.6}
\xdefinecolor{cyan}{rgb}{0.0,0.6,0.6}

%% Use and create graphics %%
\RequirePackage{graphicx}
\RequirePackage{overpic}
\RequirePackage{tikz}
% Some tikz-library's, extend tikz functionality
\usetikzlibrary{spy,external,automata,patterns,shadows,trees,mindmap,arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri}
\pgfdeclarelayer{background}
\pgfdeclarelayer{foreground}
\pgfsetlayers{background,main,foreground}
% Define block styles
\tikzstyle{pictureframe} = [rectangle, rounded corners, draw]
\tikzstyle{signbackground}=[rectangle, fill=gray!3, rounded corners, draw=gray, very thin]

%% Control floating placement %%
\RequirePackage{float} 
% Note:
% The parameter "H" must be used in "multicol" environments because they
% do not allow floating	

%% Control caption layout %%
\RequirePackage[margin=10pt, font={small,it}, format=hang, labelformat=default, labelsep=endash, justification=centering, singlelinecheck=false]{caption}

%% Create subfigures (check if already obsolete!) %%
\RequirePackage{subfig}

%%% Symbols %%%
\RequirePackage{textcomp}

%% Professional tables
\RequirePackage{booktabs}
% useage:
%	\toprule
%	\midrule
%	\bottomrule
% 	\cmidrule{from column #. - to column #}

%% Extended table functions
\RequirePackage{tabularx}
%implementiert:
%	Spaltentyp (X)
%	etc...

%% Aggregate column cells %%
\RequirePackage{multirow}
% usage:
%  Horizontal aggregation of table cells
%	 \multicolumn{columns}{alignment}{text}
%  Vertical aggregation of table cells  
%	 \multirow{rows}{width}{text}

% Use color in tables 
%\RequirePackage{array}          
%\RequirePackage{colortbl}       

%% Multi column documents %%
\RequirePackage{multicol}

%%%-------------------------------------------------%%%
%%% Bibliography Options %%%
%%%-------------------------------------------------%%%

% citation management
\RequirePackage[backend=biber, natbib=true,style=authoryear,bibstyle=authoryear,hyperref=true]{biblatex}

% additional options
\ExecuteBibliographyOptions{
url=false,
isbn=false,
doi=false,
firstinits=false,
bibencoding=utf8
}

% add a BibTeX file 
\addbibresource{subdocuments/paper.bib}

% citate:
%  \citet{jon90} ⇒ Jones et al. (1990)
%  \citet[chap.~2]{jon90} ⇒ Jones et al. (1990, chap. 2)
%  \citep{jon90} ⇒ (Jones et al., 1990)
%  \citep[chap.~2]{jon90} ⇒ (Jones et al., 1990, chap. 2)
%  \citep[see][]{jon90} ⇒ (see Jones et al., 1990)
%  \citep[see][chap.~2]{jon90} ⇒ (see Jones et al., 1990, chap. 2)
%  \citet*{jon90} ⇒ Jones, Baker, and Williams (1990)
%  \citep*{jon90} ⇒ (Jones, Baker, and Williams, 1990)


%%%-------------------------------------------------%%%
%%% Math Options %%%
%%%-------------------------------------------------%%%

%Für alle Mathematischen Symbole und Fonts
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}

%Nice typesetting of SI units
\RequirePackage{siunitx}
%examples
%\si{kg.m/s^2}
%\num{12345}
%\num{0,1234}
%\num{.12345}
%\ang{12.3}
%\ang{1;2;3}
%\ang{;;-1}
%\SI{-29}{\degreeCelsius}   
%\SI{30000}{\kilogram}

%%%-------------------------------------------------%%%
%%% PDF Options %%%
%%%-------------------------------------------------%%%

% Define colors hyperref 
\xdefinecolor{LinkColor}{rgb}{0,0,0.4}

\RequirePackage[%
  %plainpages=false,%
  bookmarks=true,%
  bookmarksopen=true,%
  pdfborder={0 0 0},%
  %pdfpagemode=UseNone,%
  colorlinks=false,%
  linkcolor=LinkColor,
  citecolor=LinkColor,%
  filecolor=LinkColor,%
  menucolor=LinkColor,%	
  urlcolor=LinkColor,%
  breaklinks=true,%
  raiselinks=true,%
  pdfauthor={Your name here},
  pdfcreator={Your name here},
  pdfsubject={Your subject here},
  pdfkeywords={LaTeX, Tikz, Knitr, Scientific paper, Open science}
  ]{hyperref}

%% Examples:
% \href{URL}{text} 
% \url{URL}
% \nolinkurl{URL}

%%%-------------------------------------------------%%%
%%% References with prettyref %%%
%%%-------------------------------------------------%%%

\RequirePackage{prettyref}

\newrefformat{fig}{figure~\ref{#1}}
\newrefformat{Fig}{Figure~\lowercase{\ref{#1}}}
\newrefformat{cha}{chapter~\ref{#1}}
\newrefformat{Cha}{Chapter~\lowercase{\ref{#1}}}
\newrefformat{sec}{chapter~\ref{#1}}
\newrefformat{Sec}{Chapter~\lowercase{\ref{#1}}}
\newrefformat{sub}{chapter~\ref{#1}}
\newrefformat{Sub}{Chapter~\lowercase{\ref{#1}}}
\newrefformat{subs}{chapter~\ref{#1}}
\newrefformat{Subs}{Chapter~\lowercase{\ref{#1}}}
\newrefformat{tab}{table~\ref{#1}}
\newrefformat{Tab}{Table~\lowercase{\ref{#1}}}
\newrefformat{lst}{listing~\ref{#1}}
\newrefformat{Lst}{Listing~\lowercase{\ref{#1}}}
\newrefformat{equ}{equation~\ref{#1}}
\newrefformat{Equ}{Equation~\lowercase{\ref{#1}}}


%%%-------------------------------------------------%%%
%%% References with prettyref %%%
%%%-------------------------------------------------%%%

%Source code and compiled LaTeX next to each other
\RequirePackage{showexpl}

\RequirePackage{listings}


\lstset{
   backgroundcolor=\color{ListingBackgroundColor},
   language=[LaTeX]TeX,
   basicstyle=\scriptsize\ttfamily,
   keywordstyle=\bfseries\ttfamily\color{ListingKeywordstyleColor},
   stringstyle=\color{ListingStringstyleColor}\ttfamily,
   commentstyle=\color{ListingCommentstyleColor}\ttfamily,
   emph={word1}, 
   emphstyle=\color{ListingEmphstyleColor}\texttt, %for word 1
   emph={[2]word2,word3},
   emphstyle={[2]\color{ListingEmphstyleColor}\texttt}, %for word 2
   showstringspaces=false,
   flexiblecolumns=false,
   tabsize=3,
   numbers=left,
   breaklines=true,
   numberstyle=\tiny,
   numberblanklines=true,
   stepnumber=1,
   numbersep=10pt,
   xleftmargin=15pt
 }

%highlight definition for XML in listings 
\lstdefinelanguage{XML}
{
  morestring=[b]",
  morestring=[s]{>}{<},
  morecomment=[s]{<?}{?>},
  stringstyle=\color{black},
  identifierstyle=\color{darkblue},
  keywordstyle=\color{cyan},
  morekeywords={xmlns,version,type}% list your attributes here
}

\lstset{literate=%
{Ö}{{\"O}}1
{Ä}{{\"A}}1
{Ü}{{\"U}}1
{ß}{{\ss}}2 
{ü}{{\"u}}1
{ä}{{\"a}}1
{ö}{{\"o}}1
{~}{{\textasciitilde}}1
}

%%%-------------------------------------------------%%%

\setlength{\parskip}{0.5ex plus0.0ex minus0ex} % Absatzabstand etwas groesser
\setlength{\itemsep}{0ex minus0.2ex} % Abstand zweier Listenelemente kleiner
\setlength{\parindent}{0em} % Kein Absatzeinzug kann eingestellt werden nach Bedarf

\RequirePackage[noindentafter,calcwidth]{titlesec}  

%%%-------------------------------------------------%%%
%%% Suppress errors and typographical finetuning %%%
%%%-------------------------------------------------%%%

\clubpenalty = 9999	           % No "Schusterjungen"
\widowpenalty = 9999         % No "Hurenkinder"
\displaywidowpenalty = 9999
\tolerance = 200
\hbadness = 1414
\emergencystretch = 1.5em
\hfuzz = 0.3pt

% Typographic finetuning
\RequirePackage[protrusion=true,%
expansion=true,%
babel=true,%
tracking=true,% 
spacing=false]{microtype}     

\DeclareMicrotypeSet*[tracking]{my}% 
       { font = */*/*/sc/* }% 
\SetTracking{ encoding = *, shape = sc }{40}


%%%-------------------------------------------------%%%
%%% Refine environments %%%
%%%-------------------------------------------------%%%

%Umdefinition der Literatur Umgebung
\makeatletter
\renewenvironment{thebibliography}[1]
{\subsection*{\refname}%
\@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
\list{\@biblabel{\@arabic\c@enumiv}}%
{\settowidth\labelwidth{\@biblabel{#1}}%
\leftmargin\labelwidth
\setlength{\bibhang}{2em}
\setlength{\bibindent}{3em}
%\advance\leftmargin\labelsep
\@openbib@code
\usecounter{enumiv}%
\let\p@enumiv\@empty
\renewcommand\theenumiv{\@arabic\c@enumiv}}%
\clubpenalty4000
\@clubpenalty \clubpenalty
\widowpenalty4000%
\sfcode`\.\@m}
{\def\@noitemerr
{\@latex@warning{Empty `thebibliography' environment}}%
\endlist}
\makeatother

\makeatletter
\renewcommand*\bib@heading{%
  \subsection{\refname}%
}
\makeatother
