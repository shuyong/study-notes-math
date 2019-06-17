测试数学公式的写法
---
[LaTeX math in github wikis](https://stackoverflow.com/questions/22236977/latex-math-in-github-wikis)

You can use chart.apis.google.com to render LaTeX formulas as PNG. 

![f1]

![f2]

![f3]

![f4]

[f1]: http://chart.apis.google.com/chart?cht=tx&chl=m=\frac{m_0}{\sqrt{1-{\frac{v^2}{c^2}}}}
[f2]: http://chart.apis.google.com/chart?cht=tx&chl=E_k=mc^2-m_0c^2
[f3]: http://chart.apis.google.com/chart?cht=tx&chl=E=mc^2
[f4]: http://chart.apis.google.com/chart?cht=tx&chl=m_0c^2

---
*E = mc<sup>2</sup>*

---
Some sites provide users with a service that would fit your need without any javascript involved: on-the-fly generation of images from url encoded latex formulas.

* [codecogs.com](https://www.codecogs.com/latex/about.php)
* [iTex2Img.](http://www.sciweavers.org/free-online-latex-equation-editor)

given the following markdown syntax

![equation](https://latex.codecogs.com/gif.latex?1%2Bsin%28mc%5E2%29%0D%0A)

[Complex Scalable Inline Rendering with LaTeX and Codecogs](https://stackoverflow.com/a/47798853)

<img src="https://latex.codecogs.com/svg.latex?\Large&space;x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}" title="\Large x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}" />

---
<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

you can use an inline formula $$\forall x \in R$$ like this one

$$
M = \left( \begin{array}{ccc}
x_{11} & x_{12} & \ldots \\
x_{21} & x_{22} & \ldots \\
\vdots & \vdots & \ldots \\
\end{array} \right)
$$

---
![equation](http://www.sciweavers.org/tex2img.php?eq=1%2Bsin%28mc%5E2%29&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=)

