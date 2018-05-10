%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a 
%% Faculdade de Economia, Administração e Contabilidade de Ribeirão 
%% Preto - Universidade de São Paulo. 
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is Matheus Alves Albino, albino@usp.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fearp}[2017/12/10 v. 0.29 Modelo da FEA-RP/USP baseado em abnTeX2]
\LoadClass[12pt,openright,oneside,a4paper,chapter=TITLE]{abntex2}
% ----------------------------------------------------------------------------%
%         PACOTES ESSENCIAIS                                                  %
% ----------------------------------------------------------------------------%
\RequirePackage{times}          % Usa Times Roman para texto 
\RequirePackage[T1]{fontenc}    % Seleção de códigos de fonte.
\RequirePackage[utf8]{inputenc} % Codificação e conversão automática
\RequirePackage{subcaption}     % Pacote para definição dos subcaptions (ambientes de subfigures)
\RequirePackage{makeidx}        % Cria o índice
\RequirePackage{hyperref}       % Controla a formação do índice
\RequirePackage{indentfirst}    % Indenta o primeiro parágrafo do capítulo
\RequirePackage{graphicx}       % Inclusão de gráficos
\RequirePackage{lastpage}       % Usado pela ficha catalográfica
\RequirePackage{textcomp}
\RequirePackage{multirow}          
\RequirePackage{verbatim}
\RequirePackage{xstring}        % Manipulação de strings
\RequirePackage{hyphenat}       % Hifenização
\RequirePackage{pgffor}         % Para ficha catalográfica
\RequirePackage{xifthen}        % Condicionais
\RequirePackage{booktabs,ctable}
      \newcommand\@fearpTitulo{\fontsize{14pt}{1em}\selectfont\usefont{T1}{ptm}{m}{n}}
      \newcommand\@fearpAutorCapa{\fontsize{12pt}{1em}\selectfont\usefont{OT1}{ptm}{m}{n}}
      \newcommand\@fearpAutorFolhaRosto{\fontsize{12pt}{1em}\selectfont\usefont{T1}{ptm}{m}{n}}
      \newcommand\@fearpTituloFolhaRosto{\fontsize{14pt}{1em}\selectfont\usefont{T1}{ptm}{m}{n}}
      \newcommand\@fearpOrientador{\fontsize{12pt}{1em}\selectfont\usefont{T1}{ptm}{m}{n}}
      \newcommand\@fearpPreambulo{\fontsize{12pt}{1em}\selectfont\usefont{T1}{ptm}{m}{n}}
      \newcommand\@fearpLocalData{\fontsize{12pt}{1em}\selectfont\usefont{T1}{ptm}{m}{n}}
% ----------------------------------------------------------------------------%
%         TIPOGRAFIA                                                          %
% ----------------------------------------------------------------------------%
% Fontes do ambiente matemático
\AtBeginDocument{
\DeclareSymbolFont{numbers}{OT1}{ptm} {m}{n}
\SetSymbolFont{numbers}   {normal}{OT1}{ptm} {m}{n}
\SetSymbolFont{operators}   {normal}{OT1}{cmr} {m}{n}
\SetSymbolFont{letters}     {normal}{OML}{cmm} {m}{it}
\SetSymbolFont{symbols}     {normal}{OMS}{cmsy}{m}{n}
\SetSymbolFont{largesymbols}{normal}{OMX}{cmex}{m}{n}
\SetSymbolFont{operators}   {bold}  {OT1}{cmr} {bx}{n}
\SetSymbolFont{letters}     {bold}  {OML}{cmm} {b}{it}
\SetSymbolFont{symbols}     {bold}  {OMS}{cmsy}{b}{n}
\SetSymbolFont{largesymbols}{bold}  {OMX}{cmex}{m}{n}
\DeclareMathSymbol{0}\mathalpha{numbers}{"30}
\DeclareMathSymbol{1}\mathalpha{numbers}{"31}
\DeclareMathSymbol{2}\mathalpha{numbers}{"32}
\DeclareMathSymbol{3}\mathalpha{numbers}{"33}
\DeclareMathSymbol{4}\mathalpha{numbers}{"34}
\DeclareMathSymbol{5}\mathalpha{numbers}{"35}
\DeclareMathSymbol{6}\mathalpha{numbers}{"36}
\DeclareMathSymbol{7}\mathalpha{numbers}{"37}
\DeclareMathSymbol{8}\mathalpha{numbers}{"38}
\DeclareMathSymbol{9}\mathalpha{numbers}{"39}
\SetMathAlphabet{\mathbf}{normal}{OT1}{cmr}{bx}{n}
\SetMathAlphabet{\mathsf}{normal}{OT1}{cmss}{m}{n}
\SetMathAlphabet{\mathit}{normal}{OT1}{cmr}{m}{it}
\SetMathAlphabet{\mathtt}{normal}{OT1}{cmr}{m}{n}
\SetMathAlphabet{\mathbf}{bold}{OT1}{cmr}{bx}{n}
\SetMathAlphabet{\mathsf}{bold}{OT1}{cmss}{bx}{n}
\SetMathAlphabet{\mathit}{bold}{OT1}{cmr}{bx}{it}
\SetMathAlphabet{\mathtt}{bold}{OT1}{cmtt}{m}{n}
}
\renewcommand{\ABNTEXpartfont}{\scshape} % Partes
\renewcommand{\ABNTEXpartfontsize}{\Large}
\renewcommand{\ABNTEXchapterfont}{\bfseries} % Capítulos
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfont}{\bfseries\normalfont} % Seções
\renewcommand{\ABNTEXsectionfontsize}{\bfseries\normalsize} 
\renewcommand{\ABNTEXsubsectionfont}{\bfseries\itshape\selectfont} % Subseções
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}
\renewcommand{\tocheadstart}{\ABNTEXchapterfont}
\setlength\afterchapskip{\baselineskip} % Dá espaço entre o título do capítulo e o texto             
\RequirePackage{amssymb}
\RequirePackage{relsize} 
  \checkandfixthelayout
\RequirePackage{afterpage}
\newcommand\blankpage{
    \null
    \thispagestyle{empty}
    \addtocounter{page}{-1}
    \newpage}
\RequirePackage{float,newfloat} % Ativa opções de posicionamento de gráficos e tabelas
\RequirePackage[margin=6pt,font=normal,labelfont=rm]{caption} % Ativa opções de legenda
    \captionsetup[figure]{labelfont=rm}
    \captionsetup[table]{format=plain}
     \captionsetup[quadro]{format=plain, labelsep=endash}
\makeatletter
% ----------------------------------------------------------------------------%
%         AMBIENTES FLUTUANTES                                                %
% ----------------------------------------------------------------------------%
\newcommand{\qref}[1]{\quadrorefname~\ref{#1}}      % Quadro X
\newcommand{\incluilistadequadros}{
  \gdef\@incluilistadequadros{true}
}
\newcommand{\listquadroname}{Lista de quadros}
\newcommand{\quadroname}{Quadro}
\newcommand{\quadrorefname}{Quadro}

\DeclareFloatingEnvironment[fileext=loq,placement={!htbp},name=Quadro]{quadro}
\newlistof{listofquadros}{loq}{\listquadroname}
\newlistentry{quadro}{loq}{0}
\renewcommand{\thequadro}{\thechapter.\@arabic\c@quadro}


\renewcommand{\cftquadroname}{\par\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill\textendash\hfill}
\newcommand{\inserelistadequadros}
{
  \@ifundefined{@incluilistadequadros}{}{
    \pdfbookmark[0]{\listquadroname}{loq}
    \listofquadros*
    \cleardoublepage
  }
}
 \inserelistadequadros 
  \counterwithout{quadro}{chapter}
% ----------------------------------------------------------------------------%
%         COMANDOS DE IDENTIFICAÇÃO                                           %
% ----------------------------------------------------------------------------%
% Comando para identificação de nome e sobrenome do autor
\renewcommand\autor[2][Nome para Referência]{
\expandarg
    \StrCount{#2}{\space}[\nbmatch]%
    \StrCut[\nbmatch]{#2}{\space}\strfirstautor\strsecondautor
    \global\def\@authname{\strfirstautor}
    \global\def\@authsurn{\strsecondautor}
    \def\ABNTautordata{\@authname~\@authsurn}
    \renewcommand{\imprimirautor}{\@authname~\@authsurn}
    \def\ABNTautorreferencia{#1}
    \def\ABNTautordatabib{\@authsurn, \@authname}
    \def\ABNTautorsobrenome{\@authsurn}
    \global\def\@author{\@authname~\@authsurn}
}
% Tipo de trabalho
\renewcommand{\tipotrabalho}[1]{\MakeUppercase{\strsecondautor}, \strfirstautor. \emph{\imprimirtitulo}. \imprimirdata. \pageref{LastPage}f. #1 -- \imprimirfaculdade, \imprimiruniversidade, \imprimirlocal, \imprimirdata.}
% Tipo de trabalho (inglês)
\providecommand{\imprimirengtitle}{}
\newcommand{\engtitle}[1]{
\renewcommand{\imprimirengtitle}{#1}}
\newcommand{\engtype}[1]{\MakeUppercase{\strsecondautor}, \strfirstautor. \imprimirengtitle. \imprimirdata. \pageref{LastPage}f. #1 -- \imprimirfaculdade, \imprimiruniversidade, \imprimirlocal, \imprimirdata.}
% Classificação JEL
\newcommand{\jel}[1]{\textbf{JEL:} #1}
% Comando para identificação de nome e sobrenome do orientador 
\renewcommand{\orientadorname}{Orientador}
\renewcommand{\coorientadorname}{Coorientador}
\renewcommand{\orientador}[3][\orientadorname]{
\expandarg
    \StrCount{#3}{\space}[\nbmatch]%
    \StrCut[\nbmatch]{#3}{\space}\strfirstorientador\strsecondorientador
    \addto\captionsbrazil{
        \renewcommand{\imprimirorientadorRotulo}{#1}
    }
    \addto\captionsenglish{
        \renewcommand{\imprimirorientadorRotulo}{\orientadorname}
    }
    \newcommand{\titulacaoorientador}{#2}
    \def\ABNTorientadordatabib{\strsecondorientador, \strfirstorientador}
    \renewcommand{\imprimirorientador}{\strfirstorientador~\strsecondorientador}
}
% Comando para identificação de nome e sobrenome do co-orientador
\renewcommand{\coorientador}[3][\coorientadorname]{
    \StrCount{#3}{\space}[\nbmatch]%
    \StrCut[\nbmatch]{#3}{\space}\strfirstcoorientador\strsecondcoorientador
    \addto\captionsbrazil{
        \renewcommand{\imprimircoorientadorRotulo}{#1}
    }
    \addto\captionsenglish{
        \renewcommand{\imprimircoorientadorRotulo}{\coorientadorname}
    }
    \newcommand{\titulacaocoorientador}{#2}
    \def\ABNTcoorientadordatabib{\strsecondcoorientador, \strfirstcoorientador}
    \renewcommand{\imprimircoorientador}{\strfirstcoorientador~\strsecondcoorientador}
}
% Comando de informação de universidade
\providecommand{\imprimiruniversidade}{}
\newcommand{\universidade}[1]{\renewcommand{\imprimiruniversidade}{#1}}
% Comando de informação de departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}
% Comando de informação de faculdade
\providecommand{\imprimirfaculdade}{}
\newcommand{\faculdade}[1]{\renewcommand{\imprimirfaculdade}{#1}}
% Comando de informação de programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}
% Dados Institucionais
\providecommand{\imprimirreitor}{}
\newcommand{\reitor}[1]{\renewcommand{\imprimirreitor}{#1}}
\providecommand{\imprimirdiretor}{}
\newcommand{\diretor}[1]{\renewcommand{\imprimirdiretor}{#1}}
\providecommand{\imprimirchefe}{}
\newcommand{\chefe}[1]{\renewcommand{\imprimirchefe}{#1}}
% Palavras-chave para a ficha catalográfica
\providecommand{\imprimirchaves}{}
\newcommand{\palavraschave}[4]{\renewcommand{\imprimirchaves}{\hspace{0.6cm} 1. #1. \hspace{0.05cm} 2. 
#2. \hspace{0.05cm} 3. #3. \hspace{0.05cm} 4. #4}}
% ----------------------------------------------------------------------------%
%         ESPAÇAMENTO                                                         %
% ----------------------------------------------------------------------------%
%Compilar o índice
\makeindex
%Estilo de Rodapés e Cabeçalhos
     \makepagestyle{meuestilo}
     %Cabeçalhos
     \makeevenhead{meuestilo} % Pagina par
     {}
     {}
     {\footnotesize \thepage}
     \makeoddhead{meuestilo} % Pagina ímpar ou com oneside
     {}
     {}
     {\footnotesize \thepage}
    
     \makeevenfoot{meuestilo} % Rodapés
     {}
     {}
     {}
     \makeoddfoot{meuestilo} % Pagina ímpar ou com oneside
     {}
     {}
     {}
     \makeheadrule{meuestilo}{0pt}{0pt}
% Opção Default
\DeclareOption{default}{
% Formato da Capa - option default
        \renewcommand{\imprimircapa}{
        \begin{capa}
        \begin{center}
                {\MakeUppercase{\imprimiruniversidade} \\ \MakeUppercase{\imprimirfaculdade} \\ 
                \MakeUppercase{\imprimirdepartamento}\\ \MakeUppercase{\imprimirprograma}} \\[3.5cm]
                {\MakeUppercase{\imprimirautor}} \\[3.0cm]
                {\imprimirtitulo} \\[3.0cm]
                \vspace{50pt}
                \hspace{.45\textwidth} 
            \begin{minipage}{.52\textwidth}
                \par
                \setlength{\parskip}{16pt}
                \par
                \imprimirorientadorRotulo: \titulacaoorientador\ \nohyphens{\imprimirorientador}
                \setlength{\parskip}{5.5pt}
                \par
                \par
            \end{minipage}
                \vfill
                {\normalsize \MakeUppercase{\imprimirlocal}} \\
                {\normalsize \imprimirdata}
        \end{center}
        \end{capa}
        }
% Formato da Folha de Rosto - option default
\newpage
\renewcommand{\folhaderostocontent}{
        \begin{center}
                {\MakeUppercase{\imprimirautor}} \\[7.5cm]
                {\imprimirtitulo} \\ [4cm]
                \hspace{.45\textwidth} 
            \begin{minipage}{.52\textwidth}
                \par
                \imprimirpreambulo\setlength{\parskip}{16pt}
                \par
                {\imprimirorientadorRotulo: \titulacaoorientador\ \nohyphens{\imprimirorientador}}
                \setlength{\parskip}{5.5pt}
                \par
                \par
            \end{minipage}
                \vfill
                {\normalsize \MakeUppercase{\imprimirlocal}} \\
                {\normalsize \imprimirdata}
        \end{center}
                }
}
\ExecuteOptions{default}

% -------------------------------------
%   CURSOS PREDEFINIDOS
% -------------------------------------

\DeclareOption{rad}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Administração}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade de Ribeirão~Preto}
\renewcommand{\imprimirprograma}{\makebox[\widthof{XXXXXXXXXX}][c]{}}
}

\DeclareOption{rec}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Economia}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade de Ribeirão~Preto}
\renewcommand{\imprimirprograma}{\makebox[\widthof{XXXXXXXXXX}][c]{}}
}

\DeclareOption{rcc}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Contabilidade}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade de Ribeirão~Preto}
\renewcommand{\imprimirprograma}{\makebox[\widthof{XXXXXXXXXX}][c]{}}
}

\DeclareOption{eac}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Contabilidade e Atuária}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade}
\renewcommand{\imprimirprograma}{\makebox[\widthof{XXXXXXXXXX}][c]{}}
}

\DeclareOption{eae}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Economia}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade}
\renewcommand{\imprimirprograma}{\makebox[\widthof{XXXXXXXXXX}][c]{}}
}

\DeclareOption{ead}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Administração}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade}
\renewcommand{\imprimirprograma}{\makebox[\widthof{XXXXXXXXXX}][c]{}}
}

\DeclareOption{ppgao}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Administração}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade de Ribeirão~Preto}
\renewcommand{\imprimirprograma}{Programa de Pós-graduação em Administração de Organizações}
}

\DeclareOption{ppgcc}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Contabilidade}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade de Ribeirão~Preto}
\renewcommand{\imprimirprograma}{Programa de Pós-graduação em Controladoria e Contabilidade}
}

\DeclareOption{ppge}{
\renewcommand{\imprimiruniversidade}{Universidade de São Paulo}
\renewcommand{\imprimirdepartamento}{Departamento de Economia}
\renewcommand{\imprimirfaculdade}{Faculdade de Economia, Administração e Contabilidade de Ribeirão~Preto}
\renewcommand{\imprimirprograma}{Programa de Pós-graduação em Economia -- Área: Economia Aplicada}
}

% -------------------------------------
%   BLIND
% -------------------------------------

\DeclareOption{blind}{
\renewcommand{\imprimirautor}{\makebox[\widthof{XXXXXXXXXX}][c]{}}
\renewcommand{\imprimirorientador}{\makebox[\widthof{XXXXXXXXXX}][c]{}}
        \renewcommand{\imprimircapa}{
        \begin{capa}
        \begin{center}
                {\normalsize \MakeUppercase{\imprimiruniversidade} \\ \MakeUppercase{\imprimirfaculdade} \\ \MakeUppercase{\imprimirdepartamento}\\ \MakeUppercase{\imprimirprograma}} \\ [3.5cm]
                {\normalsize \makebox[\widthof{XXXXXXXXXX}][c]{}} \\[3.0cm]
                {\imprimirtitulo} \\[3.0cm]
                \vspace{50pt}
                \hspace{.45\textwidth} 
            \begin{minipage}{.52\textwidth}
                \par
                \setlength{\parskip}{16pt}
                \par
                \makebox[\widthof{XXXXXXXXXX}][c]{}
                \setlength{\parskip}{5.5pt}
                \par
                \par
            \end{minipage}
                \vfill
                {\normalsize \MakeUppercase{\imprimirlocal}} \\
                {\normalsize \imprimirdata}
        \end{center}
        \end{capa}
        }
% Formato da Folha de Rosto
\newpage
\renewcommand{\folhaderostocontent}{
        \begin{center}
                {\normalsize \makebox[\widthof{XXXXXXXXXX}][c]{}} \\[7.5cm]
                {\imprimirtitulo} \\ [4cm]
                \hspace{.45\textwidth} 
            \begin{minipage}{.52\textwidth}
                \par
                \imprimirpreambulo\setlength{\parskip}{16pt}
                \par
                {\makebox[\widthof{XXXXXXXXXX}][c]{}}
                \setlength{\parskip}{5.5pt}
                \par
                \par
            \end{minipage}
                \vfill
                {\normalsize \MakeUppercase{\imprimirlocal}} \\
                {\normalsize \imprimirdata}
        \end{center}
                }
\renewcommand{\tipotrabalho}[1]{\makebox[\widthof{XXXXXXXXXX}][c]{}}
\renewcommand{\engtype}[1]{\makebox[\widthof{XXXXXXXXXX}][c]{}}
\renewcommand{\jel}{\phantom}
\renewenvironment{agradecimentos}{\comment}{\endcomment}
\renewenvironment{dedicatoria}{\comment}{\endcomment}
\renewenvironment{epigrafe}{\comment}{\endcomment}
\renewenvironment{folhadeaprovacao}{\comment}{\endcomment}
\renewenvironment{fichacatalografica}{\comment}{\endcomment}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{abntex2}
}
\ProcessOptions\relax
\endinput
