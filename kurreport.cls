\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kurreport}[2017/05/22 A report template]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions*
\LoadClass{report}

\RequirePackage{mathtext}
\RequirePackage[utf8]{inputenc}
\usepackage[english,russian]{babel}
\RequirePackage{indentfirst}
\RequirePackage{misccorr}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{luatextra}
\setmainfont{Times New Roman}
\setmonofont{Courier New}

\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage[abspath]{currfile}
\RequirePackage{lastpage}
\RequirePackage{everypage}
\RequirePackage{marvosym}

%\ExecuteOptions{letterpaper,10pt,oneside,onecolumn,final,openany}
\tikzset{
  report black/.style={
    color=black,
  },
  report frame/.style={
    thick,
    report black,
	line width=.7mm,
  },
  report thin/.style={
    thick,
    report black,
  },
}

\AtBeginDocument{}

\AddEverypageHook{%
	\ifnum\value{page}>1
		\ifnum\value{page}<3
			\begin{tikzpicture}[remember picture, overlay]
				\coordinate (top left)     at ($ (current page.north west) + (2cm,  -.5cm) $);
				\coordinate (top right)    at ($ (current page.north east) + (-.5cm, -.5cm) $);
				\coordinate (bottom left)  at ($ (current page.south west) + (2cm,  .5cm) $);
				\coordinate (bottom right) at ($ (current page.south east) + (-.5cm, .5cm) $);%
				%plases
				\node [report black] at ($ (bottom left) + (13cm, 3.16cm) $) {\large{\@title}};
				\node [report black] at ($ (bottom left) + (0cm, 27.1mm) $) [right] {Изм.};
				\node [report black] at ($ (bottom left) + (1cm, 27.1mm) $) [right] {Лист};
				\node [report black] at ($ (bottom left) + (2.5cm, 27mm) $) [right] {\No докум.};
				\node [report black] at ($ (bottom left) + (4.5cm, 27.1mm) $) [right] {Подпись};
				\node [report black] at ($ (bottom left) + (6cm, 27.1mm) $) [right] {Дата};
				\node [report black] at ($ (bottom right) + (-4.7cm, 22mm) $) [right] {Лит.};
				\node [report black] at ($ (bottom right) + (-3.3cm, 22mm) $) [right] {Лист};
				\node [report black] at ($ (bottom right) + (-2.8cm, 17mm) $) {\large{\thepage}};%
				\node [report black] at ($ (bottom right) + (-1.6cm, 22mm) $) [right] {Листов};
				\node [report black] at ($ (bottom right) + (-1.0cm, 17mm) $) {\large{\pageref{LastPage}}};%
				%borders
				\draw[report frame]
					(bottom right) --
					(top right) --
					(top left) --
					(bottom left) --
					(bottom right) --
					(top right);
				\draw[report frame]
					($ (bottom left) + (0cm, 40mm) $) --
					($ (bottom right) + (0cm, 40mm) $);
				\draw[report frame]
					($ (bottom left) + (0cm, 25mm) $) --
					($ (bottom right) + (0cm, 25mm) $);
				\draw[report frame]
					($ (bottom left) + (1cm, 25mm) $) --
					($ (bottom left) + (1cm, 40mm) $);
				\draw[report frame]
					($ (bottom left) + (2cm, 0mm) $) --
					($ (bottom left) + (2cm, 40mm) $);
				\draw[report frame]
					($ (bottom left) + (4.5cm, 0mm) $) --
					($ (bottom left) + (4.5cm, 40mm) $);
				\draw[report frame]
					($ (bottom left) + (6cm, 0mm) $) --
					($ (bottom left) + (6cm, 40mm) $);
				\draw[report frame]
					($ (bottom left) + (7cm, 0mm) $) --
					($ (bottom left) + (7cm, 40mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 30mm) $) --
					($ (bottom left) + (7cm, 30mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 35mm) $) --
					($ (bottom left) + (7cm, 35mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 25mm) $) --
					($ (bottom left) + (7cm, 25mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 20mm) $) --
					($ (bottom left) + (7cm, 20mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 15mm) $) --
					($ (bottom left) + (7cm, 15mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 10mm) $) --
					($ (bottom left) + (7cm, 10mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 5mm) $) --
					($ (bottom left) + (7cm, 5mm) $);
				\draw[report frame]
					($ (bottom right) + (-5cm, 0mm) $) --
					($ (bottom right) + (-5cm, 25mm) $);
				\draw[report frame]
					($ (bottom right) + (-3.5cm, 15mm) $) --
					($ (bottom right) + (-3.5cm, 25mm) $);
				\draw[report frame]
					($ (bottom right) + (-2cm, 15mm) $) --
					($ (bottom right) + (-2cm, 25mm) $);
				\draw[report frame]
					($ (bottom right) + (-5cm, 15mm) $) --
					($ (bottom right) + (0cm, 15mm) $);
				\draw[report frame]
					($ (bottom right) + (-5cm, 20mm) $) --
					($ (bottom right) + (0cm, 20mm) $);
				\draw[report thin]
					($ (bottom right) + (-4.5cm, 15mm) $) --
					($ (bottom right) + (-4.5cm, 20mm) $);
				\draw[report thin]
					($ (bottom right) + (-4.0cm, 15mm) $) --
					($ (bottom right) + (-4.0cm, 20mm) $);
				\draw[report thin]
					($ (bottom right) + (-3.5cm, 15mm) $) --
					($ (bottom right) + (-3.5cm, 20mm) $);
			\end{tikzpicture}
		\fi
	\fi
}

\newcommand\BGfrom[1]{%
	\AddEverypageHook{%
		\ifnum\value{page}>2
			\begin{tikzpicture}[remember picture, overlay]
				\coordinate (top left)     at ($ (current page.north west) + (2cm,  -.5cm) $);
				\coordinate (top right)    at ($ (current page.north east) + (-.5cm, -.5cm) $);
				\coordinate (bottom left)  at ($ (current page.south west) + (2cm,  .5cm) $);
				\coordinate (bottom right) at ($ (current page.south east) + (-.5cm, .5cm) $);%
				%plases
				\node [report black] at ($ (bottom left) + (12cm, .7cm) $) {\large{\@title}};
				\node [report black] at ($ (bottom right) + (-1cm, 1.2cm) $) [right] {Лист};
				\node [report black] at ($ (bottom right) + (-5mm, 4mm) $) {\large{\thepage}};
				\node [report black] at ($ (bottom left) + (0cm, .25cm) $) [right] {Изм.};
				\node [report black] at ($ (bottom left) + (1cm, .25cm) $) [right] {Лист};
				\node [report black] at ($ (bottom left) + (2.5cm, .2cm) $) [right] {\No докум.};
				\node [report black] at ($ (bottom left) + (4.5cm, .25cm) $) [right] {Подпись};
				\node [report black] at ($ (bottom left) + (6cm, .25cm) $) [right] {Дата};%
				%borders
				\draw[report frame]
					(bottom right) --
					(top right) --
					(top left) --
					(bottom left) --
					(bottom right) --
					(top right);
				\draw[report frame]
					($ (bottom left) + (0cm, 15mm) $) --
					($ (bottom right) + (0cm, 15mm) $);
				\draw[report frame]
					($ (bottom left) + (1cm, 0mm) $) --
					($ (bottom left) + (1cm, 15mm) $);
				\draw[report frame]
					($ (bottom left) + (2cm, 0mm) $) --
					($ (bottom left) + (2cm, 15mm) $);
				\draw[report frame]
					($ (bottom left) + (4.5cm, 0mm) $) --
					($ (bottom left) + (4.5cm, 15mm) $);
				\draw[report frame]
					($ (bottom left) + (6cm, 0mm) $) --
					($ (bottom left) + (6cm, 15mm) $);
				\draw[report frame]
					($ (bottom left) + (7cm, 0mm) $) --
					($ (bottom left) + (7cm, 15mm) $);
				\draw[report frame]
					($ (bottom right) + (-1cm, 0mm) $) --
					($ (bottom right) + (-1cm, 15mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 5mm) $) --
					($ (bottom left) + (7cm, 5mm) $);
				\draw[report thin]
					($ (bottom left) + (0cm, 10mm) $) --
					($ (bottom left) + (7cm, 10mm) $);
				\draw[report thin]
					($ (bottom right) + (0cm, 10mm) $) --
					($ (bottom right) + (-1cm, 10mm) $);
			\end{tikzpicture}
		\fi
	}
}

\pagestyle{empty}
\RequirePackage[left=3cm,right=1cm,
    top=1.5cm,bottom=2cm,bindingoffset=0cm]{geometry}
