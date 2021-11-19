# 文档翻译
* * *

# 前言


# 生成英文原文
英文文档默认引擎是 pdflatex。

## 一点小修改


## 生成原始 pdf 文件
执行两次:
```
$ pdflatex QuaternionsAndDynamics.tex
$ pdflatex QuaternionsAndDynamics.tex

pdflatex 输出中文字体
https://tex.stackexchange.com/questions/17611/how-does-one-type-chinese-in-latex
```

# 更换中文引擎
英文引擎 pdflatex 不能处理好中文。中文要换成 xelatex 引擎。

```
在 QuaternionsAndDynamics.tex 文件头部增加一行
%!TEX TS-program = xelatex


line 1: 将
\documentclass{article}
变为
%\documentclass{article}
\documentclass{ctexart}
\usepackage[T1]{fontenc}

line 2: 将 "pdftex" 变为 "xetex"。 
\usepackage[xetex]{graphicx}
\usepackage[xetex]{hyperref}

同样要执行两次：

$ xelatex QuaternionsAndDynamics.tex
$ xelatex QuaternionsAndDynamics.tex
```


# 翻译

接着分别针对每个 tex 文件进行翻译。

这教材里面的数学内容太专业、太高深。在这其中也不知道引入了多少个错误:-(。

读者如有发现错误，请给予指正。谢谢！

