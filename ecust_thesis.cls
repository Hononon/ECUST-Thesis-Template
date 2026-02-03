%==================================================
%% ecust_thesis.cls for ECUST Thesis
%% modified by han
%% last update：2026.01.29
%% 参考来源：
%% ecust_thesis.cls for ECUST Thesis
%% modified by song wenjiang
%% last update: 2021.05.31
%%==================================================

%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,mathrsfs}
% 直立希腊字母字体
\RequirePackage{upgreek}

\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{ecust_thesis}
[2026/01/29 v1.0 ecust_thesis document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\newif\ifECUST@master\ECUST@masterfalse
\newif\ifECUST@doctor\ECUST@doctorfalse
\newif\ifECUST@istwoside\ECUST@istwosidefalse
  \DeclareOption{twoside}{\ECUST@istwosidetrue}
  \DeclareOption{master}{\ECUST@mastertrue}
  \DeclareOption{doctor}{\ECUST@doctortrue}

  \ProcessOptions\relax
  \ifECUST@istwoside
    \LoadClass[zihao=-4,a4paper,twoside,openright,UTF8,space=auto,fontset=none]{ctexbook}
  \else
    \LoadClass[zihao=-4,a4paper,oneside,openany,UTF8,space=auto,fontset=none]{ctexbook}
  \fi

  %%
  %% 字体配置 - 使用 Windows 字体以获得更好的粗体支持
  %%
  \setCJKmainfont[
    Path = ./fonts/,
    Extension = .ttc,
    UprightFont = *,
    BoldFont = *
  ]{simsun}
  \setCJKsansfont[
    Path = ./fonts/,
    Extension = .ttf,
    UprightFont = *,
    BoldFont = *
  ]{simhei}
  \setCJKmonofont[
    Path = ./fonts/,
    Extension = .ttf,
    UprightFont = *,
    BoldFont = *
  ]{simfang}

  % 设置具体字体命令
  \setCJKfamilyfont{zhsong}[
    Path = ./fonts/,
    Extension = .ttc,
    UprightFont = *,
    BoldFont = *
  ]{simsun}
  \setCJKfamilyfont{zhhei}[
    Path = ./fonts/,
    Extension = .ttf,
    UprightFont = *,
    BoldFont = *
  ]{simhei}
  \setCJKfamilyfont{zhkai}[
    Path = ./fonts/,
    Extension = .ttf,
    UprightFont = *,
    BoldFont = *
  ]{simkai}
  \setCJKfamilyfont{zhfs}[
    Path = ./fonts/,
    Extension = .ttf,
    UprightFont = *,
    BoldFont = *
  ]{simfang}

  \setCJKfamilyfont{zhheadkaiti}[
    Path = ./fonts/,
    Extension = .ttf,
    UprightFont = *,
    BoldFont = *
  ]{STCuKai-SC}

  % ===== 宋体伪粗 =====
  \setCJKfamilyfont{zhsongbf}[
    Path = ./fonts/,
    Extension = .ttc,
    UprightFont = *,
    FakeBold = 3
  ]{simsun}

  \newcommand*{\songtibold}{\CJKfamily{zhsongbf}}
  \newcommand*{\songti}{\CJKfamily{zhsong}}
  \newcommand*{\heiti}{\CJKfamily{zhhei}}
  \newcommand*{\kaishu}{\CJKfamily{zhkai}}
  \newcommand*{\fangsong}{\CJKfamily{zhfs}}
  \newcommand{\headkaiti}{\CJKfamily{zhheadkaiti}}

  % ===== 宋体伪粗体命令 =====
  \renewcommand{\bfseries}{\songtibold}

  %%
  %% the setup of ctex package
  %%
  \def\CTEX@contentsname{目录}
  \def\CTEX@listfigurename{插图索引}
  \def\CTEX@listtablename{表格索引}


  \def\ECUST@label@abstract{摘要}
  \def\ECUST@label@englishabstract{Abstract}
  \def\ECUST@label@keywords{关键词:~}
  \def\ECUST@label@englishkeywords{Keywords:~}
  \def\ECUST@label@conclusion{结论}
  \def\ECUST@label@appendix{附录}
  \def\ECUST@label@publications{攻读博士期间的主要学术成果及参与的科研项目}
  \def\ECUST@label@projects{攻读学位期间参与的项目}
  \def\ECUST@label@resume{作者简介}
  \def\ECUST@label@reference{参考文献！！！！}
  \def\ECUST@label@thanks{致谢}
  \def\ECUST@value@templateversion{v1.0}


  %% 当前模板的版本
  \newcommand{\version}{\ECUST@value@templateversion}
  %%==============引用geometry 宏包设置纸张和页面========================
  %设置版面:上3.5cm，下2.5cm，左2.7cm，右2.7cm，页眉2.5cm，页脚1.8cm，装订线0cm
  \usepackage[%
    paper=a4paper,%
    top=2.8cm,% 上 3.5cm %
    bottom=2cm,% 下 2.5cm %
    left=2.5cm,% 左 2.7cm %
    right=2.5cm,% 右 2.7cm %
    headheight=2.0cm,% 页眉 2.5cm %
    headsep=0.3cm,% headsep
    footskip=1.2cm% 页脚 1.8cm %
  ]{geometry} % 页面设置 %
  %% =========================================================

  %\parskip 0.5ex plus 0.25ex minus 0.25ex
  %% Command -- Clear Double Page
  \def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
        \thispagestyle{empty}%
        \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
  %设置行距
  \RequirePackage{setspace}
  \setstretch{1.4}
  \linespread{1.4}

  %% 设置章节格式
  % 第1章（空2格）××××，4号黑体，居中，上下各空1行
  \ctexset{chapter={
      name = {第,章},
      number = {\arabic{chapter}},
      format = { \heiti \centering \zihao{4}},
      pagestyle = {ECUST@headings},
      beforeskip = 12pt,
      afterskip = 25bp,
      fixskip = true,
     }
  }

  %% 1.1（空2格）××××，小4号宋体加粗，顶格排，上下各空0.5行
  \ctexset{section={
      format={\songtibold\raggedright \zihao{-4}},
      beforeskip = 12pt,
      afterskip = 12pt,
      fixskip = true,
     }
  }

  %1.1.1（空2格）××××，小4号宋体，顶格排

  \ctexset{subsection={
        format = { \songti \raggedright \zihao{-4}},
        beforeskip = 0ex,
        afterskip = 0ex,
        fixskip = true,
        indent={-0.25em} % 不加这个看上去好像没有顶格，所以调整一下
      }
  }

  %1.1.1（空2格）××××，小4号宋体，顶格排

  \ctexset{subsubsection={
        format={\songti \raggedright \zihao{-4}},
        beforeskip = 0ex,
        afterskip = 0ex,
        fixskip=true,
      }
  }

  %% 设定目录格式。
  \RequirePackage{titletoc}
  \titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \songti \zihao{4}}
  {\thecontentslabel\quad}{}
  {\hspace{.5em}\titlerule*{.}\contentspage}
  \titlecontents{section}[0em]{\songti \zihao{-4}}
  {\thecontentslabel\quad}{}
  {\hspace{.5em}\titlerule*{.}\contentspage}
  \titlecontents{subsection}[0em]{\songti \zihao{-4}}
  {\thecontentslabel\quad}{}
  {\hspace{.5em}\titlerule*{.}\contentspage}

  %% 选择编译
  \RequirePackage{ifthen}

  %% check pdfTeX mode
  \RequirePackage{ifpdf}

  %% fancyhdr 页眉页脚控制
  \RequirePackage{fancyhdr}

  % 空 页眉页脚
  \fancypagestyle{ECUST@empty}{%
    \fancyhf{}}

  %======正文页眉页脚=================
  \fancypagestyle{ECUST@headings}{%
  \fancyhf{}
  \fancyhead[RO,LE]{\songti\zihao{5} 第\thepage 页}
  \fancyhead[RE,LO]{\ifECUST@master{\zihao{4}\headkaiti{华东理工大学}}{\zihao{-4}\songti{硕士学位论文}}
\else{\zihao{4}\headkaiti{华东理工大学}}{\zihao{-4}\songti{博士学位论文}}\fi}
}

%==================================对于openright 选项，必须保证章页右开，且如果前章末页内容须清空其页眉页脚。===================
\let\ECUST@cleardoublepage\cleardoublepage
\newcommand{\ECUST@clearemptydoublepage}{%
  \clearpage{\pagestyle{ECUST@empty}\ECUST@cleardoublepage}}
\let\cleardoublepage\ECUST@clearemptydoublepage

%================修该frontmatter 的页码为大写罗马格式，并调整页面风格===============
\renewcommand{\frontmatter}{
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{ECUST@headings}
}
%=======================修改mainmatter 的页码为阿拉伯格式，并调整页面风格========================
\renewcommand{\mainmatter}{
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{ECUST@headings}
}


%% 复杂表格
\RequirePackage{threeparttable}
\RequirePackage{dcolumn}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\newcolumntype{d}[1]{D{.}{.}{#1}}% or D{.}{,}{#1} or D{.}{\cdot}{#1}


%% 定义几个常用的数学常量符号
\newcommand{\me}{\mathrm{e}} %定义 对数常数e，虚数符号i,j以及微分算子d为直立体。
\newcommand{\mi}{\mathrm{i}}
\newcommand{\mj}{\mathrm{j}}
\newcommand{\dif}{\mathrm{d}}

% 可伸长的数学符号
% \makeatletter
\def\ExtendSymbol#1#2#3#4#5{\ext@arrow 0099{\arrowfill@#1#2#3}{#4}{#5}}
\def\RightExtendSymbol#1#2#3#4#5{\ext@arrow 0359{\arrowfill@#1#2#3}{#4}{#5}}
\def\LeftExtendSymbol#1#2#3#4#5{\ext@arrow 6095{\arrowfill@#1#2#3}{#4}{#5}}
% \makeatother

\newcommand\myRightarrow[2][]{\RightExtendSymbol{=}{=}{\Rightarrow}{#1}{#2}}
\newcommand\myLeftarrow[2][]{\LeftExtendSymbol{\Leftarrow}{=}{=}{#1}{#2}}
\newcommand\myBioarrow[2][]{\ExtendSymbol{\Leftarrow}{=}{\Rightarrow}{#1}{#2}}
\newcommand\myLongEqual[2][]{\ExtendSymbol{=}{=}{=}{#1}{#2}}


%% 英文字体使用 Times New Roman
\RequirePackage{fontspec}
\RequirePackage{xltxtra} % \XeTeX Logo
%% Times Fonts
\RequirePackage{times}
%% Set Old Fonts Encoding
\usepackage[T1]{fontenc}


%% graphics packages
\RequirePackage{graphicx}
%% 并列子图
\RequirePackage{subfigure}

\RequirePackage{wrapfig}
%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}
\RequirePackage{caption}
\RequirePackage[list=off]{bicaption}% ccaption -- bicaption


%% sort and compress citations
\RequirePackage[sort&compress,numbers]{natbib}
% 上标引用
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}


% 将浮动参数设为较宽松的值
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

\DeclareCaptionFont{songti}{\songti}
\captionsetup{format=plain,labelformat=simple,labelsep=quad,justification=centering,font={small}}

\captionsetup[sub]{font=footnotesize}

\DeclareCaptionOption{bi-first}[]{%
  \songtibold\zihao{5}
  \def\tablename{表}
  \def\figurename{图}
  \def\ALG@name{算法}
}
\DeclareCaptionOption{bi-second}[]{%
  \zihao{5}
  \def\tablename{Table}
  \def\figurename{Fig.}
  \def\ALG@name{Algorithm}
}

% 算法环境标题中文化（兼容 algorithm / algorithm2e）
\AtBeginDocument{%
  \@ifpackageloaded{algorithm}{%
    \@ifundefined{floatname}{}{\floatname{algorithm}{算法}}%
    \@ifundefined{listalgorithmname}{}{\renewcommand{\listalgorithmname}{算法索引}}%
  }{}%
  \@ifpackageloaded{algorithm2e}{%
    \@ifundefined{algorithmcfname}{}{\renewcommand{\algorithmcfname}{算法}}%
    \@ifundefined{listalgorithmcfname}{}{\renewcommand{\listalgorithmcfname}{算法索引}}%
  }{}%
}

\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}

% 定公式、图、表编号为"3-1"的形式，即分隔符由.变为短杠
\renewcommand\theequation{\arabic{chapter}-\arabic{equation}}
\renewcommand\thefigure{\arabic{chapter}.\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}.\arabic{table}}

% 颜色宏包
\RequirePackage{xcolor}


% 中文破折号
\newcommand{\cndash}{\rule{0.0em}{0pt}\rule[0.35em]{1.4em}{0.05em}\rule{0.2em}{0pt}}

% listings 源代码显示宏包
\RequirePackage{listings}
\lstset{tabsize=4, %
  frame=shadowbox, %把代码用带有阴影的框圈起来
  commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
  rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
  keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
  showstringspaces=false,%不显示代码字符串中间的空格标记
  stringstyle=\ttfamily, % 代码字符串的特殊格式
  keepspaces=true, %
  breakindent=22pt, %
  numbers=left,%左侧显示行号
  stepnumber=1,%
  numberstyle=\tiny, %行号字体用小号
  basicstyle=\footnotesize, %
  showspaces=false, %
  flexiblecolumns=true, %
  breaklines=true, %对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em, %
  aboveskip=1em, %代码块边框
  %% added by http://bbs.ctex.org/viewthread.php?tid=53451
  fontadjust,
  captionpos=t,
  framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
  xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
  texcl=true,
  % 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
  extendedchars=false,columns=flexible,mathescape=true
  numbersep=-1em
}
\renewcommand{\lstlistingname}{代码} %% 重命名Listings标题头


%% hyperref package

\ifxetex  % xelatex
  \RequirePackage[xetex]{hyperref}
  \hypersetup{
    bookmarksnumbered,%
    % bookmarksopen=true,%设置目录在PDF中是自动展开，还是默认折叠
    % bookmarksopenlevel=5,
    colorlinks,%
    linkcolor=black,%
    urlcolor=black, %
    citecolor=black,%
    plainpages=false,%
    pdfstartview=FitH
  }
\else
  \ifpdf    % pdflatex
    \RequirePackage[pdftex,unicode]{hyperref}
  \else     % dvipdfmx or dvips
    \RequirePackage[dvipdfmx,unicode]{hyperref}
  \fi
\fi

%% enumerate 列表环境间距调节
\usepackage{enumitem}
% \setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
% \setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
% \setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}

%_  参考文献风格 added by wei.jianwen@gmail.com
\bibliographystyle{GBT7714-2005NLang}

%_ ECUSTspace
%\newcommand\ECUSTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\newcommand{\ECUSTspace}[1][1]{\hspace{#1\ccwd}}

\def\ECUST@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\ECUSTfiledate{#1}%
  \def\ECUSTfileversion{#2}%
  \def\ECUSTfileinfo{#3}}%
\expandafter\ifx\csname ver@ECUSTmaster-xetex.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_ECUSTmaster-xetex.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@ECUSTmaster-xetex.cls\endcsname}
\fi
\expandafter\ECUST@getfileinfo\reserved@a\relax? ? \relax\relax
\def\ECUST@underline[#1]#2{%
  \underline{\hbox to #1{\hfill#2\hfill}}}
\def\ECUSTunderline{\@ifnextchar[\ECUST@underline\underline}

%%%%中文标题页的可用命令
\newcommand\classification[1]{\def\ECUST@value@classification{#1}}
\newcommand\studentnumber[1]{\def\ECUST@value@studentnumber{#1}}
\newcommand\confidential[1]{\def\ECUST@value@confidential{#1}}
\newcommand\UDC[1]{\def\ECUST@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\ECUST@value@serialnumber{#1}}
\newcommand\school[1]{\def\ECUST@value@school{#1}}
\newcommand\degree[1]{\def\ECUST@value@degree{#1}}
\renewcommand\title[2][\ECUST@value@title]{%
  \def\ECUST@value@title{#2}
  \def\ECUST@value@titlemark{\MakeUppercase{#1}}}

\newcommand\vtitle[1]{\def\ECUST@value@vtitle{#1}}
\renewcommand\author[1]{\def\ECUST@value@author{#1}}
\newcommand\advisor[1]{\def\ECUST@value@advisor{#1}}
\newcommand\advisorinstitute[1]{\def\ECUST@value@advisorinstitute{#1}}
\newcommand\major[1]{\def\ECUST@value@major{#1}}
\newcommand\submitdate[1]{\def\ECUST@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\ECUST@value@defenddate{#1}}
\newcommand\institute[1]{\def\ECUST@value@institute{#1}}
\newcommand\chairman[1]{\def\ECUST@value@chairman{#1}}


%% 第一页和第二页
%_ “绘制”ECUST中文标题页
\renewcommand\maketitle[1]{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{60mm}
    {\heiti\zihao{-2} \ECUST@value@title}
    \vskip 40mm
      {\heiti \zihao{-2} \ECUST@value@author}
    \vskip 4mm
      {\songti \zihao{4} \ECUST@value@defenddate}
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

\newcommand\makeInfo[1]%
{
\newpage
\cleardoublepage
\thispagestyle{empty}

%udc ltz
{
{\heiti \zihao{5} \noindent \ECUST@label@classification} \ECUST@value@classification \\
{\heiti \zihao{5} \ECUST@label@UDC}  \ECUST@value@UDC
}

\begin{center}

  \vskip \stretch{1}
  {\heiti\zihao{-2} \ECUST@value@title}
  \vskip \stretch{1}

  {\fangsong\zihao{4}}
  \def\tabcolsep{1pt}
  \def\arraystretch{1.5}

  {\heiti\zihao{-3}
    \begin{tabular}{l p{3mm} c}
      \ECUST@label@author     &  & \ECUSTunderline[180pt]{\ECUST@value@author}
      \\
      \ECUST@label@institute  &  & \ECUSTunderline[180pt]{\ECUST@value@institute}
      \\
      \ECUST@label@advisor    &  & \ECUSTunderline[180pt]{\ECUST@value@advisor}
      \\
      \ECUST@label@chairman   &  & \ECUSTunderline[180pt]{\ECUST@value@chairman}
      \\
      \ECUST@label@degree     &  & \ECUSTunderline[180pt]{\ECUST@value@degree}
      \\
      \ECUST@label@major      &  & \ECUSTunderline[180pt]{\ECUST@value@major}
      \\
      \ECUST@label@school     &  & \ECUSTunderline[180pt]{\ECUST@value@school}
      \\
      \ECUST@label@defenddate &  & \ECUSTunderline[180pt]{\ECUST@value@defenddate}
    \end{tabular}}

\end{center}

\vskip \stretch{0.5}
\clearpage
\if@twoside
  \thispagestyle{empty}
  \cleardoublepage
\fi
}


% English Title Page
% 英文标题页可用命令
\newcommand\englishtitle[1]{\def\ECUST@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\ECUST@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\ECUST@value@englishadvisor{#1}}
\newcommand\englishschool[1]{\def\ECUST@value@englishschool{#1}}
\newcommand\englishinstitute[1]{\def\ECUST@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\ECUST@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\ECUST@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\ECUST@value@englishmajor{#1}}
\newcommand\englishchairman[1]{\def\ECUST@value@englishchairman{#1}}

% "绘制"英文标题页
\newcommand\makeEnglishInfo[1]{%
  \cleardoublepage
  \thispagestyle{empty}

  \begin{center}


    \vspace*{10em}

    {\zihao{-2}\textbf{\ECUST@value@englishtitle}}

    \vskip \stretch{1}

    {\zihao{-3}
      \begin{tabular}{ll}
        \ECUST@label@englishauthor    & \ECUSTunderline[200pt]{\ECUST@value@englishauthor}
        \\
        \ECUST@label@englishinstitute & \ECUSTunderline[200pt]{\ECUST@value@englishinstitute}
        \\
        \ECUST@label@englishadvisor   & \ECUSTunderline[200pt]{\ECUST@value@englishadvisor}
        \\
        \ECUST@label@englishchairman  & \ECUSTunderline[200pt]{\ECUST@value@englishchairman}
        \\
        \ECUST@label@englishdegree    & \ECUSTunderline[200pt]{\ECUST@value@englishdegree}
        \\
        \ECUST@label@englishmajor     & \ECUSTunderline[200pt]{\ECUST@value@englishmajor}
        \\
        \ECUST@label@englishschool    & \ECUSTunderline[200pt]{\ECUST@value@englishschool}
        \\
        \ECUST@label@englishdate      & \ECUSTunderline[200pt]{\ECUST@value@englishdate}
      \end{tabular}}

  \end{center}

  \vskip \stretch{0.5}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

%绘制树立排放的论文题目和学校名称

\newcommand\makeVerticalTitle{
  \cleardoublepage
  \thispagestyle{empty}
  \vskip 5cm
  \begin{center}
    \setstretch{1.1}
    \begin{minipage}{1em}
      {\heiti\zihao{3}\ECUST@value@vtitle}
      \vskip 2cm
        {\heiti\zihao{3}\ECUST@value@school}
    \end{minipage}
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi

}

% 原创性声明
\newcommand\makeDeclareOriginal{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    {\bf\zihao{3} \ECUST@label@original}
  \end{center}
  \vskip 10pt
    {\zihao{4}\ECUST@label@originalcontent}
  \vskip 10pt
  \hspace{8em}{\zihao{4}\ECUST@label@authorsign} \ECUSTunderline[6em]{} \hspace{2em} {\zihao{4}\ECUST@label@originalDate} \ECUSTunderline[6em]{}

  \vskip 30mm

  \begin{center}
    {\bf\zihao{3} \ECUST@label@authorization}
  \end{center}
  \vskip 10pt
    {\zihao{4} \ECUST@label@authorizationcontent}
  \vskip 40pt

  \hspace{8em}{\zihao{4}\ECUST@label@authorsign} \ECUSTunderline[6em]{} \hspace{2em} {\zihao{4}\ECUST@label@Supervisorsign} \ECUSTunderline[6em]{}
  \vskip 15pt
  \hspace{8em}{\zihao{4}\ECUST@label@originalDate} \ECUSTunderline[6em]{} \hspace{2em} {\zihao{4}\ECUST@label@originalDate} \ECUSTunderline[6em]{}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi

}


%_ 页眉页脚
\pagestyle{fancy}
\fancyhf{}
\fancyhead[RE,LO]{\songti \zihao{5}{华东理工大学}}  % 奇数页左页眉
\fancyhead[RO,LE]{\songti \zihao{5} {\thepage}}      % 页脚


\fancypagestyle{plain}{% 设置开章页页眉页脚风格(只有页码作为页脚)
\fancyhf{}%
\fancyfoot[C]{\songti \zihao{5} \ECUST@label@headschoolname}
\fancyfoot[C]{\songti \zihao{5} ~---~{\thepage}~---~} %%首页页脚格式
}


%_ 中文摘要
\newenvironment{abstract}
{
  \cleardoublepage
  \chapter*{\vskip 4mm \zihao{4}\centerline{\ECUST@value@title}\vskip 2.5mm\songtibold\zihao{4}\ECUST@label@abstract \vskip -4mm }
  % \addcontentsline{toc}{chapter}{摘要} % 同时加入书签和目录
  \bookmark[dest=\HyperLocalCurrentHref, level=1]{摘要} % 只加入书签，不加入目录
}
{}
%下一页从偶数页开始
\newcommand\beginatevenpage{
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
%_ 中文关键词
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\songtibold\zihao{-4} \ECUST@label@keywords} #1}

%_ 英文摘要
\newenvironment{englishabstract}
{
  \clearpage
  \chapter*{\vskip 4mm \zihao{4}\bfseries\centerline{\ECUST@value@englishtitle}\vskip 2.5mm\bfseries\zihao{4}\ECUST@label@englishabstract \vskip -4mm }
  % \addcontentsline{toc}{chapter}{Abstract} % 同时加入书签和目录
  \bookmark[dest=\HyperLocalCurrentHref, level=1]{Abstract} % 只加入书签，不加入目录
}
{}

% _英文摘要
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \ECUST@label@englishkeywords} #1}

%ltz add
%\RequirePackage{titletoc}
%\makeatletter
%\renewcommand\section{{\songti{1}}}
%\makeatother
%_ 目录
\renewcommand\tableofcontents{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\songtibold\zihao{4}\contentsname}%目录里显示“目录”，否则\chapter*
  \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
  % \addcontentsline{toc}{chapter}{目录} % 同时加入书签和目录
  \bookmark[dest=\HyperLocalCurrentHref, level=1]{目录} % 只加入书签，不加入目录
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}

\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}

%_ 参考文献环境 
% 参考文献内容（小4号宋体）
\renewenvironment{thebibliography}[1]
{\zihao{-4}
  \chapter*{\bibname}
  \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
  \addcontentsline{toc}{chapter}{参考文献}
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \setlength{\parsep}{0mm} % 段落间距
    \setlength{\labelsep}{0.5em} % 标号和列表项之间的距离
    \setlength{\itemsep}{0.0pc} % 条目间距
    \setlength{\listparindent}{0in} % 段落缩进量
    \setlength{\itemindent}{0in} % 标签缩进量
    \setlength{\rightmargin}{0in} % 右边界
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist}


\newenvironment{publications}[1]
{\chapter{\ECUST@label@publications}%
  \@mkboth{\MakeUppercase\ECUST@label@publications}
  {\MakeUppercase\ECUST@label@publications}%
  \addcontentsline{toc}{chapter}{攻读博士期间的主要学术成果及参与的科研项目}
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \setlength{\parsep}{0mm}
    \setlength{\labelsep}{0.5em}
    \setlength{\itemsep}{0.0pc}
    \setlength{\listparindent}{0in}
    \setlength{\itemindent}{0in}
    \setlength{\rightmargin}{0in}
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `publications' environment}}%
  \endlist}


\newenvironment{projects}[1]
{\chapter{\ECUST@label@projects}%
  \@mkboth{\MakeUppercase\ECUST@label@projects}
  {\MakeUppercase\ECUST@label@projects}%
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `projects' environment}}%
  \endlist}

\newenvironment{resume}
{\chapter{\ECUST@label@resume}}
{}

\newenvironment{resumesection}[1]
{{\noindent\normalfont\bfseries #1}
  \list{}{\labelwidth\z@
    \leftmargin 2\ccwd}
  \item\relax}
{\endlist}

\newenvironment{resumeli}[1]
{{\noindent\normalfont\bfseries #1}
  \list{}{\labelwidth\z@
    \leftmargin 4\ccwd
    \itemindent -2\ccwd
    \listparindent\itemindent}
  \item\relax}
{\endlist}

\newenvironment{conclusion}
{\chapter*{结论}
  \@mkboth{结论}{结论}%
  \addcontentsline{toc}{chapter}{结论}}
{}

\renewenvironment{thanks}
{\chapter*{\songtibold\ECUST@label@thanks}
  \addcontentsline{toc}{chapter}{致谢} % 同时加入书签和目录
  % \bookmark[dest=\HyperLocalCurrentHref, level=1]{致谢} % 只加入书签，不加入目录
}
{}



\newenvironment{symbolnote}
{\chapter{\ECUST@label@symbolnote}
  \fangsong}
{}


\setcounter{secnumdepth}{4}  % 章节编号深度 (part 对应 -1)
\setcounter{tocdepth}{2}     % 目录深度 (part 对应 -1)


\newtheoremstyle{definition}% name
{}%      Space above, empty = `usual value'
{}%      Space below
{\itshape}% Body font
{}%         Indent amount (empty = no indent, \parindent = para indent)
{\songtibold}% Thm head font
{.}%        Punctuation after thm head
{ }% Space after thm head
{\songtibold\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%         Thm head spec
\endinput
%%
%% End of file `ECUSTmaster-xetex.cls'.
