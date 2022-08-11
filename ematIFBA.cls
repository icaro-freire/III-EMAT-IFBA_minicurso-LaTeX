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
\ProvidesClass{ematIFBA}[2022/08/07 'Classe para o minicurso Tangenciando o LaTeX' ]

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

% mais declarações =========================================================

% inserindo capa -----------------------------------------------------------
\newcommand{\capa}{ 
\begin{titlepage}
  \includepdf{capa_minicurso.png}
\end{titlepage}
}

% comandos gerais ----------------------------------------------------------
\newcommand{\textbs}[1]{\textbf{\textsf{#1}}} %-------> negrito e sem serifa
\newcommand{\LaTeXX}{ {\grega \hologo{LaTeX}} } %-----> LaTeX melhorado
