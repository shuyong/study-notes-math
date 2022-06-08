# 文档翻译
* * *

# 前言

此文档的 tex 源码，从这个地址下载 
https://arxiv.org/abs/1802.09143

# 生成英文原文
英文文档默认引擎是 pdflatex。

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

line 1: 在 "\documentclass{IEEEtran}" 增加一行
\usepackage[fontset=founder]{ctex}
以便能处理中文

line 6/10: 将 "pdftex" 变为 "xetex"。 
\usepackage[xetex]{hyperref}
\usepackage[xetex]{graphicx}

同样要执行两次：

$ xelatex main.tex
$ xelatex main.tex
```

编译完成后，用 xelatex 生成的 PDF 文件的页数总是比 pdflatex 的要大几页。不知何故，也许和两者的字间距和行间距有关。

ctex 的行间距为 1.3 ，pdftex 的行间距为 1.2 。在导言区中增加一行命令调整行间距：
\linespread{1.2}

# 翻译

接着分别针对每个 tex 文件进行翻译。

这教材里面的数学内容太专业、太高深。在这其中也不知道引入了多少个错误:-(。

读者如有发现错误，请给予指正。谢谢！

