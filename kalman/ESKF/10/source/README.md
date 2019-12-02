# 文档翻译
* * *

# 前言
“误差状态卡尔曼滤波器的四元数动力学”一文确实是个好教材。作者倾囊相授，基本上将实现 ESKF 的过程所涉及的数学公式都讲了一遍。如此用心出的教材，没有理由不认真学习。

此文档还给出了 tex 源码。从这个地址下载 
https://arxiv.org/abs/1711.02508

从 tex 版本中还可以看到更丰富、更有趣的事情。作者在里面注释了很多内容，留下了创作的痕迹。有些内容没有出现在最终 PDF 版本，可能是作者觉得内容太多太繁琐了，所以就注释掉了。但那些内容，那些详细解释，也许对初学者有用。所以值得一读。

此外，这个 tex 版本和 PDF 版本还是有些细微差别。

第一个是“1.3.3 纯四元数的自然数幂”，多了一小段文字和一个编号公式。内容不重要，为了和 PDF 版本的公式的编号一致，我注释掉这一段内容。

第二个是“2.3.3 旋转矩阵和旋转矢量:Rodrigues 旋转公式”一节起，从公式(69)到公式(82)，表示角-轴时，使用了和 PDF 版本中不一致的符号。数学上的含义完全一致，就是 tex 版本在视觉上更容易混淆一些，所以作者才改用了 PDF 版本的符号。但为了避免我引入错误，在翻译时，所有的数学符号数学公式都没有触碰，所以翻译版本还是采用 tex 版本的符号。

# 生成英文原文
英文文档默认引擎是 pdflatex。

## 一点小修改
* 在 ClosedForms.tex line 491，将最后一个非法字符删除。
* 在 kinematics.tex 文件中，在 "\author{Joan Sol\`a}" 后面增加原始文件的日期
```
  "\date{October 12, 2017}"
```

## 生成原始 pdf 文件
执行2次:
```
$ pdflatex kinematics.tex
$ pdflatex kinematics.tex
```

第一次生成 pdf 文件。第二次从 kinematics.bbl 文件中给 pdf 文件加入索引。

不需要执行 bibtex kinematics 命令，因为作者已经提供 kinematics.bbl 文件。并且因为没有作者的完整环境，也不能生成该索引文件。

另外，原始文件为 93 页。而我编译出来的文件有 95 页。不知何故。

# 更换中文引擎
英文引擎 pdflatex不能处理中文。中文要换成 xelatex 引擎。

```
在 kinematics.tex 文件头部增加一行
%!TEX TS-program = xelatex

line 1: 将
\pdfoutput=1
注释为
%\pdfoutput=1

line 9: 将
\documentclass[12pt]{article}
变为
%\documentclass[12pt]{article}
\documentclass[12pt]{ctexart}
\usepackage[T1]{fontenc}

line 10:将
\usepackage{a4wide}
变为
%\usepackage{a4wide}
\usepackage{geometry}
\geometry{
    a4paper,
    top=30mm,
    bottom=30mm,
    left=25.4mm,
    right=25.4mm,
    textwidth =6.375 true in % Width of text line.
}

line 15/76: 将 "pdftex" 变为 "xetex"。 
\usepackage[xetex]{graphicx}
\usepackage[xetex]{hyperref}

同样要执行两次：

$ xelatex kinematics.tex
$ xelatex kinematics.tex
```

换引擎编译出来的文件有 99 页。不知何故。

# 翻译

接着分别针对每个 tex 文件进行翻译。

这教材里面的数学内容太专业、太高深。我翻译到后面是越来越吃力，直到翻译到最后一个词 "Bye bye" 才松了一口气。在这其中也不知道引入了多少个错误:-(。

读者如有发现错误，请给予指正。谢谢！
