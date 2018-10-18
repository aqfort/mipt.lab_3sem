\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab}
\ProcessOptions

% \LoadClass[12pt, a4paper, twoside, final]{article}
\LoadClass[12pt, a4paper, final]{article}

\RequirePackage{cmap}				% Поиск в PDF
\RequirePackage[unicode]{hyperref}
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
\RequirePackage{icomma}				% Умная запятая

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

\RequirePackage{circuitikz}				% Electrical networks

\RequirePackage[justification=centering]{caption}

% Pagestyle
\RequirePackage{fancyhdr}
\fancypagestyle{VR}
{
	\pagestyle{empty}
	\pagestyle{fancy}					% Применим колонтитул
	% \lhead{{\small Ринат Валиев}}
	% \rhead{{\small 711 гр.}}
	\cfoot{--~\arabic{page}~--}
	\renewcommand{\headrulewidth}{0pt}	% Толщина отделяющей полоски сверху
	\footskip = 50pt
}

\parindent=0.5cm				% Абзац
\renewcommand{\arraystretch}{1.2}	% Таблицы красивее

\input{commands.cls}
