# [MIT A 2020 Vision of Linear Algebra, Spring 2020](https://www.youtube.com/playlist?list=PLUl4u3cNGP61iQEFiWLE21EJCxwmWvvek)
* * *
# 课程安排
1. [Intro: A New Way to Start Linear Algebra](https://www.youtube.com/watch?v=YrHlHbtiSM0)
1. [Part 1: The Column Space of a Matrix](https://www.youtube.com/watch?v=azzrfdysfI0&list=PLUl4u3cNGP61iQEFiWLE21EJCxwmWvvek&index=2&t=283s)
1. [Part 2: The Big Picture of Linear Algebra](https://www.youtube.com/watch?v=rwLOfdfc4dw&list=PLUl4u3cNGP61iQEFiWLE21EJCxwmWvvek&index=3)
1. [Part 3: Orthogonal Vectors](https://www.youtube.com/watch?v=j8hEnyOiwhw&list=PLUl4u3cNGP61iQEFiWLE21EJCxwmWvvek&index=4)
1. [Part 4: Eigenvalues and Eigenvectors](https://www.youtube.com/watch?v=GyC3gl6weYo&list=PLUl4u3cNGP61iQEFiWLE21EJCxwmWvvek&index=5)
1. [Part 5: Singular Values and Singular Vectors](https://www.youtube.com/watch?v=IHO7_n7Y09s&list=PLUl4u3cNGP61iQEFiWLE21EJCxwmWvvek&index=6)
1. [课件原文](https://ocw.mit.edu/resources/res-18-010-a-2020-vision-of-linear-algebra-spring-2020/videos/MITRES_18_010S20_LA_Slides.pdf)
1. [中文资源](https://cloud.189.cn/t/BjyUnmb2IjYn)
1. [课件中文](https://wws.lanzous.com/i4E0iget4ng)：翻译错误挺多的。经常把‘行’写成‘列’。

# 笔记

## 绪论

1. 矩阵 A 是一个列矩阵 C 和行矩阵 R 的乘积。
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;A=CR=\left[\begin{array}{cc}&space;\:&space;&&space;\:\\&space;\:&space;&&space;\:\\&space;\:&space;&&space;\:\\&space;\:&space;&&space;\:&space;\end{array}\right]\left[\begin{array}{cccc}&space;\:&space;&&space;\:&space;&&space;\:&space;&&space;\:\\&space;\:&space;&&space;\:&space;&&space;\:&space;&&space;\:&space;\end{array}\right]" title="\large A=CR=\left[\begin{array}{cc} \: & \:\\ \: & \:\\ \: & \:\\ \: & \: \end{array}\right]\left[\begin{array}{cccc} \: & \: & \: & \:\\ \: & \: & \: & \: \end{array}\right]" />

2. A = LU，用于消元法解方程组。Triangular matrices L and U.
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;A=LU=\left[\begin{array}{cc}&space;\ddots&space;&&space;0\\&space;&&space;\ddots&space;\end{array}\right]\left[\begin{array}{cc}&space;\ddots\\&space;0&space;&&space;\ddots&space;\end{array}\right]" title="\large A=LU=\left[\begin{array}{cc} \ddots & 0\\ & \ddots \end{array}\right]\left[\begin{array}{cc} \ddots\\ 0 & \ddots \end{array}\right]" />

3. A = QR，Q 代表正交矩阵。Orthogonal columns in Q.
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;A=QR=\left[\begin{array}{cc}&space;q_{1}&space;&&space;q_{n}\end{array}\right]\left[\begin{array}{cc}&space;\ddots\\&space;0&space;&&space;\ddots&space;\end{array}\right]" title="\large A=QR=\left[\begin{array}{cc} q_{1} & q_{n}\end{array}\right]\left[\begin{array}{cc} \ddots\\ 0 & \ddots \end{array}\right]" />

* _前 3 节内容用于解方程。_
* _后 3 节都是关于特征值的内容。_

4. S 是对称矩阵。正交特征向量。Orthogonal eigenvectors.
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;S=Q\Lambda&space;Q^{\mathrm{T}},\;Q^{\mathrm{T}}=Q^{-1}" title="\large S=Q\Lambda Q^{\mathrm{T}},\;Q^{\mathrm{T}}=Q^{-1}" />

5. 特征值。Eigenvalues.
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;A=X\Lambda&space;X^{-1}" title="\large A=X\Lambda X^{-1}" />

6. 奇异值。Singular values.
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;A=U\Sigma&space;V^{\mathrm{T}}" title="\large A=U\Sigma V^{\mathrm{T}}" />

## 第 1 节 矩阵的列空间
1. 线性代数就是关于列与行的关系。
2. S 是对称矩阵，是线性代数中重要的矩阵之一。
3. Q 是正交矩阵，它往往代表旋转，旋转矩阵，是线性代数中重要的矩阵之一。
4. C(A) 列空间。
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;Ax=\left[\begin{array}{ccc}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{array}\right]\left[\begin{array}{c}&space;x_{1}\\&space;x_{2}\\&space;x_{3}&space;\end{array}\right]=\left[\begin{array}{c}&space;a_{11}\\&space;a_{21}\\&space;a_{31}&space;\end{array}\right]x_{1}&plus;\left[\begin{array}{c}&space;a_{12}\\&space;a_{22}\\&space;a_{32}&space;\end{array}\right]x_{2}&plus;\left[\begin{array}{c}&space;a_{13}\\&space;a_{23}\\&space;a_{33}&space;\end{array}\right]x_{3}" title="\large Ax=\left[\begin{array}{ccc} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33} \end{array}\right]\left[\begin{array}{c} x_{1}\\ x_{2}\\ x_{3} \end{array}\right]=\left[\begin{array}{c} a_{11}\\ a_{21}\\ a_{31} \end{array}\right]x_{1}+\left[\begin{array}{c} a_{12}\\ a_{22}\\ a_{32} \end{array}\right]x_{2}+\left[\begin{array}{c} a_{13}\\ a_{23}\\ a_{33} \end{array}\right]x_{3}" />

   + 4.1 A 矩阵的线性无关的各列的线性组合。
   + 4.2 Column space of A = C(A) = all vectors Ax = all linear combinations of the columns
   + 4.3 C(A) = R^3 | plane | line
   + 4.4 C(A) = span(v1, v2, ...)
   
5. 列空间的基 / 行空间的基
   + 5.1 C 矩阵，A 矩阵的线性无关的列的组合
   + 5.2 R 矩阵，A 矩阵的行化简阶梯形矩阵
   
6. A = CR 表明 A 的行秩等于列秩
   + 6.1 C 矩阵，A 矩阵的线性无关的列向量组合
   + 6.2 R 矩阵，线性无关的行向量，包含包含了 r × r 的矩阵 I
   + 6.3 列空间和行空间的维度是一样的，r = rank(A)
   
7. R 矩阵，A 矩阵的行化简阶梯形矩阵

## 第 2 节 宏观视角下的线性代数

1. 零空间(nullspace)，Ax = 0 => N(A)
   + 1.1 每个处于 A 的零空间当中的 x 都与 A 的行空间正交
   + 1.2 每个处于 A^T 的零空间当中的 y 都与 A 的列空间正交
   
2. 两对正交子空间，其中一对子空间的维度之和等于 n，处于 R^n 之中；另一对等于 m，处于 R^m 之中。
   | 正交子空间      | 维度      | 和 |
   |---------------|-----------|---|
   | N(A) ⊥ C(A^T) | n − r / r | n |
   | N(A^T) ⊥ C(A) | m - r / r | m |
   
3. 宏观视角
   + 3.1 Ax_row = b => A 矩阵行空间变为列空间，A 是可逆的。
   + 3.2 Ax_null = 0 => A 矩阵零空间变为 0
   + 3.3 CR，列 × 行，外积，叉乘。更高级地理解矩阵。
   + 3.4 行 × 列，点乘。= 0，行向量和列向量正交。

4. A = LU，Low(下三角) / Up(上三角)

## 第 3 节 正交向量

1. 正交向量。因为列向量两两垂直，所以为直角三角形。
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;x^{\mathrm{T}}y=0\quad&space;y^{\mathrm{T}}x=0\quad\left(x&plus;y\right)^{\mathrm{T}}\left(x&plus;y\right)=x^{\mathrm{T}}x&plus;y^{\mathrm{T}}y" title="\large x^{\mathrm{T}}y=0\quad y^{\mathrm{T}}x=0\quad\left(x+y\right)^{\mathrm{T}}\left(x+y\right)=x^{\mathrm{T}}x+y^{\mathrm{T}}y" />

2. 正交归一化矩阵 Q。列自身相乘为 1，与其它列相乘为 0，正交/垂直。
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;Q^{\mathrm{T}}Q=I_{n}\quad&space;QQ^{\mathrm{T}}\neq&space;I" title="\large Q^{\mathrm{T}}Q=I_{n}\quad QQ^{\mathrm{T}}\neq I" />

3. 正交矩阵相乘还是正交矩阵。正交矩阵乘以其它矩阵，不会改变长度。旋转。

4. 如果正交矩阵 Q 是方阵，则
<img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;QQ^{\mathrm{T}}=I\quad&space;Q^{\mathrm{T}}=Q^{-1}" title="\large QQ^{\mathrm{T}}=I\quad Q^{\mathrm{T}}=Q^{-1}" />

5. 如果矩阵 Q_1 / Q_2 为正交矩阵，则 Q_1 × Q_2 和 Q_2 × Q_1 也是正交矩阵。

6. 最小二乘法: A = QR 最主要、最常见的用途。
   + 当
   <img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;Ax=b,\;m>n" title="\large Ax=b,\;m>n" />
   
   + 求最小化的 e 向量
   <img src="https://latex.codecogs.com/svg.latex?\inline&space;\large&space;\left\Vert&space;b-Ax\right\Vert&space;^{2}=\left\Vert&space;e\right\Vert&space;^{2}" title="\large \left\Vert b-Ax\right\Vert ^{2}=\left\Vert e\right\Vert ^{2}" />
   
   + 几何解释：e = b - p，e 为误差向量，p 向量为 b 向量在 C(A) 平面上的投影。尽可能使 e 向量最小。
   
## 第 4 节 实特征值和正交特征向量

## 第 5 节 奇异值分解(SVD)
