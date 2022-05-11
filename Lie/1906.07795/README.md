# 文档翻译
* * *

# 前言

此文档的 tex 源码，从这个地址下载 
https://arxiv.org/abs/1906.07795

# 生成英文原文
英文文档默认引擎是 pdflatex。

## 一点小修改

在 main.tex 文件中，在 "\author{Joshua~G.~Mangelson, ...}" 后面增加原始文件的日期
```
%%%"\date{18 Jun 2019}"
```

## 生成原始 pdf 文件
执行2次:
```
$ pdflatex main.tex
$ pdflatex main.tex
```

第一次生成 pdf 文件。第二次从 main.bbl 文件中给 pdf 文件加入索引。

不需要执行 bibtex main 命令，因为作者已经提供 main.bbl 文件。并且因为没有作者的完整环境，也不能生成该索引文件。

# 更换中文引擎
英文引擎 pdflatex 不能处理中文。中文要换成 xelatex 引擎。

```
在 main.tex 文件头部增加一行
%!TEX TS-program = xelatex

line 1: 在 "\documentclass[journal]{style/IEEEtran}" 增加一行
\usepackage{ctex}
以便能处理中文

line 3: 注释 pdflatex 版本号
%\pdfminorversion=4

line 28/69/80: 将 "pdftex" 变为 "xetex"。 
\usepackage[xetex]{hyperref}

同样要执行两次：

$ xelatex main.tex
$ xelatex main.tex
```

编译完成后，用 xelatex 生成的 PDF 文件的页数总是比 pdflatex 的要大几页。不知何故，也许和两者的字间距和行间距有关。

# 翻译

接着分别针对每个 tex 文件进行翻译。

这教材里面的数学内容太专业、太高深。在这其中也不知道引入了多少个错误:-(。

读者如有发现错误，请给予指正。谢谢！

# 修订

在图 3 中的两处伴随矩阵的二次型应用中，第 2 个伴随矩阵少写转置符号(T)。因该图为PDF文件，无法修改，故在此记录。

