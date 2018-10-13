\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab}
\ProcessOptions\relax

\LoadClass[a4paper, 12pt]{article}		% Добавить leqno в [] для нумерации слева
\RequirePackage{cmap}				% Поиск в PDF
\RequirePackage{mathtext}			% Русские буквы в формулах
\RequirePackage[T2A]{fontenc}			% Кодировка
\RequirePackage[utf8]{inputenc}		% Кодировка исодного текста
\RequirePackage[english, russian]{babel}	% Локализация и переносы

% AMS-LaTeX & math
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{cancel}
\RequirePackage{mathrsfs}
\RequirePackage{icomma}		% Умная запятая

% Показывать номера только у тех формул, на которые есть \eqref{} в тексте
\mathtoolsset{showonlyrefs=true}

%% Перенос знаков в формулах (по Львовскому)
\newcommand*{\hm}[1]{#1\nobreak\discretionary{}
	{\hbox{$\mathsurround=0pt #1$}}{}}

% Разметка
\RequirePackage [hcentering,
	bindingoffset = 10mm,
	right = 20 mm,
	left = 20 mm,
	top=20 mm,
	bottom = 20 mm,
	footskip = 10 mm,
	includefoot] {geometry}
\RequirePackage[unicode]{hyperref}
\setlength{\parskip}{0.5em}
\setlength{\parindent}{0em}

% Графика
\RequirePackage{graphicx}	% Для вставки рисунков
\graphicspath{{images/}}		% Папки с картинками
\setlength\fboxsep{3pt}		% Отступ рамки \fbox{} от рисунка
\setlength\fboxrule{1pt}		% Толщина линий рамки \fbox{}
\RequirePackage{color}
\RequirePackage{float}
\RequirePackage{wrapfig}

% Таблицы
\RequirePackage{array,tabularx,tabulary,booktabs}		% Дополнительная работа с таблицами
\RequirePackage{longtable}					% Длинные таблицы
\RequirePackage{multirow}					% Слияние строк в таблице
\newcommand{\RomanNumeralCaps}[1]
	{\MakeUppercase{\romannumeral #1}}

\RequirePackage{pgfplots, pgfplotstable}
\pgfplotsset{compat=1.9}

\RequirePackage{circuitikz}	% Electrical networks

% Нумерация страниц
% \RequirePackage{fancyref}
% \RequirePackage{fancyhdr}
% \pagestyle{fancy}
% \fancyhf{}
% \renewcommand{\headrulewidth}{0pt}
% \renewcommand{\footrulewidth}{0pt}
% \fancyfoot[C]{\texttt{-~\thepage~-}}

\RequirePackage{mathtext}				% русские буквы в фомулах
\RequirePackage[T2A]{fontenc}				% кодировка
\RequirePackage[utf8]{inputenc}			% кодировка исходного текста
