\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ncut}[2020/05/30 v1.0 NCUT Theis Template]

\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\ProcessOptions\relax

\def\@thesection      {第\zhnum{section}章}
\def\@contentsname    {目錄}
\def\bibliographytitle{參考文獻}
\def\@listfigurename  {圖目錄}
\def\@listtablename   {表目錄}
\def\@figurename      {圖}
\def\@tablename       {表}

\DeclareOption{english}{%
  \def\@thesection      {Chapter \arabic{section}}%
  \def\@contentsname    {Table of Contents}%
  \def\bibliographytitle{References}
  \def\@listfigurename  {List of Figures}%
  \def\@listtablename   {List of Tables}%
  \def\@figurename      {Figure}%
  \def\@tablename       {Table}%
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[a4paper]{article}


\RequirePackage{hyperref}
\RequirePackage[utf8]{inputenc}
\RequirePackage[UTF8]{ctex}
\RequirePackage{xeCJK}
\RequirePackage{titletoc}
\RequirePackage{graphics}
\RequirePackage{background}
\RequirePackage{indentfirst}
\RequirePackage{titlesec}
\RequirePackage{zhnumber}
\RequirePackage{caption}

% set section prefix
\renewcommand{\thesection}    {\@thesection}
\renewcommand\thesubsection   {\arabic{section}.\arabic{subsection}}
\renewcommand\thesubsubsection{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}

% set title
\renewcommand\contentsname{\@contentsname}
\renewcommand\listfigurename{\@listfigurename}
\renewcommand\listtablename{\@listtablename}
\renewcommand\figurename{\@figurename}
\renewcommand\tablename{\@tablename}

\RequirePackage{geometry}
\geometry{
  top=2.8cm,
  bottom=3cm,
  left=2.5cm,               % inner=3cm
  right=2.5cm               % outer=3cm
}


% set section style and space
\titleformat{\section}
  {\LARGE\bfseries\centering}{\thesection}{1ex}{}[]
\titleformat{name=\section,numberless}[display]
  {\LARGE\bfseries\centering}{}{1ex}{}[]

\titlespacing*{\section}
  {0ex}{0ex}{6ex}

% menu settings
\renewcommand\tableofcontents{%
  \begin{center}\section{\contentsname
      \@mkboth{%
        \MakeUppercase\contentsname}{\MakeUppercase\contentsname}
    }%
    \@starttoc{toc}%
  \end{center}
}

\renewcommand\listoffigures{%
  \begin{center}
    \section{\listfigurename}%
    \@mkboth{\MakeUppercase\listfigurename}%
            {\MakeUppercase\listfigurename}%
            \@starttoc{lof}%
  \end{center}
}

\renewcommand\listoftables{%
  \begin{center}
    \section{\listtablename}%
    \@mkboth{%
      \MakeUppercase\listtablename}%
            {\MakeUppercase\listtablename}%
            \@starttoc{lot}%
  \end{center}
}

% 字型設定
\setmainfont{Times New Roman}[
  Path = ./fonts/english/,
  Extension = .ttf ,
  BoldFont = *-Bold ,
  ItalicFont = *-Italic ,
  BoldItalicFont = *-BoldItalic, ]
\setCJKmainfont{BiauKai}[
  Path = ./fonts/chinese/ ,
  Extension = .ttf ,
  BoldFont = Kaiti-Black, ]

% 行高
\linespread{1.9}

% watermark
\backgroundsetup{
  scale=1,
  angle=0,
  contents={
    \includegraphics[width=.6\textwidth]{./ncut_watermark.jpg}
  }
}

%目錄設定
\titlecontents{section}
[0em]
{\thecontentslabel}
{\hspace{5bp}}
{}{\titlerule*{.} \contentspage}

\titlecontents{subsection}
[4em]
{}
{\contentslabel{2em}}
{}{\titlerule*{.} \contentspage}

\titlecontents{subsubsection}
[8em]
{}
{\contentslabel{3em}}
{}{\titlerule*{.} \contentspage}

\titlecontents{figure}
[0em]
{}
{\figurename \hspace{1em} \contentslabel{1em} \hspace{5bp}}
{}{\titlerule*{.} \contentspage}

\titlecontents{table}
[0em]
{}
{\tablename \hspace{1em} \contentslabel{1em} \hspace{5bp}}
{}{\titlerule*{.} \contentspage}

\endinput
%%
%% End of file `ncut.cls'.
