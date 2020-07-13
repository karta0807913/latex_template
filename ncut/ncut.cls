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

\RequirePackage{geometry}
\geometry{
  top=2cm,
  bottom=3cm,
  left=2.5cm,               % inner=3cm
  right=2.5cm               % outer=3cm
}

% set section prefix
\newcommand \originthesection {\@arabic\c@section}
\renewcommand\thesection      {}
\renewcommand\thesubsection   {\originthesection.\@arabic\c@subsection}

% set section style and space
\titleformat{\section}[display]
  {\LARGE\bfseries\centering}{\thesection}{0ex}{}
\titlespacing*{\section}
  {0ex}{-7ex}{8ex}
%% \renewcommand\section{\@startsection {section}{1}{\z@}%
%%                                    {-8ex \@plus -.2ex}%
%%                                    {8ex \@plus.2ex}%
%%                                    {\LARGE\bfseries\fontsize{20pt}{20pt}\centering}


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

% bibliography copy from article
\renewenvironment{thebibliography}[1]
               {\section{\refname}%
                 \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
                 \list{\@biblabel{\@arabic\c@enumiv}}%
                      {\settowidth\labelwidth{\@biblabel{#1}}%
                        \leftmargin\labelwidth
                        \advance\leftmargin\labelsep
                        \@openbib@code
                        \usecounter{enumiv}%
                        \let\p@enumiv\@empty
                        \renewcommand\theenumiv{\@arabic\c@enumiv}}%
                      \sloppy
                      \clubpenalty4000
                      \@clubpenalty \clubpenalty
                      \widowpenalty4000%
                      \sfcode`\.\@m
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
\newcommand{\refname}{參考文獻}
%% \renewcommand{\bibname}{參考文獻}
\captionsetup[figure]{name=圖}

\endinput
%%
%% End of file `article.cls'.