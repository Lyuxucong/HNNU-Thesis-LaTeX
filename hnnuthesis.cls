\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hnnuthesis}[2026/10/24 HNNU graduate thesis]
\newif\ifhnnu@humanities
\DeclareOption{humanities}{\hnnu@humanitiestrue}
\DeclareOption{science}{\hnnu@humanitiesfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{science}
\ProcessOptions\relax
\LoadClass[UTF8,a4paper,12pt,twoside,openright,zihao=-4]{ctexbook}
\RequirePackage{array}
\usepackage{graphicx}

% ==========================================
% 图表标题格式设置
% ==========================================
\RequirePackage{caption}

\captionsetup[figure]{
    font=small,
    labelsep=space,
    justification=centering,
    singlelinecheck=false,
    skip=6pt
}

% 中英文图片标题
\newcommand{\bicaption}[2]{%
    \caption{#1}%
    \par\vspace{2pt}%
    {\centering
     \fontsize{10.5pt}{12pt}\selectfont
     \rmfamily
     Fig.~\thefigure\hspace{0.5em}#2\par}%
}

% 中英文表格标题
\newcommand{\bitablecaption}[2]{%
    \caption{#1}%
    \par\vspace{2pt}%
    {\centering
     \fontsize{10.5pt}{12pt}\selectfont
     \rmfamily
     Tab.~\thetable\hspace{0.5em}#2\par}%
}

% ==========================================
% 参考文献格式设置（BibTeX + natbib）
% ==========================================
\RequirePackage[sort&compress]{gbt7714}

\bibliographystyle{gbt7714-numerical}

% 引用采用方括号、上标、排序压缩格式
\setcitestyle{numbers,square,super,sort&compress}

% 参考文献条目间距
\setlength{\bibsep}{0pt}




\RequirePackage{geometry}
\geometry{top=3cm,bottom=2.5cm,left=2.5cm,right=2.5cm,headsep=.8cm,headheight=14pt,footskip=.75cm,bindingoffset=0cm}
\RequirePackage{fontspec}
\setCJKmainfont{FandolSong-Regular.otf}
\setCJKsansfont{FandolHei-Regular.otf}
% 全文拉丁文字优先 Times New Roman；若系统未安装，使用同度量替代。
\IfFontExistsTF{Times New Roman}{%
  \setmainfont{Times New Roman}%
  \newfontfamily\hnnucoverTimes{Times New Roman}%
}{%
  \setmainfont{Liberation Serif}%
  \newfontfamily\hnnucoverTimes{Liberation Serif}%
}
\RequirePackage{setspace,fancyhdr,graphicx,booktabs,longtable,array,amsmath,amssymb,caption,etoolbox,tocloft}
\RequirePackage{hyperref}
\hypersetup{hidelinks,unicode=true}
\setstretch{1.5}
\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\newcommand\HNNUtitle{示例论文题目}
\newcommand\HNNUenglishtitle{EXAMPLE THESIS TITLE}
\newcommand\HNNUauthor{张三}
\newcommand\HNNUstudentid{2026000000}
\newcommand\HNNUclassification{G40}
\newcommand\HNNUmajor{示例专业}
\newcommand\HNNUdirection{示例研究方向}
\newcommand\HNNUdegree{（学术学位）}
\newcommand\HNNUdegreecategory{理学}
\newcommand\HNNUlevel{硕士}
\newcommand\HNNUsupervisor{李四教授}
\newcommand\HNNUdate{二零二六年五月}
\newcommand\HNNUdateArabic{2026年5月}
\newcommand\HNNUkeywords{关键词一；关键词二；关键词三}
\newcommand\HNNUenkeywords{keyword one, keyword two, keyword three}
% English title-page metadata, independent from Chinese cover fields.
\newcommand\HNNUenglishdegree{Doctor of Science}
\newcommand\HNNUenglishauthor{Zhang San}
\newcommand\HNNUenglishsupervisor{Prof. Li Si}
\newcommand\HNNUenglishdate{June, 2026}

\newcommand\hnnusetup[1]{\setkeys{hnnu}{#1}}
\RequirePackage{keyval}
\define@key{hnnu}{title}{\renewcommand\HNNUtitle{#1}}
\define@key{hnnu}{englishtitle}{\renewcommand\HNNUenglishtitle{#1}}
\define@key{hnnu}{author}{\renewcommand\HNNUauthor{#1}}
\define@key{hnnu}{studentid}{\renewcommand\HNNUstudentid{#1}}
\define@key{hnnu}{classification}{\renewcommand\HNNUclassification{#1}}
\define@key{hnnu}{major}{\renewcommand\HNNUmajor{#1}}
\define@key{hnnu}{direction}{\renewcommand\HNNUdirection{#1}}
\define@key{hnnu}{degree}{\renewcommand\HNNUdegree{#1}}
\define@key{hnnu}{degreecategory}{\renewcommand\HNNUdegreecategory{#1}}
\define@key{hnnu}{level}{\renewcommand\HNNUlevel{#1}}
\define@key{hnnu}{supervisor}{\renewcommand\HNNUsupervisor{#1}}
\define@key{hnnu}{date}{\renewcommand\HNNUdate{#1}}
\define@key{hnnu}{dateArabic}{\renewcommand\HNNUdateArabic{#1}}
\define@key{hnnu}{keywords}{\renewcommand\HNNUkeywords{#1}}
\define@key{hnnu}{enkeywords}{\renewcommand\HNNUenkeywords{#1}}
\define@key{hnnu}{englishdegree}{\renewcommand\HNNUenglishdegree{#1}}
\define@key{hnnu}{englishauthor}{\renewcommand\HNNUenglishauthor{#1}}
\define@key{hnnu}{englishsupervisor}{\renewcommand\HNNUenglishsupervisor{#1}}
\define@key{hnnu}{englishdate}{\renewcommand\HNNUenglishdate{#1}}
%一级标题段前与段后设置
\ctexset{chapter={format=\centering\heiti\zihao{3},beforeskip=0.5\baselineskip,afterskip=2\baselineskip},section={format=\centering\heiti\zihao{-3},beforeskip=.5\baselineskip,afterskip=.5\baselineskip},subsection={format=\heiti\zihao{4},beforeskip=.5\baselineskip,afterskip=.5\baselineskip},subsubsection={format=\songti\bfseries\zihao{-4}}}
\ctexset{
    chapter = {
        aftername = \hspace{0.5em}
    },
    section = {
        aftername = \hspace{0.5em}
    }
}
\ifhnnu@humanities
 \ctexset{chapter={name={第,章},number=\chinese{chapter}},section={name={第,节},number=\chinese{section},format=\centering\heiti\zihao{-3}},subsection={number=\chinese{subsection},format=\heiti\zihao{4}}}
\else
 \ctexset{chapter={name={},number=\arabic{chapter}},section={number=\thechapter.\arabic{section},format=\centering\heiti\zihao{-3}},subsection={number=\thesection.\arabic{subsection}}}
\fi
\renewcommand\thefigure{\thechapter-\arabic{figure}}
\renewcommand\thetable{\thechapter-\arabic{table}}
\renewcommand\theequation{\thechapter-\arabic{equation}}
\captionsetup{font={small},labelsep=space,justification=centering}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\cftchapfont{\heiti\zihao{-4}\normalfont\heiti}
\renewcommand\cftsecfont{\songti\zihao{-4}}
\renewcommand\cftsubsecfont{\songti\zihao{-4}}
\setlength{\cftsecindent}{1em}
\setlength{\cftsubsecindent}{2em}
\setlength{\cftchapnumwidth}{1.5em}
\setlength{\cftsecnumwidth}{1.5em}
\setlength{\cftsubsecnumwidth}{1.5em}
\setlength{\cftbeforechapskip}{0pt}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
% 目录标题至页码使用连续点引导线，取消额外段间距。
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftdotsep}{1.5}
\renewcommand{\cftchappagefont}{\normalfont\zihao{-4}}
\renewcommand{\cftsecpagefont}{\normalfont\zihao{-4}}
\renewcommand{\cftsubsecpagefont}{\normalfont\zihao{-4}}
\renewcommand\contentsname{目\quad 录}
% tocloft 标题独立控制，不能仅依靠 ctex 的 chapter 标题格式。
\renewcommand{\cfttoctitlefont}{\hfill\heiti\mdseries\zihao{3}}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{2\baselineskip}
% 前置部分：不显示页眉，页脚仍保留外侧页码。
\fancypagestyle{hnnufront}{%
  \fancyhf{}\fancyfoot[LE,RO]{\thepage}%
  \renewcommand\headrulewidth{0pt}}
% 正文及后置部分：奇数页一级标题，偶数页论文题目；均居中。
\fancypagestyle{hnnu}{%
  \fancyhf{}%
  \fancyhead[CE]{\songti\mdseries\zihao{5}\HNNUtitle}%
  \fancyhead[CO]{\songti\mdseries\zihao{5}\nouppercase{\leftmark}}%
  \fancyfoot[LE,RO]{\thepage}%
  \renewcommand\headrulewidth{0.4pt}}
% chapter 首页默认使用 plain；进入正文后自动改为同样的页眉。
\fancypagestyle{plain}{%
  \fancyhf{}\fancyfoot[LE,RO]{\thepage}%
  \renewcommand\headrulewidth{0pt}}
\newcommand\hnnufrontmatter{\cleardoublepage\frontmatter\pagestyle{hnnufront}\pagenumbering{Roman}}
\newcommand\hnnumainmatter{%
  \cleardoublepage\mainmatter
  \let\ps@plain\ps@hnnu
  \pagestyle{hnnu}\pagenumbering{arabic}}
% 目录必须独立起页，目录行距 1.5 倍，段前后均为零。
\newcommand\hnnutableofcontents{%
  \cleardoublepage
  \begingroup
    \setstretch{1.5}%
    \setlength{\parskip}{0pt}%
    \tableofcontents
  \endgroup
  \cleardoublepage}
\newcommand\hnnuchapter[1]{\chapter*{#1}\markboth{#1}{#1}\addcontentsline{toc}{chapter}{#1}}
% Cover rebuilt from the user-provided screenshot. A4 coordinates measured from top-left.
% University calligraphy is a cropped image from the user's screenshot, NOT a font.
\RequirePackage{tikz}
% Cover positions are measured from the top-left A4 paper corner.
% Fonts: use local Windows FangSong/SimSun/SimHei when installed; Noto substitutes otherwise.
\RequirePackage{tikz}
% Portable fonts available in standard TeX Live / Overleaf.
% For exact university-required fonts, replace these with licensed font files.
\newCJKfontfamily\hnnufangsong{FandolFang-Regular.otf}
\newCJKfontfamily\hnnucoverSong[AutoFakeBold=2]{FandolSong-Regular.otf}
\newCJKfontfamily\hnnucoverHei[AutoFakeBold=2]{FandolHei-Regular.otf}
% Times 字体已在类文件开头统一定义。
% Doctor title: 18.4 pt added kerning (twice previous 9.2 pt); academic subtitle: 4.35 pt.
\newcommand\hnnudoctorletters{博\kern18.4pt 士\kern18.4pt 学\kern18.4pt 位\kern18.4pt 论\kern18.4pt 文}
\newcommand\hnnuacademicletters{\HNNUdegree}
\newcommand\hnnucoverlabel[1]{\makebox[41mm][s]{#1}}
\newcommand\hnnumakecover{%
  \pagestyle{empty}%
  \begin{titlepage}\thispagestyle{empty}\null
  \begin{tikzpicture}[remember picture,overlay,x=1mm,y=1mm]
  \coordinate (NW) at (current page.north west);
  % Three-row classification table: shifted left 1.5 mm from previous placement.
  \node[anchor=north west,inner sep=0pt] at ([xshift=21.5mm,yshift=-27mm]NW) {%
    \begingroup\setlength{\tabcolsep}{0pt}\renewcommand{\arraystretch}{1}%
    \begin{tabular}{|>{\centering\arraybackslash}m{24mm}|>{\centering\arraybackslash}m{30mm}|}\hline
      \rule[-3.8mm]{0pt}{8.1mm}{\hnnufangsong\zihao{-4}\makebox[22mm][s]{单位代码}} & {\hnnucoverTimes\fontsize{12}{14}\selectfont 10476}\\\hline
      \rule[-3.8mm]{0pt}{8.1mm}{\hnnufangsong\zihao{-4}\makebox[22mm][s]{学号}} & {\hnnucoverTimes\fontsize{12}{14}\selectfont \HNNUstudentid}\\\hline
      \rule[-3.8mm]{0pt}{8.1mm}{\hnnufangsong\zihao{-4}\makebox[22mm][s]{分类号}} & {\hnnucoverTimes\fontsize{12}{14}\selectfont \HNNUclassification}\\\hline
    \end{tabular}\endgroup};
  % School calligraphy (moved up 1.5 mm).
  \node[anchor=center,inner sep=0pt] at ([xshift=105mm,yshift=-76mm]NW) {\includegraphics[width=86mm]{hnnu-calligraphy.png}};
  \node[anchor=center,inner sep=0pt] at ([xshift=105mm,yshift=-100mm]NW) {{\hnnucoverSong\bfseries\fontsize{45}{55}\selectfont\hnnudoctorletters}};
  \node[anchor=center,inner sep=0pt] at ([xshift=105mm,yshift=-116mm]NW) {{\hnnucoverSong\bfseries\fontsize{22}{30}\selectfont\hnnuacademicletters}};

% 论文题目：水平压缩至原宽度的 90%
% 封面论文题目：水平压缩、手动换行、两行居中
\node[anchor=north,inner sep=0pt]
at ([xshift=105mm,yshift=-142mm]NW)
{%
  \scalebox{1.0}[1]{%
    \begingroup
    \hnnucoverHei\bfseries
    \fontsize{18}{21}\selectfont
    \def\HNNUtitlebreak{\\[-3pt]}%
    \begin{tabular}{@{}c@{}}
      \HNNUtitle
    \end{tabular}%
    \endgroup
  }%
};
  % Labels have a fixed 41 mm width with distributed glyph spacing.
  \node[anchor=north west,inner sep=0pt] at ([xshift=62mm,yshift=-190mm]NW) {\begingroup\hnnucoverHei\fontsize{15}{22.5}\selectfont
    \renewcommand{\arraystretch}{0.82}\begin{tabular}{@{}l@{\hspace{3mm}}l@{}}
    \hnnucoverlabel{学科、专业：} & \HNNUmajor\\
    \hnnucoverlabel{研究方向：} & \HNNUdirection\\
    \hnnucoverlabel{申请学位类别：} & \HNNUdegreecategory\\
    \hnnucoverlabel{作者姓名：} & \HNNUauthor\\
    \hnnucoverlabel{指导教师：} & \HNNUsupervisor
    \end{tabular}\endgroup};
  \node[anchor=center,inner sep=0pt] at ([xshift=105mm,yshift=-256mm]NW) {{\hnnucoverHei\fontsize{15}{22}\selectfont\HNNUdate}};
  \end{tikzpicture}\end{titlepage}}
% English title page, based on the supplied reference screenshot.
% Absolute coordinates are measured from the upper-left A4 corner.
% The screenshot's Word formatting marks are intentionally omitted.
\newcommand\hnnutitlepage{%
  \begin{titlepage}\thispagestyle{empty}\null
  \begin{tikzpicture}[remember picture,overlay,x=1mm,y=1mm]
    \coordinate (ENW) at (current page.north west);
    % Title: 18 pt, regular, single line spacing.
    \node[anchor=north,inner sep=0pt,text width=158mm,align=center]
      at ([xshift=105mm,yshift=-42mm]ENW)
      {{\hnnucoverTimes\fontsize{18}{18}\selectfont
        \MakeUppercase{\HNNUenglishtitle}\par}};
    % Submission statement: 15 pt, 1.5 line spacing.
    \node[anchor=north,inner sep=0pt,text width=175mm,align=center]
      at ([xshift=105mm,yshift=-112mm]ENW)
      {{\hnnucoverTimes\fontsize{15}{22.5}\selectfont
        A Dissertation Submitted to\\
        the Graduate School of Henan Normal University\\
        in Partial Fulfillment of the Requirements\\
        for the Degree of\\
        \HNNUenglishdegree\par}};
    % Bottom information: 15 pt, 1.5 line spacing.
    \node[anchor=north,inner sep=0pt,text width=170mm,align=center]
      at ([xshift=105mm,yshift=-198mm]ENW)
      {{\hnnucoverTimes\fontsize{15}{22.5}\selectfont
        By\\
        \textit{\HNNUenglishauthor}\\
        Supervisor: \HNNUenglishsupervisor\\
        Date: \HNNUenglishdate\par}};
  \end{tikzpicture}
  \end{titlepage}
}
\newcommand\hnnudoctorabstractcover{\begin{titlepage}\thispagestyle{empty}\centering\begin{flushleft}单位代码\quad10476\\学\qquad 号\quad\HNNUstudentid\\分\ 类\ 号\quad\HNNUclassification\end{flushleft}\vspace{1.6cm}{\heiti\zihao{0}河南师范大学\par}\vspace{.8cm}{\heiti\zihao{1}博士学位论文摘要\par}\vspace{.4cm}{\heiti\zihao{3}\HNNUdegree\par}\vspace{.5cm}{\heiti\zihao{3}\HNNUtitle\par}\vfill\begin{tabular}{rl}学科、专业：&\HNNUmajor\\[1.5em]研究方向：&\HNNUdirection\\[1.5em]申请学位类别：&\HNNUdegree\\[1.5em]作者姓名：&\HNNUauthor\\[1.5em]指导教师：&\HNNUsupervisor\end{tabular}\vfill\end{titlepage}}
\newenvironment{hnnuabstract}{\cleardoublepage\hnnuchapter{摘\quad 要}\begingroup\songti\zihao{-4}\setstretch{1.5}}{\par\vspace{\baselineskip}\noindent{\heiti 关键词：}{\songti\HNNUkeywords}\par\endgroup}
\newenvironment{hnnuenglishabstract}{\cleardoublepage\begingroup\let\heiti\bfseries\hnnuchapter{ABSTRACT}\endgroup\begingroup\rmfamily\zihao{5}\setstretch{2}\setlength{\parindent}{4em}}{\par\vspace{\baselineskip}\noindent\textbf{KEY WORDS: }\HNNUenkeywords\par\endgroup}
\newcommand\hnnuacknowledgements[1]{\cleardoublepage\hnnuchapter{致\quad 谢}#1\par\vspace{2\baselineskip}\begin{flushright}\HNNUauthor\\\HNNUdateArabic\end{flushright}}
\newcommand\hnnupublications[1]{\cleardoublepage\hnnuchapter{攻读学位期间发表的学术论文目录}#1}
% 两份声明严格排在同一页；手写签名处保留空白。
\newcommand\hnnudeclarations{%
  \cleardoublepage
  \thispagestyle{hnnu}%
  \markboth{独 创 性 声 明}{独 创 性 声 明}%
  \phantomsection\addcontentsline{toc}{chapter}{独 创 性 声 明}%
  \begingroup
  \songti\zihao{-4}\setstretch{1.5}\setlength{\parindent}{2em}%
  \vspace*{0pt}%

  % ========================================
  % 独创性声明
  % ========================================
  \begin{center}
    {\heiti\bfseries\zihao{3}独\quad 创\quad 性\quad 声\quad 明\par}
  \end{center}%

  \vspace{\baselineskip}%

  % 正文首行强制缩进两个汉字
  \noindent\hspace*{2em}%
  本人郑重声明：所呈交的学位论文是我个人在导师指导下进行的研究工作及取得的研究成果。尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写的研究成果，也不包含为获得河南师范大学或其他教育机构的学位或证书所使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。\par

  \vspace{1.5\baselineskip}%

  \noindent\hfill 作者签名：\rule{27mm}{0.35pt}\quad 日期：\rule{27mm}{0.35pt}\par

  \vspace{2.2\baselineskip}%

  % ========================================
  % 关于论文使用授权的说明
  % ========================================
  \phantomsection\addcontentsline{toc}{chapter}{关于论文使用授权的说明}%
  \markboth{关于论文使用授权的说明}{关于论文使用授权的说明}%

  \begin{center}
    {\heiti\bfseries\zihao{3}关于论文使用授权的说明\par}
  \end{center}%

  \vspace{\baselineskip}%

  % 正文首行强制缩进两个汉字
  \noindent\hspace*{2em}%
  本人完全了解河南师范大学有关保留、使用学位论文的规定，即：有权保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权河南师范大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。{\bfseries（保密的学位论文在解密后适用本授权书）}\par

  \vspace{1.5\baselineskip}%

  \noindent 作者签名：\rule{22mm}{0.35pt}\hfill 导师签名：\rule{22mm}{0.35pt}\hfill 日期：\rule{22mm}{0.35pt}\par

  \endgroup
}

\AtBeginDocument{\renewcommand\bibname{参考文献}}
