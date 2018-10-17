\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[2018/10/15 Notes]

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}

\newcommand*{\@authortext}{Author}
\newcommand*{\@authorstext}{Authors}
\newcommand*{\@otherauthortext}{Other authors}
\newcommand*{\@reviewertext}{Reviewers}
\newcommand*{\@lastupdatetext}{Last update}
\newcommand*{\@titlemonth}{\ifcase \the\month \or January\or February\or March\or April\or May \or June\or July\or August\or September\or October\or November\or December\fi \: \number \year}
\newcommand*{\titlemonth}[1]{\gdef\@titlemonth{#1}}


\DeclareOption{spanish}{
    \renewcommand*{\languagename}{spanish}
    \renewcommand*{\@authortext}{Autor principal}
    \renewcommand*{\@authorstext}{Autores principales}
    \renewcommand*{\@otherauthortext}{Otros autores}
    \renewcommand*{\@reviewertext}{Revisores}
    \renewcommand*{\@lastupdatetext}{\'Ultima modificaci\'on}
    \renewcommand*{\@titlemonth}{\ifcase \the\month \or Enero\or Febrero\or Marzo\or Abril\or Mayo \or Junio\or Julio\or Agosto\or Septiembre\or Octubre\or Noviembre\or Diciembre\fi \:  \number \year}
}

\DeclareOption{catalan}{
    \renewcommand*{\languagename}{catalan}
    \renewcommand*{\@authortext}{Autor principal}
    \renewcommand*{\@authorstext}{Autors principals}
    \renewcommand*{\@otherauthortext}{Altres autors}
    \renewcommand*{\@reviewertext}{Revisors}
    \renewcommand*{\@lastupdatetext}{\'Ultima modificaci\'o}
    \renewcommand*{\@titlemonth}{\ifcase \the\month \or Gener\or Febrer\or Mar\c{c}\or Abril\or Maig \or Juny\or Juliol\or Agost\or Setembre\or Octubre\or Novembre\or Desembre\fi \:  \number \year}
}

\ProcessOptions\relax

\LoadClass[12pt]{book}

% Title page

\newif\if@lastupdate\@lastupdatetrue
\newcommand*{\nolastupdate}{\@lastupdatefalse}
\def\@author{}
\newcommand*{\reviewer}[1]{\gdef\@reviewer{#1}}
\newcommand*{\@reviewer}{}
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand*{\@subtitle}{}
\newcommand*{\thankscomment}[1]{\gdef\@thankscomment{#1}}
\newcommand*{\@thankscomment}{}
\newcommand*{\otherauthor}[1]{\gdef\@otherauthor{#1}}
\newcommand*{\@otherauthor}{}
\renewcommand*{\and}{, }

\newif\if@mutltipleauthors\@mutltipleauthorstrue
\newcommand*{\singleauthor}{\@mutltipleauthorsfalse}


\renewcommand*{\maketitle}{%

\begin{titlepage} % Suppresses headers and footers on the title page
    
    \centering % Centre everything on the title page

    \scshape % Use small caps for all text on the title page

    \vspace*{\fill}

    %------------------------------------------------
    %    Title
    %------------------------------------------------

    \rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt} % Thick horizontal rule
    \rule{\textwidth}{0.4pt} % Thin horizontal rule

    \vspace{0.75\baselineskip} % Whitespace above the title

    {\LARGE \@title\\} % Title

    \vspace{0.75\baselineskip} % Whitespace below the title

    \rule{\textwidth}{0.4pt}\vspace*{-\baselineskip}\vspace{3.2pt} % Thin horizontal rule
    \rule{\textwidth}{1.6pt} % Thick horizontal rule

    \vspace{1.5\baselineskip} % Whitespace after the title block

    %------------------------------------------------
    %    Subtitle
    %------------------------------------------------
    
    \@subtitle % Apuntes basados en el curso impartido por Miguel Ángel Barja
    
    \vspace*{\fill}
    \vspace*{\fill}
    \vspace*{\fill}
    \vspace*{\fill}
    \vspace*{\fill}
    \vspace*{\fill}

    %------------------------------------------------
    %    Publisher
    %------------------------------------------------

    %\plogo % Publisher logo
    \includegraphics[width=5cm]{../logo.pdf}
    
    \vspace{0.3\baselineskip} % Whitespace under the publisher logo
    
    Barcelona, \@titlemonth
\end{titlepage}

\vspace*{\fill}

\ifx\@author\empty
\else
    \if@mutltipleauthors
        \noindent \@authorstext: \@author.
    \else
        \noindent \@authortext: \@author.
    \fi
\fi

\ifx\@otherauthor\empty
\else
    \quad
    
    \noindent \@otherauthortext: \@otherauthor.
\fi

\ifx\@reviewer\empty
\else
    \quad
    
    \noindent \@reviewertext: \@reviewer.
\fi

\ifx\@thankscomment\empty
\else
    \quad
    
    \noindent \@thankscomment
\fi

\if@lastupdate
    \quad

    \noindent \@lastupdatetext: \@date.
\fi

\doclicenseThis
}

% Other commands
\newcommand*{\makecover}{
    \frontmatter
    \maketitle
    \tableofcontents
    \mainmatter
}

\RequirePackage[a4paper,margin=1in]{geometry}
\RequirePackage[pdftex]{hyperref}
\hypersetup{
    colorlinks,
    linkcolor=blue
}
\RequirePackage[
    type={CC},
    modifier={by-nc-sa},
    version={4.0},
]{doclicense}


\endinput


Comandos definidos:
    \nolastupdate
    \singleauthor
    \makecover
    \tilemonth
