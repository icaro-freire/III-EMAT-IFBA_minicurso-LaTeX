%###########################################################################
% ematIFBA.cls
% Copyright (c) 2022 Ícaro Vidal Freire
%---------------------------------------------------------------------------
% Licença   : MIT License (MIT)
%             Mais detalhes, aqui: <https://www.mit.edu/~amini/LICENSE.md>
% Versão    : 0.1.0
% Descrição : Classe produzida para confecção de um texto base para um 
%             minicurso de 3h sobre LaTeX.
%###########################################################################

% identificação ============================================================ 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ematIFBA}[2022/08/07 v0.1.0 'Classe para o minicurso Tangenciando o LaTeX']

% declarações preliminares =================================================
\LoadClass[12pt]{report}

\RequirePackage{sectsty}
  \allsectionsfont{\sffamily}

\RequirePackage
[
  font      = small,
  textfont  = sf,
  labelfont = {sf, bf}, 
]{caption}


\RequirePackage{xcolor} 
  \definecolor{douradoUFRB}{rgb}{0.929411765, 0.603921569, 0.066666667}
  \definecolor{verdeIFBA}{rgb}{0.2078431, 0.5960784, 0.1882353}
  \definecolor{redIFBA}{rgb}{0.78823529, 0.04705882, 0.05882353}
  \definecolor{azulUFRB}{rgb}{0.160784314, 0.08627451, 0.435294118}

\RequirePackage{tikz}
\RequirePackage[many]{tcolorbox}
  \tcbuselibrary{most}

% mais declarações =========================================================

% configurações de códigos ------------------------------------------------

%% configurando caixa para códigos ----------------------------------------
%%% icone do lapis
\newcommand{\lapis}[1]{%
  \begin{scope}[
    y=0.80pt,
    x=0.80pt,
    yscale=-1.000000,
    xscale=1.000000,
    inner sep=0pt,
    outer sep=0pt,
    shift={([xshift=0.35em, yshift=0.31em]frame.north west)},
    scale=.11
  ]

    \path[fill=#1!5] (104.4280,104.4280) circle (2.9472cm);
    \begin{scope}[shift={(-46.08801,-45.37)}]
      \path[fill=#1] (113.9190,187.9100) -- (127.1980,200.4160) --
        (109.7220,205.6600) -- (92.2560,210.9060) -- (96.4470,193.1470) --
        (100.6380,175.3930) -- cycle;
      \path[fill=#1] (133.3760,194.1100) -- (106.7160,169.1000) --
        (182.1210,88.6910) -- (208.7790,113.7040) -- cycle;
    \end{scope}
  \end{scope}%
}

%% caixa de código
% 1 -> título
% 2 -> icone do lápis
\newtcblisting{codigo}[2]{
  adjusted title=#1,
  adjusted title after break={\centering #1 (cont.)},
  halign title=center,
  fonttitle=\bfseries\sffamily,
  enhanced,
  drop lifted shadow,
  colback=verdeIFBA!5,
  colframe=verdeIFBA,
  breakable,
  overlay={#2{verdeIFBA}},
  toptitle=0.2em,
  bottomtitle=.2em,
  coltitle=white,
  before skip=1em,
  left=5mm,  
  listing only,
  listing options={
    numbers=left,
    numberstyle=\tiny\sffamily\color{verdeIFBA},
    basicstyle=\scriptsize\ttfamily,
  },
  after skip=1em
}

%% configurando caixa de avisos arredondada -------------------------------
%% icone da exclamação
%%% créditos: manual arara

\newcommand{\exclamacao}[1]{%
  \begin{scope}[
    y=0.80pt,
    x=0.80pt,
    yscale=-1.000000,
    xscale=1.000000,
    inner sep=0pt,
    outer sep=0pt,
    shift={([xshift=0.35em, yshift=0.31em]frame.north west)},
    scale=.11
  ]

    \path[fill=#1!5] (208.8560,104.4280) .. controls (208.8560,162.1050) and
      (162.1040,208.8610) .. (104.4270,208.8610) .. controls (46.7500,208.8610) and
      (0.0000,162.1050) .. (0.0000,104.4280) .. controls (0.0000,46.7540) and
      (46.7500,0.0000) .. (104.4270,0.0000) .. controls (162.1040,0.0000) and
      (208.8560,46.7540) .. (208.8560,104.4280) -- cycle;

    \begin{scope}[shift={(-46.415,-45.369)}]
      \path[fill=#1] (166.3660,93.4020) -- (165.8010,162.0250) --
        (137.0310,162.0250) -- (135.3300,93.4020) -- cycle;
      \path[fill=#1] (164.4210,200.6400) .. controls (160.6350,204.3420) and
        (156.0710,206.1950) .. (150.7290,206.1950) .. controls (145.1560,206.1950) and
        (140.5820,204.4020) .. (136.9930,200.8000) .. controls (133.3970,197.2110) and
        (131.6020,192.6350) .. (131.6020,187.0710) .. controls (131.6020,181.6690) and
        (133.4650,177.0890) .. (137.1910,173.3350) .. controls (140.9190,169.5810) and
        (145.4270,167.7130) .. (150.7290,167.7130) .. controls (156.0230,167.7130) and
        (160.5790,169.6260) .. (164.3730,173.4640) .. controls (168.1870,177.2980) and
        (170.0840,181.8620) .. (170.0840,187.1560) .. controls (170.0880,192.4580) and
        (168.1950,196.9410) .. (164.4210,200.6400) -- cycle;
    \end{scope}
  \end{scope}%
}

% 1 -> titulo
% 2 -> icone de exclamação
\newtcolorbox{atencao}[2]{
  adjusted title=#1,
  adjusted title after break={\centering #1 (cont.)},
  halign title=center,
  fonttitle=\bfseries\sffamily,
  enhanced,
  drop lifted shadow,
  colback=redIFBA!5,
  colframe=redIFBA,
  breakable,
  overlay={#2{redIFBA}},
  toptitle=0.2em,
  bottomtitle=.2em,
  coltitle=white,
  before skip=1em,
  after skip=1.4em
}

%% configuração para código LaTeX -----------------------------------------

\newtcblisting{codeLaTeX}{%
  colback=azulUFRB!5!white,
  colframe=azulUFRB,
  listing options={
    numbers=left,
    numberstyle=\tiny\sffamily\color{azulUFRB},
    basicstyle=\scriptsize\ttfamily
  }
}

% configuração para escrita simples de código destacado -------------------

\tcbset{
  colframe  = verdeIFBA,
  colback   = white,
  colupper  = black, 
  fonttitle = \bfseries\sffamily,
  center title
}

\newcommand{\tcboxC}[1]{
  \begin{center}
    \tcbox[before skip = -0.5em, after skip = 1.2em]{#1}
  \end{center}
}


% inserindo capa -----------------------------------------------------------
\newcommand{\capa}{ 
\begin{titlepage}
  \includepdf{capa_minicurso.png}
\end{titlepage}
}

% comandos gerais ----------------------------------------------------------
\newcommand{\textbs}[1]{\textbf{\textsf{#1}}} %-------> negrito e sem serifa
\newcommand{\textis}[1]{\textit{\textsf{#1}}} %-------> negrito e sem serifa
\newcommand{\LaTeXX}{ {\grega \hologo{LaTeX}} } %-----> LaTeX melhorado
