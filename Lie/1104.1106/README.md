# 文档翻译
* * *

# 前言

此文档的 tex 源码，从这个地址下载 
https://arxiv.org/abs/1104.1106

# 生成英文原文
英文文档默认引擎是 pdflatex。

## 一点小修改

在 _IvLie.tex 文件中，在 "\author{Vladimir G. Ivancevic...}" 后面增加原始文件的日期
```
"\date{7 Apr 2011}"
```

## 生成原始 pdf 文件
执行2次:
```
$ pdflatex _IvLie.tex
$ pdflatex _IvLie.tex
```

第一次生成 pdf 文件。第二次从 _IvLie.tex 文件中给 pdf 文件加入索引。

# 更换中文引擎
英文引擎 pdflatex 不能处理中文。中文要换成 xelatex 引擎。

```
在 _IvLie.tex 文件头部增加一行
%!TEX TS-program = xelatex

line 1: 将
\documentclass[11pt]{article}
变为
%\documentclass[11pt]{article}
\documentclass[11pt,fontset=founder]{ctexart}
\usepackage[T1]{fontenc}
\linespread{1.2}
以便能处理中文

line 3: 将 "pdftex" 变为 "xetex"。 
\usepackage[xetex]{graphicx}
\usepackage[xetex]{hyperref}

同样要执行两次：

$ xelatex _IvLie.tex
$ xelatex _IvLie.tex
```

编译完成后，用 xelatex 生成的 PDF 文件的页数总是比 pdflatex 的要大几页。不知何故，也许和两者的字间距和行间距有关。

ctex 的行间距为 1.3 ，pdftex 的行间距为 1.2 。在导言区中增加一行命令调整行间距：
\linespread{1.2}

# 翻译

接着分别针对每个 tex 文件进行翻译。

这教材里面的数学内容太专业、太高深。在这其中也不知道引入了多少个错误:-(。

读者如有发现错误，请给予指正。谢谢！


