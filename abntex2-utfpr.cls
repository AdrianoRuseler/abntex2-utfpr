%%
%% Customizações do abnTeX2 (https://github.com/abntex/abntex2)  para a
%% Universidade Tecnológica Federal do Paraná - UTFPR
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Adriano Ruseler, ruseler@utfpr.edu.br
%%
%% Further information about abnTeX2 are available on https://github.com/abntex/abntex2
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex2-utfpr}[2017/04/24 v1.0 Modelo da UTFPR baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}



\RequirePackage{amsthm}
\RequirePackage{tikz}
\RequirePackage{epstopdf}%

% Comandos auxiliares
\newcommand{\showfont}{%
	(encoding: \f@encoding{},
	family: \f@family{},
	series: \f@series{},
	shape: \f@shape{},
	size: \f@size{},
	baseline: \f@baselineskip{})
}

% Comandos auxiliares
\newcommand{\justshowfont}{%
	(\f@encoding{},
	\f@family{},
	\f@series{},
	\f@shape{},
	\f@size{},
	\f@baselineskip{})
}


% ---
% Numeracao continua das figuras

%Numeração dos floats por capítulo
\counterwithin{figure}{chapter} 
\counterwithin{table}{chapter}


% Macros for Cross-reference
\newcommand{\figref}[1]{Figura~\ref{#1}}   % Cross-reference of figures
\newcommand{\tabref}[1]{Tabela~\ref{#1}}    % Cross-reference of tables
\newcommand{\eqnref}[1]{\eqref{#1}}      % Cross-reference of equations
\newcommand{\secref}[1]{Seção~\ref{#1}}  % Cross-reference of equations
\newcommand{\defref}[1]{Definição~\ref{#1}} % 

% \def\<type>autorefname{<new name>}
\renewcommand{\tableautorefname}{Tabela}
\renewcommand{\figureautorefname}{Figura}
\renewcommand{\chapterautorefname}{Cap\'itulo}
\renewcommand{\equationautorefname}{Equa\c{c}\~ao}


\newtheorem{axioma}{Axioma}[chapter]
\newtheorem{postulado}{Postulado}[chapter]
\newtheorem{teorema}{Teorema}[chapter]
\newtheorem{conjectura}{Conjectura}[chapter]
\newtheorem{corolario}{Coral\'ario}[teorema]
\newtheorem{lema}[teorema]{Lema}
\newtheorem{proposicao}{Proposi\c{c}\~ao}[teorema]


\theoremstyle{definition} % Commonly used in definitions, conditions, problems and examples.
\newtheorem{definicao}{Defini\c{c}\~ao}[section]
\newtheorem{exemplo}{Exemplo}[section]
\newtheorem{exercicio}{Exerc\'icio}[section]
\newtheorem{condicao}{Condi\c{c}\~ao}[section]


\theoremstyle{remark}
\newtheorem*{observacao}{Observa\c{c}\~ao}




% Fontes dos títulos e seções 

% Tamanho da fonte padrão do 'ABNTEX'
%\renewcommand{\normalsize}{\fontsize{10.5pt}{11pt}}


% http://tug.org/fonts/
\renewcommand{\familydefault}{cmr} % Fonte padrão utilizada no texto
% The three default family font variables and the \familydefault variable should not be confused with their respective switch:
%   http://www.forkosh.com/pstex/latexcommands.htm
% variable	value	activated by

%\encodingdefault	OT1	\normalfont, \textnormal{}
%\familydefault	\rmdefault	\normalfont, \textnormal{}
%\rmdefault	cmr	\rmfamily, \textrm{}
%\ttdefault	cmtt	\ttfamily, \texttt{}
%\sfdefault	cmss	\sffamily, \textsf{}
%\seriesdefault	m	\normalfont, \textnormal{}
%\mddefault	m	\mdseries, \textmd{}
%\bfdefault	bx	\bfseries, \textbf{}
%\shapedefault	n	\normalfont, \textnormal{}
%\updefault	n	\upshape, \textup{}
%\itdefault	it	\itshape, \textit{}
%\scdefault	sc	\scshape, \textsc{}
%\sldefault	sl	\slshape, \textsl{} 


\renewcommand{\rmdefault}{cmr} % Selects a roman (i.e., serifed) font family
% \renewcommand{\sfdefault}{cmss} % Selects a sans serif font family
% \renewcommand{\ttdefault}{cmtt} % Selects a monospaced (“typewriter”) font family


\renewcommand{\ABNTEXpartfont}{\usefont{T1}{cmr}{bx}{n}} % Apendices, anexos...
%\renewcommand{\ABNTEXpartfontsize}{\fontsize{15pt}{18pt}}
\renewcommand{\ABNTEXchapterfont}{\usefont{T1}{cmr}{bx}{n}}
%\renewcommand{\ABNTEXchapterfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsectionfont}{\usefont{T1}{cmr}{b}{n}}
%\renewcommand{\ABNTEXsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\usefont{T1}{cmr}{m}{it}}
%\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}



% Informação sobre o nível do trabalho: Tese, Dissertação, 	TCC, Monografia, Relatório, 	etc.
\DeclareFixedFont{\ArialCatorze}{T1}{ptm}{m}{n}{14pt} % TEX extended text - ptm - Adobe Times	
\DeclareFixedFont{\ArialDoze}{T1}{ptm}{m}{n}{12pt} % TEX extended text - ptm - Adobe Times	
\DeclareFixedFont{\ArialCatorzeBold}{T1}{ptm}{bx}{n}{14pt} % TEX extended text - ptm - Adobe Times	
\DeclareFixedFont{\ArialDozeBold}{T1}{ptm}{bx}{n}{12pt} % TEX extended text - ptm - Adobe Times	
\DeclareFixedFont{\ArialDezoitoBold}{T1}{ptm}{bx}{n}{18pt} % TEX extended text - ptm - Adobe Times	
\DeclareFixedFont{\ArialDezeseisBold}{T1}{ptm}{bx}{n}{16pt} % TEX extended text - ptm - Adobe Times	

% -----------------------------------------------------------------------------
% Comandos de dados
% -----------------------------------------------------------------------------

% Comandos de dados - Autor A
\providecommand{\imprimirautorA}{}
\newcommand{\autorA}[1]{\renewcommand{\imprimirautorA}{#1}}

% Comandos de dados - Autor B
\providecommand{\imprimirautorB}{}
\newcommand{\autorB}[1]{\renewcommand{\imprimirautorB}{#1}}

% Comandos de dados - Autor C
\providecommand{\imprimirautorC}{}
\newcommand{\autorC}[1]{\renewcommand{\imprimirautorC}{#1}}

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Sigla da Instituição
\providecommand{\imprimirsiglainstituicao}{}
\newcommand{\siglainstituicao}[1]{\renewcommand{\imprimirsiglainstituicao}{#1}}

% Comandos de dados - Sigla do Departamento
\providecommand{\imprimirsigladepartamento}{}
\newcommand{\sigladepartamento}[1]{\renewcommand{\imprimirsigladepartamento}{#1}}

% Comandos de dados - Sigla do Programa
\providecommand{\imprimirsiglaprograma}{}
\newcommand{\siglaprograma}[1]{\renewcommand{\imprimirsiglaprograma}{#1}}


% Comandos de dados - Subtítulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

% Comandos de dados - Instituição do orientador
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

% Comandos de dados - Instituição do coorientador
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

% Comandos de dados -  Tipo de trabalho acadêmico (trabalho de conclusão de curso, tese, dissertação ou projeto de qualificação)
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}

% Comandos de dados - Título Acadêmico a ser alcançado (Bacharel, Tecnólogo)
\providecommand{\imprimirtituloAcademico}{}
\newcommand{\tituloAcademico}[1]{\renewcommand{\imprimirtituloAcademico}{#1}}

% Comandos de dados - Título em Inglês
\providecommand{\imprimirautorcitacao}{}
\newcommand{\autorcitacao}[1]{\renewcommand{\imprimirautorcitacao}{#1}}

% Comandos de dados - Nome autor para citação
\providecommand{\imprimirtitleabstract}{}
\newcommand{\titleabstract}[1]{\renewcommand{\imprimirtitleabstract}{#1}}

% Comandos de dados - Área de concentração com Rótulo
\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}

% Comandos de dados - linha de pesquisa
\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}

% Comandos de dados - Texto da folha de aprovação
\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}

% Comandos de dados - Logomarca da instituição
\providecommand{\imprimirlogoinstituicao}{}
\newcommand{\logoinstituicao}[2]{\renewcommand{\imprimirlogoinstituicao}{\includegraphics[width={#1}\textwidth]{#2}}}



% ---
% Folha de rosto
%   usar \imprimirfolhaderosto* casodeseje imprimir algo no verso da
%   página no caso de estar no modo twoside. Util para imprimir a Ficha
%   Bibliografica. Porem, se estiver no modo oneside, a versao sem estrela
%   é identica.
%\renewenvironment{folhaderosto}[1][\folhaderostoname]{\clearpage\PRIVATEbookmarkthis{#1}}{\cleardoublepage}
%\renewenvironment{folhaderosto*}[1][\folhaderostoname]{\clearpage\PRIVATEbookmarkthis{#1}}{\newpage}%

% ---
% Conteudo padrao da Folha de Rosto
\makeatletter
\renewcommand{\folhaderostocontent}{
	\begin{center}				
		%\vspace*{1cm}
		{\ABNTEXchapterfont\large\imprimirautor}
				
		\vspace*{\fill}\vspace*{\fill}
		\begin{center}
			\ABNTEXchapterfont\bfseries\Large\imprimirtitulo
		\end{center}
		\vspace*{\fill}
				
		\abntex@ifnotempty{\imprimirpreambulo}{%
			\hspace{.45\textwidth}
			\begin{minipage}{5,5cm}				
				\SingleSpacing
				\fontsize{9.5}{10.5} \selectfont	\imprimirpreambulo\\
														
				\fontsize{9.5}{10.5} \selectfont{\textbf{\imprimirorientadorRotulo}~\imprimirorientador\par}
				\abntex@ifnotempty{\imprimircoorientador}{%
					{\textbf{\imprimircoorientadorRotulo}~\imprimircoorientador}%
				}%				
			\end{minipage}%
			\vspace*{\fill}
		}%
				
		%		{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}
				
		%		{\large\imprimirorientadorRotulo~\imprimirorientador\par}
		%		\abntex@ifnotempty{\imprimircoorientador}{%
		%			{\large\imprimircoorientadorRotulo~\imprimircoorientador}%
		%		}%
		\vspace*{\fill}
				
		{\large\imprimirlocal}
		\par
		{\large\imprimirdata}
		\vspace*{1cm}
				
	\end{center}
}
\makeatother




% ---
% Impressão da Capa
\newcommand{\imprimircapaPOS}{%
	\begin{capa}%
	\tikz[remember picture,overlay] \node[inner sep=0pt] at (current page.center){\includegraphics[width=\paperwidth,height=\paperheight]{Capa/CapaBackGround}};
	\color{white}
	\vspace{-5em}
		\center
		%\showfont		
		\ArialDezeseisBold{\MakeUppercase{\imprimirinstituicao}}\vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirdepartamento} \vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirprograma}
				
		\vfill
				
		\ArialDezeseisBold\MakeUppercase{\imprimirautor}
		
		%\justshowfont
				
		\vfill
		\ArialDezoitoBold\MakeUppercase{\imprimirtitulo}
		\vfill
		%\justshowfont
		\ArialDezeseisBold\MakeUppercase{\imprimirtipotrabalho}
				
		\vfill
		%\justshowfont
		\ArialDezeseisBold\MakeUppercase{\imprimirlocal}
				
		\ArialDezeseisBold\MakeUppercase{\imprimirdata}
				
	\end{capa}
}
% ---


% ---
% Impressão da Capa
\newcommand{\imprimircapaPOSnoBack}{%
	\begin{capa}%
	\vspace{-5em}
		\center
		%\showfont		
		\ArialDezeseisBold{\MakeUppercase{\imprimirinstituicao}}\vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirdepartamento} \vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirprograma}
				
		\vfill
				
		\ArialDezeseisBold\MakeUppercase{\imprimirautor}
		
		%\justshowfont
				
		\vfill
		\ArialDezoitoBold\MakeUppercase{\imprimirtitulo}
		\vfill
		%\justshowfont
		\ArialDezeseisBold\MakeUppercase{\imprimirtipotrabalho}
				
		\vfill
		%\justshowfont
		\ArialDezeseisBold\MakeUppercase{\imprimirlocal}
				
		\ArialDezeseisBold\MakeUppercase{\imprimirdata}
				
		\vspace*{1cm}
	\end{capa}
}
% ---

% ---
% Impressão da Capa
\newcommand{\imprimircapaGRAD}{%
	\begin{capa}%
	\tikz[remember picture,overlay] \node[inner sep=0pt] at (current page.center){\includegraphics[width=\paperwidth,height=\paperheight]{Capa/CapaGraduacaoBackground}};
	\vspace{-5em}
		\center
		%\showfont		
		\ArialDezeseisBold{\MakeUppercase{\imprimirinstituicao}}\vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirdepartamento} \vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirprograma}
				
		\vfill
				
		\ArialDezeseisBold\MakeUppercase{\imprimirautorA}\vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirautorB}\vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirautorC}
		
		%\justshowfont
				
		\vfill
		\ArialDezoitoBold\MakeUppercase{\imprimirtitulo}
		\vfill
		%\justshowfont
		\ArialDezeseisBold\MakeUppercase{\imprimirtipotrabalho}
				
		\vfill
		%\justshowfont
		\ArialDezeseisBold\MakeUppercase{\imprimirlocal}
				
		\ArialDezeseisBold\MakeUppercase{\imprimirdata}
				
	\end{capa}
}
% ---


% ---
% Impressão da Capa
\newcommand{\imprimircapaGRADnoBack}{%
	\begin{capa}%
	\vspace{-5em}
		\center
		%\showfont		
		\ArialDezeseisBold{\MakeUppercase{\imprimirinstituicao}}\vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirdepartamento} \vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirprograma}
				
		\vfill
				
		\ArialDezeseisBold\MakeUppercase{\imprimirautorA}\vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirautorB}\vspace{0.5em}
		
		\ArialDezeseisBold\MakeUppercase{\imprimirautorC}
		
		%\justshowfont
				
		\vfill
		\ArialDezoitoBold\MakeUppercase{\imprimirtitulo}
		\vfill
		%\justshowfont
		\ArialDezeseisBold\MakeUppercase{\imprimirtipotrabalho}
				
		\vfill
		%\justshowfont
		\ArialDezeseisBold\MakeUppercase{\imprimirlocal}
				
		\ArialDezeseisBold\MakeUppercase{\imprimirdata}
				
	\end{capa}
}
% ---


% -----------------------------------------------------------------------------
% Folha de rosto
% -----------------------------------------------------------------------------
\makeatletter
\newcommand{\folhaderostocontentufsc}
{%
    \setcounter{page}{2}
    \begin{center}
        \large\MakeUppercase{\imprimirautor}\\
    \end{center}

    \vspace*{96pt}

    \begin{center}
        \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
        \abntex@ifnotempty{\imprimirsubtitulo}
	{%
        	{\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}
        }
    \end{center}

    \vspace*{60pt}

    \abntex@ifnotempty{\imprimirpreambulo}
    {%
        \SingleSpacing
        \begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
            & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
            \abntex@ifnotempty{\imprimirareaconcentracao}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirlinhapesquisa}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirorientador}
            {%
                & \small\imprimirorientadorRotulo & \imprimirorientador \\
                & & \small\imprimirinstOrientador \\ & & \\
            }
            \abntex@ifnotempty{\imprimircoorientador}
            {%
                & \small\imprimircoorientadorRotulo & \imprimircoorientador \\
                & & \small\imprimirinstCoorientador
            }
        \end{tabular}
    }

    \vspace*{\fill}

    \begin{center}
	\begin{SingleSpacing}
            \large\MakeUppercase{\imprimirlocal}\\
            \large\MakeUppercase{\imprimirdata}
	\end{SingleSpacing}
    \end{center}
}
\makeatother




