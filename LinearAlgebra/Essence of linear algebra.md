# [Essence of linear algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)
* * *
# 课程安排
1. [Vectors, what even are they? | Essence of linear algebra, chapter 1](https://www.youtube.com/watch?v=fNk_zzaMoSs&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=1)
1. [Linear combinations, span, and basis vectors | Essence of linear algebra, chapter 2](https://www.youtube.com/watch?v=k7RM-ot2NWY&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=2)
1. [Linear transformations and matrices | Essence of linear algebra, chapter 3](https://www.youtube.com/watch?v=kYB8IZa5AuE)
1. [Matrix multiplication as composition | Essence of linear algebra, chapter 4](https://www.youtube.com/watch?v=XkY2DOUCWMU)
1. [Three-dimensional linear transformations | Essence of linear algebra, chapter 5](https://www.youtube.com/watch?v=rHLEWRxRGiM&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=5)
1. [The determinant | Essence of linear algebra, chapter 6](https://www.youtube.com/watch?v=Ip3X9LOh2dk&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=6)
1. [Inverse matrices, column space and null space | Essence of linear algebra, chapter 7](https://www.youtube.com/watch?v=uQhTuRlWMxw&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=7)
1. [Nonsquare matrices as transformations between dimensions | Essence of linear algebra, chapter 8](https://www.youtube.com/watch?v=v8VSDg_WQlA&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=8)
1. [Dot products and duality | Essence of linear algebra, chapter 9](https://www.youtube.com/watch?v=LyGKycYT2v0&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=9)
1. [Cross products | Essence of linear algebra, Chapter 10](https://www.youtube.com/watch?v=eu6i7WJeinw&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=10)
1. [Cross products in the light of linear transformations | Essence of linear algebra chapter 11](https://www.youtube.com/watch?v=BaM7OCEm3G0&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=11)
1. [Cramer's rule, explained geometrically | Essence of linear algebra, chapter 12](https://www.youtube.com/watch?v=jBsC34PxzoM&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=12)
1. [Change of basis | Essence of linear algebra, chapter 13](https://www.youtube.com/watch?v=P2LTAUO1TdA&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=13)
1. [Eigenvectors and eigenvalues | Essence of linear algebra, chapter 14](https://www.youtube.com/watch?v=PFDu9oVAE-g&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=14)
1. [Abstract vector spaces | Essence of linear algebra, chapter 15](https://www.youtube.com/watch?v=TgKwz5Ikpc8&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=15)

# 笔记

## 向量究竟是什么？
1. 向量可以是任何东西，只要保证两个向量相加以及数字与向量相乘有意义即可。既向量加法和向量数乘贯穿线性代数始终。

## 线性组合、张成的空间与基
1. 向量张成(span)点|线|平面|空间。
2. 向量张成空间：向量仅通过向量加法和向量数乘运算这两种基础运算，能获得的所有可能向量的集合是什么。
3. 线性无关的概念。
4. 向量空间的一个基：张成该空间的一个线性无关向量的集合。

## 矩阵与线性变换
1. transformation = function。变换 = 运动。
2. 线性变换：a. 直线变换后仍保持直线；b. 原点必须保持固定。
3. 仿射变换(Affine Transformation)：变换后为直线，但原点发生移动。
4. 所谓线性，反映到空间中实际上是要保证分割空间的网格线要保证平行且等距，并且原点不动。
5. 向量的变换：基向量(列向量)数乘再相加。
6. 这一节对理解线性变换很重要。小结如下：
   + 6.1. 假如原来的 3D 坐标系的单位向量张成的空间用 I 矩阵表示。
   <img src="https://latex.codecogs.com/svg.latex?\large&space;\begin{array}{c}&space;\begin{array}{ccc}&space;i&space;&&space;j&space;&&space;k\end{array}\\&space;\left[\begin{array}{ccc}&space;1&space;&&space;0&space;&&space;0\\&space;0&space;&&space;1&space;&&space;0\\&space;0&space;&&space;0&space;&&space;1&space;\end{array}\right]&space;\end{array}" title="\large \begin{array}{c} \begin{array}{ccc} i & j & k\end{array}\\ \left[\begin{array}{ccc} 1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1 \end{array}\right] \end{array}" />
   + 6.2. 假如对该坐标系用 A 矩阵做变换。
   <img src="https://latex.codecogs.com/svg.latex?\large&space;\begin{array}{c}&space;\begin{array}{ccc}&space;i\quad&space;&&space;j&space;&&space;\quad&space;k\end{array}\\&space;\left[\begin{array}{ccc}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{array}\right]&space;\end{array}" title="\large \begin{array}{c} \begin{array}{ccc} i\quad & j & \quad k\end{array}\\ \left[\begin{array}{ccc} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33} \end{array}\right] \end{array}" />
   + 6.3. 线性变换就是矩阵叉乘：A * I。
   <img src="https://latex.codecogs.com/svg.latex?\large&space;AI=\left[\begin{array}{ccc}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{array}\right]\left[\begin{array}{ccc}&space;1&space;&&space;0&space;&&space;0\\&space;0&space;&&space;1&space;&&space;0\\&space;0&space;&&space;0&space;&&space;1&space;\end{array}\right]=\left[\begin{array}{c}&space;a_{11}\\&space;a_{21}\\&space;a_{31}&space;\end{array}\right]i&plus;\left[\begin{array}{c}&space;a_{12}\\&space;a_{22}\\&space;a_{32}&space;\end{array}\right]j&plus;\left[\begin{array}{c}&space;a_{13}\\&space;a_{23}\\&space;a_{33}&space;\end{array}\right]k" title="\large AI=\left[\begin{array}{ccc} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33} \end{array}\right]\left[\begin{array}{ccc} 1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1 \end{array}\right]=\left[\begin{array}{c} a_{11}\\ a_{21}\\ a_{31} \end{array}\right]i+\left[\begin{array}{c} a_{12}\\ a_{22}\\ a_{32} \end{array}\right]j+\left[\begin{array}{c} a_{13}\\ a_{23}\\ a_{33} \end{array}\right]k" />
   + 6.4. 这就意味着原坐标系的单位基向量 i / j / k 的终点分别落在了 A 矩阵的基向量的终点上。
   + 6.5. 假如原坐标系有一个 x 向量。
   <img src="https://latex.codecogs.com/svg.latex?\large&space;\overrightarrow{x}=\left[\begin{array}{c}&space;x_{1}\\&space;x_{2}\\&space;x_{3}&space;\end{array}\right]" title="\large \overrightarrow{x}=\left[\begin{array}{c} x_{1}\\ x_{2}\\ x_{3} \end{array}\right]" />
   + 6.6. 则变换后的 x 向量就是和 A 矩阵的基向量的数乘的线性组合。
   <img src="https://latex.codecogs.com/svg.latex?\large&space;A\overrightarrow{x}=\left[\begin{array}{ccc}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{array}\right]\left[\begin{array}{c}&space;x_{1}\\&space;x_{2}\\&space;x_{3}&space;\end{array}\right]=\left[\begin{array}{c}&space;a_{11}\\&space;a_{21}\\&space;a_{31}&space;\end{array}\right]x_{1}&plus;\left[\begin{array}{c}&space;a_{12}\\&space;a_{22}\\&space;a_{32}&space;\end{array}\right]x_{2}&plus;\left[\begin{array}{c}&space;a_{13}\\&space;a_{23}\\&space;a_{33}&space;\end{array}\right]x_{3}" title="\large A\overrightarrow{x}=\left[\begin{array}{ccc} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33} \end{array}\right]\left[\begin{array}{c} x_{1}\\ x_{2}\\ x_{3} \end{array}\right]=\left[\begin{array}{c} a_{11}\\ a_{21}\\ a_{31} \end{array}\right]x_{1}+\left[\begin{array}{c} a_{12}\\ a_{22}\\ a_{32} \end{array}\right]x_{2}+\left[\begin{array}{c} a_{13}\\ a_{23}\\ a_{33} \end{array}\right]x_{3}" />
   + 6.7. 矩阵的基向量(列向量)的张成空间的网格线保持平行且等距，并且原点不动。

