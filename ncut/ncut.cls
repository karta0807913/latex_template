\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ncut}[2020/05/30 v1.0 NCUT Theis Template]

\LoadClass[a4paper, 12pt]{report}

\RequirePackage{hyperref}
\RequirePackage[utf8]{inputenc}
\RequirePackage[UTF8]{ctex}
\RequirePackage{xeCJK}
\RequirePackage{titletoc}
\RequirePackage{graphics}
\RequirePackage{background}
\RequirePackage{indentfirst}
\RequirePackage{caption}
\RequirePackage{titlesec}
\RequirePackage{zhnumber}

\RequirePackage{geometry}
\geometry{
  top=2.8cm,
  bottom=3cm,
  left=2.5cm,               % inner=3cm
  right=2.5cm               % outer=3cm
}

% set section prefix
\renewcommand\thesection      {\zhnum{section}}
\renewcommand\thesubsection   {\arabic{section}.\@arabic\c@subsection}

% set section style and space
\titleformat{\section}
  {\LARGE\bfseries\centering}{\thesection}{0ex}{}[]
\titleformat{name=\section,numberless}[display]
  {\LARGE\bfseries\centering}{}{0ex}{}[]
\let\oldsection\section
\renewcommand{\section}[1]{{\LARGE\bfseries\centering{}\ \\}\oldsection{#1}}

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
{}
{} % section do not have label
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

\renewcommand\contentsname{目錄}
\renewcommand\listfigurename{圖目錄}
\renewcommand\listtablename{表目錄}
\captionsetup[figure]{name=圖}

\endinput
%%
%% End of file `article.cls'.