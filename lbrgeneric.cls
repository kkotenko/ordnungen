\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lbrgeneric}[2020/04/16 Generic RPG Librarium document]


%%%
% Derive from class: Memoir
% http://texdoc.net/texmf-dist/doc/latex/memoir/memman.pdf
\DeclareOption{rgb}{\PassOptionsToPackage{rgb}{lbrcolor}}
\DeclareOption{cmyk}{\PassOptionsToPackage{rgb}{lbrcolor}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
% Default 
\PassOptionsToClass{}{memoir}
\LoadClass{memoir}
%
%%%


%%%
% Memoir Class Page formatting
%
% Change line witdh to new font
\setlxvchars \setxlvchars
% 5mm binding tollerance
%\setbinding{5mm}
\settypeblocksize{600pt}{1.2\lxvchars}{*}
\setlrmargins{*}{*}{1}
\setulmargins{4cm}{*}{*}
\setheadfoot{2\onelineskip}{2\onelineskip}
\setmarginnotes{17pt}{3.5cm}{\onelineskip}
\checkandfixthelayout
%
%%%



%%%
% Language
\PassOptionsToPackage{english,ngerman}{babel}
\RequirePackage{babel}
\PassOptionsToPackage{german=quotes}{csquotes}
\RequirePackage{csquotes}
%
%%%

%%%
% Colors
\RequirePackage{lbrcolor}
%
%%%


%%%
% Fonts
\RequirePackage{lbrfonts}
%
%%%


%%%
% Metadata
\usepackage{hyperref}
%%%


%%%
% Grafikeinbindungen
\usepackage{graphicx}
%
%%%
