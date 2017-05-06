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
\ProvidesClass{abntex2-utfpr}[2017/04/25 v1.0 Modelo da UTFPR baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage{lmodern}			% Usa a fonte Latin Modern			
\RequirePackage[T1]{fontenc}		% Selecao de codigos de fonte.
\RequirePackage[utf8]{inputenc}		% Codificacao do documento (conversão automática dos acentos)

\RequirePackage{amsthm}
\RequirePackage{tikz,pgfplots}
\RequirePackage{datetime}



\RequirePackage{caption}
%\RequirePackage{etoolbox}
\RequirePackage{layouts}

% Manipulação de Strings
\RequirePackage{xstring}

% Fonte 'Times New Roman'
\RequirePackage{mathptmx}

% Identação do primeiro paragráfo
\RequirePackage{indentfirst}

\RequirePackage{hyperref}


% Número da última página
\RequirePackage{lastpage}


\RequirePackage{color}				% Controle das cores
\RequirePackage{graphicx}			% Inclusão de gráficos
\RequirePackage{microtype} 			% para melhorias de justificação

\RequirePackage{pdfpages}
\RequirePackage{fancyvrb}
\RequirePackage{rotating}
\RequirePackage{amsmath}		
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{pdflscape}
\RequirePackage{epstopdf}
\RequirePackage{multirow}
\RequirePackage{listings}
\RequirePackage{url} % Para incluir links
\RequirePackage{nomencl} % Pacote necessário para a lista de siglas.
\RequirePackage{mathcomp}
\RequirePackage{booktabs} % Para Tabelas
\RequirePackage{subfig}  % permite ter subfiguras
\RequirePackage{float}
\RequirePackage{siunitx} % A comprehensive (SI) units package
\RequirePackage{datetime}
\RequirePackage{rotating} % gives you the possibility to rotate any object of an arbitrary angle. 
\RequirePackage{pdflscape} % Rotação de páginas no documento pdf.
\RequirePackage{mdframed} % Customize the look of the frame

% ---
% Pacotes adicionais, usados apenas no âmbito do Modelo Canônico do abnteX2
% ---
\RequirePackage{lipsum}				% para geração de dummy text
% ---

\RequirePackage{tablefootnote}
\RequirePackage{longtable}
\RequirePackage{tocloft}



\RequirePackage{pgfgantt}

%Brazilian abbreviations  
\def\pgfcalendarweekdayletter#1{%  
	\ifcase#1S\or T\or Q\or Q\or S\or S\or D\fi%  
}  

%Brazilian abbreviations  
\def\pgfcalendarweekdayshortname#1{%  
	\ifcase#1Seg\or Ter\or Qua\or Qui\or Sex\or Sab\or Dom\fi%  
} 

%Brazilian abbreviations  
\def\pgfcalendarweekdayname#1{%  
	\ifcase#1Segunda\or Terça\or Quarta\or Quinta\or Sexta\or Sábado\or Domingo\fi%  
} 

%Brazilian abbreviations;  
\def\pgfcalendarmonthname#1{%  
	\ifcase#1 Dezembro \or Janeiro\or Fevereiro\or Março\or Abril\or Maio\or Junho\or Julho \or Agosto \or Setembro \or Outubro \or Novembro \or Dezembro\fi%  
}  


%Brazilian abbreviations;
\def\pgfcalendarmonthshortname#1{%  
	\ifcase#1 Dez \or Jan\or Fev\or Mar\or Abr\or Mai\or Jun\or Jul \or Ago \or Set \or Out \or Nov \or Dez\fi%  
}  




% --- 
% CONFIGURAÇÕES DE PACOTES
% --- 
\sisetup{detect-all}
\sisetup{scientific-notation = fixed, fixed-exponent = 0, round-mode = places,round-precision = 2,output-decimal-marker = {,} }
\DeclareSIUnit \VA {VA} %apparent power

% Definição de cores
\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}

\definecolor{figcolor}{rgb}{0,0,0}  % black
\definecolor{tabcolor}{rgb}{0,0,0}  % black
\definecolor{eqncolor}{rgb}{0,0,0}  % black
\definecolor{seccolor}{rgb}{0,0,0}  % black
\definecolor{abscolor}{rgb}{0,0,0}  % black
\definecolor{linkcolor}{rgb}{0,0,0}  % black
\definecolor{citecolor}{rgb}{0,0,0}  % black
\definecolor{titlecolor}{rgb}{0,0,0}  % black
\definecolor{biocolor}{rgb}{0,0,0}  % black

	

\lstset{ %
	aboveskip=3mm,
	belowskip=3mm,
	backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
	basicstyle={\small\ttfamily},    % the size of the fonts that are used for the code
	breakatwhitespace=true,          % sets if automatic breaks should only happen at whitespace
	breaklines=true,                 % sets automatic line breaking
	captionpos=t,                    % sets the caption-position to bottom
	commentstyle=\color{mygreen},    % comment style
	columns=flexible,
	deletekeywords={...},            % if you want to delete keywords from the given language
	escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
	extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
	frame=tb,                        % adds a frame around the code
	keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
	keywordstyle=\color{blue},       % keyword style
	language=Matlab,                 % the language of the code
	morekeywords={*,...},            % if you want to add more keywords to the set
	numbers=none,                    % where to put the line-numbers; possible values are (none, left, right)
	numbersep=5pt,                   % how far the line-numbers are from the code
	numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
	rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
	showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
	showstringspaces=false,          % underline spaces within strings only
	showtabs=false,                  % show tabs within strings adding particular underscores
	stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
	stringstyle=\color{mymauve},     % string literal style
	tabsize=3,                       % sets default tabsize to 3 spaces
	texcl=true,						 % Permite o uso de acentuação no código
	title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

%By default, listings does not support multi-byte encoding for source code. The extendedchar option only works for 8-bits encodings such as latin1.
%
%To handle UTF-8, you should tell listings how to interpret the special characters by defining them like so
\lstset{literate=	
	{á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
	{Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
	{à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
	{À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
	{ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
	{Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
	{â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
	{Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1	 
	{œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
	{ű}{{\H{u}}}1 {Ű}{{\H{U}}}1 {ő}{{\H{o}}}1 {Ő}{{\H{O}}}1
	{ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
	{€}{{\EUR}}1 {£}{{\pounds}}1 {ã}{{\~a}}1 {õ}{{\~o}}1 {Ã}{{\~A}}1 {Õ}{{\~O}}1	
}




% Altera de sin e tan para sen e tg nas equações
\DeclareMathOperator{\sen}{sen}
\renewcommand{\sin}{\sen} 

\DeclareMathOperator{\tg}{tg}
\renewcommand{\tan}{\tg} 


% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% Comandos e ambientes de editoracao APENDICES e ANEXOS
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% ---




\renewenvironment{resumo}[1][\resumoname]{%
   \PRIVATEbookmarkthis{#1}
 %  \renewcommand{\abstractnamefont}{\chaptitlefont}
 %  \renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
  \pretextualchapter{#1}
  }{\PRIVATEclearpageifneeded}

  
% Imprime uma pagina de divisao no estilo parte
\renewcommand{\partpage}{%
  \cleardoublepage
 %\phantomsection
 % \addcontentsline{toc}{part}{\appendixtocname}%
  \appendixpage*
}

% ---
% Configura layout para elementos textuais
\renewcommand{\textual}{%
	\ifthenelse{\equal{\ABNTEXisarticle}{true}}{%
		\pagestyle{plain}%
		}{%else  
		\pagestyle{abntheadings}% Estilo original do Abntex2
		% \aliaspagestyle{chapter}{abntchapfirst}% customizing chapter pagestyle
		\aliaspagestyle{chapter}{empty} % Remove a numeração das páginas no início dos capítulos.
	}  
	\nouppercaseheads%
	\bookmarksetup{startatroot}% 
}

	
		
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
%\renewcommand{\sfdefault}{cmss} % Selects a sans serif font family
%\renewcommand{\ttdefault}{cmtt} % Selects a monospaced (typewriter) font family


\renewcommand{\ABNTEXpartfont}{\usefont{T1}{cmr}{bx}{n}} % Apendices, anexos...
\renewcommand{\ABNTEXpartfontsize}{\fontsize{15pt}{18pt}}

\renewcommand{\ABNTEXchapterfontsize}{\normalfont}
%\renewcommand{\ABNTEXchapterfont}{\usefont{T1}{cmr}{bx}{n}}
\renewcommand{\ABNTEXsectionfontsize}{\bfseries}
%\renewcommand{\ABNTEXsectionfont}{\usefont{T1}{lmss}{bx}{n}}
%\renewcommand{\ABNTEXsubsectionfont}{\usefont{T1}{cmr}{bx}{n}}
\renewcommand{\ABNTEXsubsectionfontsize}{\mdseries}
%\renewcommand{\ABNTEXsubsubsectionfont}{\usefont{T1}{cmr}{m}{n}}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\mdseries\itshape}
%\renewcommand{\ABNTEXsubsubsubsectionfont}{\usefont{T1}{cmr}{m}{it}}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalfont\itshape}





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


% Comandos de dados - Cita Autores
\providecommand{\imprimircitaautores}{}
\newcommand{\citaautores}[1]{\renewcommand{\imprimircitaautores}{#1}}

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Departamento em Inglês
\providecommand{\imprimirdepartamentoEng}{}
\newcommand{\departamentoEng}[1]{\renewcommand{\imprimirdepartamentoEng}{#1}}

% Comandos de dados - Programa em Inglês
\providecommand{\imprimirprogramaEng}{}
\newcommand{\programaEng}[1]{\renewcommand{\imprimirprogramaEng}{#1}}

% Comandos de dados - Instituição em Inglês
\providecommand{\imprimirinstituicaoEng}{}
\newcommand{\instituicaoEng}[1]{\renewcommand{\imprimirinstituicaoEng}{#1}}

% Comandos de dados - Titulo em inglês
\providecommand{\imprimirtituloEng}{}
\newcommand{\tituloEng}[1]{\renewcommand{\imprimirtituloEng}{#1}}

% Comandos de dados - Titulo em inglês
\providecommand{\imprimirtipotrabalhoEng}{}
\newcommand{\tipotrabalhoEng}[1]{\renewcommand{\imprimirtipotrabalhoEng}{#1}}

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



% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% Estilo de capítulos
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------

% % Custom settings
\makeatletter
\newcommand\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}

\makechapterstyle{VZ14}{
	%	\thispagestyle{empty}
\setlength\beforechapskip{0pt}
\setlength\midchapskip{15pt}
\setlength\afterchapskip{15pt}
	\renewcommand\chapternamenum{}
	\renewcommand\printchaptername{}
	\renewcommand\chapnamefont{\Huge\scshape}
	\renewcommand\printchapternum{%
		\chapnamefont\null\thickhrulefill\quad
		\@chapapp\space\thechapter\quad\thickhrulefill}
	\renewcommand\printchapternonum{%
		\par\thickhrulefill\par\vskip\midchapskip
		\hrule\vskip\midchapskip
	}
	\renewcommand\chaptitlefont{\huge\scshape\centering}
	\renewcommand\afterchapternum{%
		\par\nobreak\vskip\midchapskip\hrule\vskip\midchapskip}
	\renewcommand\afterchaptertitle{%
		\par\vskip\midchapskip\hrule\nobreak\vskip\afterchapskip}
}
	
\makeatother

% Veja outros estilos em:
% http://mirror.utexas.edu/ctan/info/latex-samples/MemoirChapStyles/MemoirChapStyles.pdf




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
	
	\abntex@ifnotempty{\imprimirautor}{\ArialDozeBold\MakeUppercase\imprimirautor\vspace{0.5em}\par}
	\abntex@ifnotempty{\imprimirautorA}{\ArialDozeBold\MakeUppercase\imprimirautorA\vspace{0.5em}\par}
	\abntex@ifnotempty{\imprimirautorB}{\ArialDozeBold\MakeUppercase\imprimirautorB\vspace{0.5em}\par}
	\abntex@ifnotempty{\imprimirautorC}{\ArialDozeBold\MakeUppercase\imprimirautorC}
       
				
		\vfill\vfill
		
		\ArialCatorzeBold\MakeUppercase\imprimirtitulo

		\vfill
				
		\abntex@ifnotempty{\imprimirpreambulo}{%
			\hspace{.4\textwidth}
			\begin{minipage}{8cm}				
				\SingleSpacing
					\imprimirpreambulo\\
														
				{\textbf{\imprimirorientadorRotulo}~\imprimirorientador\par}
				\abntex@ifnotempty{\imprimircoorientador}{%
					{\textbf{\imprimircoorientadorRotulo}~\imprimircoorientador}%
				}%				
			\end{minipage}%
			\vfill
		}%
		\vfill
		
		\ArialDozeBold\MakeUppercase\imprimirlocal
		\par
		\ArialDozeBold\MakeUppercase\imprimirdata
				
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
		\ArialDezeseisBold{\MakeUppercase{\imprimirinstituicao}}\vspace{0.5em}
		
	%	\ArialDezeseisBold\MakeUppercase{\imprimirdepartamento} \vspace{0.5em}
		
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


% -- 
% Solution from http://tex.stackexchange.com/questions/25105/unable-to-link-to-inserted-pages-with-pdfpages

\newcounter{includepdfpage}
\newcounter{currentpagecounter}
\newcommand{\addlabelstoallincludedpages}[1]{
	\refstepcounter{includepdfpage}
	\stepcounter{currentpagecounter}
	\label{#1.\thecurrentpagecounter}}
\newcommand{\modifiedincludepdf}[4]{
	\setcounter{currentpagecounter}{0}
	\includepdf[pages=#1,pagecommand=\addlabelstoallincludedpages{#2},scale=#4]{#3}}



\renewcommand{\lstlistingname}{Código--fonte }% Listing -> Codigo fonte
\renewcommand{\lstlistlistingname}{Lista de códigos--fonte}% List of Listings -> Lista de códigos-fonte
	
% http://tex.stackexchange.com/questions/228936/setting-entries-of-list-of-listings-in-latex-package-listings
\newlength\mylen

\begingroup
\makeatletter
\let\newcounter\@gobble\let\setcounter\@gobbletwo
\globaldefs\@ne \let\c@loldepth\@ne
\newlistof{listings}{lol}{\lstlistlistingname}
\newlistof{lstlistoflistings}{lol}{\lstlistlistingname}
\newlistentry{lstlisting}{lol}{0}
\makeatother
\endgroup

\renewcommand\cftlstlistingpresnum{\lstlistingname~}
\settowidth\mylen{\cftlstlistingpresnum\cftlstlistingaftersnum}
\addtolength\cftlstlistingnumwidth{\mylen} %
\renewcommand\cftlstlistingaftersnum{\hfill\textendash\hfill}
