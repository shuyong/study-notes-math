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
   <img src="https://latex.codecogs.com/svg.latex?\begin{array}{c}&space;\begin{array}{ccc}&space;i&space;&&space;j&space;&&space;k\end{array}\\&space;\left[\begin{array}{ccc}&space;1&space;&&space;0&space;&&space;0\\&space;0&space;&&space;1&space;&&space;0\\&space;0&space;&&space;0&space;&&space;1&space;\end{array}\right]&space;\end{array}" title="\large \begin{array}{c} \begin{array}{ccc} i & j & k\end{array}\\ \left[\begin{array}{ccc} 1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1 \end{array}\right] \end{array}" />
   
   + 6.2. 假如对该坐标系用 A 矩阵做变换。
   <img src="https://latex.codecogs.com/svg.latex?\begin{array}{c}&space;\begin{array}{ccc}&space;i\quad&space;&&space;j&space;&&space;\quad&space;k\end{array}\\&space;\left[\begin{array}{ccc}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{array}\right]&space;\end{array}" title="\large \begin{array}{c} \begin{array}{ccc} i\quad & j & \quad k\end{array}\\ \left[\begin{array}{ccc} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33} \end{array}\right] \end{array}" />
   
   + 6.3. 线性变换就是矩阵叉乘：A * I。
   <img src="https://latex.codecogs.com/svg.latex?AI=\left[\begin{array}{ccc}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{array}\right]\left[\begin{array}{ccc}&space;1&space;&&space;0&space;&&space;0\\&space;0&space;&&space;1&space;&&space;0\\&space;0&space;&&space;0&space;&&space;1&space;\end{array}\right]=\left[\begin{array}{c}&space;a_{11}\\&space;a_{21}\\&space;a_{31}&space;\end{array}\right]i&plus;\left[\begin{array}{c}&space;a_{12}\\&space;a_{22}\\&space;a_{32}&space;\end{array}\right]j&plus;\left[\begin{array}{c}&space;a_{13}\\&space;a_{23}\\&space;a_{33}&space;\end{array}\right]k" title="\large AI=\left[\begin{array}{ccc} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33} \end{array}\right]\left[\begin{array}{ccc} 1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1 \end{array}\right]=\left[\begin{array}{c} a_{11}\\ a_{21}\\ a_{31} \end{array}\right]i+\left[\begin{array}{c} a_{12}\\ a_{22}\\ a_{32} \end{array}\right]j+\left[\begin{array}{c} a_{13}\\ a_{23}\\ a_{33} \end{array}\right]k" />
   
   + 6.4. 这就意味着原坐标系的单位基向量 i / j / k 的终点分别落在了 A 矩阵的基向量的终点上。
   
   + 6.5. 假如原坐标系有一个 x 向量。
   <img src="https://latex.codecogs.com/svg.latex?\overrightarrow{x}=\left[\begin{array}{c}&space;x_{1}\\&space;x_{2}\\&space;x_{3}&space;\end{array}\right]" title="\large \overrightarrow{x}=\left[\begin{array}{c} x_{1}\\ x_{2}\\ x_{3} \end{array}\right]" />
   
   + 6.6. 则变换后的 x 向量就是和 A 矩阵的基向量的数乘的线性组合。
   <img src="https://latex.codecogs.com/svg.latex?A\overrightarrow{x}=\left[\begin{array}{ccc}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{array}\right]\left[\begin{array}{c}&space;x_{1}\\&space;x_{2}\\&space;x_{3}&space;\end{array}\right]=\left[\begin{array}{c}&space;a_{11}\\&space;a_{21}\\&space;a_{31}&space;\end{array}\right]x_{1}&plus;\left[\begin{array}{c}&space;a_{12}\\&space;a_{22}\\&space;a_{32}&space;\end{array}\right]x_{2}&plus;\left[\begin{array}{c}&space;a_{13}\\&space;a_{23}\\&space;a_{33}&space;\end{array}\right]x_{3}" title="\large A\overrightarrow{x}=\left[\begin{array}{ccc} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33} \end{array}\right]\left[\begin{array}{c} x_{1}\\ x_{2}\\ x_{3} \end{array}\right]=\left[\begin{array}{c} a_{11}\\ a_{21}\\ a_{31} \end{array}\right]x_{1}+\left[\begin{array}{c} a_{12}\\ a_{22}\\ a_{32} \end{array}\right]x_{2}+\left[\begin{array}{c} a_{13}\\ a_{23}\\ a_{33} \end{array}\right]x_{3}" />
   
   + 6.7. 矩阵的基向量(列向量)的张成空间的网格线保持平行且等距，并且原点不动。

## 矩阵乘法与线性变换复合
1. 左乘，从右到左。交换律，次序不能变换。

## 行列式
1. 变换后，单位向量围住的面积或体积或某种积的变化(缩放比例)。
2. det(A) = 0，变换后降维。
3. 行列式为负值，翻转，2D法向量方向变化，3D右手系变左手系。

## 逆矩阵、列空间与零空间
1. det(A) != 0 -> A^-1 exists
2. 秩 rank(A) 变换后的空间维度。
3. 当逆变换存在，可用逆变换求解方程组。
4. 从列空间可知解存在。
5. 从零空间可知可能的解的集合是什么样子。

## 点积与对偶性
1. 点积与投影长度。两个向量的相关性。垂直(正交)。
2. ???投影矩阵???
3. 当看到一个二维到一维的线性变换，它必定和一个向量相关。
4. 对偶性：两种数学事物之间自然而又出乎意料的对应关系。
5. 对于某个固定的向量u，将u与任意向量作点积是整个向量空间上的线性函数（将整个空间映射到1维实数），因为向量空间上的线性函数都可以由一个一行的矩阵来表达，因此任意一个向量都可以看成是一个一行的矩阵，即向量和一行矩阵是同一回事。
   + 5.1. 假如有两个向量 u / v 做点积，就是一行矩阵的相乘。
   <img src="https://latex.codecogs.com/svg.latex?\overrightarrow{u}=\left[\begin{array}{c}&space;u_{1}\\&space;u_{2}\\&space;u_{3}&space;\end{array}\right]" title="\overrightarrow{u}=\left[\begin{array}{c} u_{1}\\ u_{2}\\ u_{3} \end{array}\right]" />
   
   <img src="https://latex.codecogs.com/svg.latex?\overrightarrow{v}=\left[\begin{array}{c}&space;v_{1}\\&space;v_{2}\\&space;v_{3}&space;\end{array}\right]" title="\overrightarrow{v}=\left[\begin{array}{c} v_{1}\\ v_{2}\\ v_{3} \end{array}\right]" />
   
   <img src="https://latex.codecogs.com/svg.latex?\overrightarrow{u}\cdot\overrightarrow{v}=u^{\mathrm{T}}\times&space;v=\begin{array}{c}&space;\begin{array}{c}&space;\begin{array}{ccc}&space;i\;&space;&&space;\;j\;&space;&&space;\;k\end{array}\\&space;\left[\begin{array}{ccc}&space;u_{1}&space;&&space;u_{2}&space;&&space;u_{3}\end{array}\right]&space;\end{array}\left[\begin{array}{c}&space;v_{1}\\&space;v_{2}\\&space;v_{3}&space;\end{array}\right]\end{array}" title="\overrightarrow{u}\cdot\overrightarrow{v}=u^{\mathrm{T}}\times v=\begin{array}{c} \begin{array}{c} \begin{array}{ccc} i\; & \;j\; & \;k\end{array}\\ \left[\begin{array}{ccc} u_{1} & u_{2} & u_{3}\end{array}\right] \end{array}\left[\begin{array}{c} v_{1}\\ v_{2}\\ v_{3} \end{array}\right]\end{array}" />
   
   + 5.2. 或者是这样理解，一个空间被压缩为一条直线。
   <img src="https://latex.codecogs.com/svg.latex?\begin{array}{c}&space;\begin{array}{ccc}&space;i\;&space;&&space;\;j\;&space;&&space;\;k\end{array}\\&space;\left[\begin{array}{ccc}&space;u_{1}&space;&&space;u_{2}&space;&&space;u_{3}\end{array}\right]&space;\end{array}\left[\begin{array}{ccc}&space;i&space;&&space;0&space;&&space;0\\&space;0&space;&&space;j&space;&&space;0\\&space;0&space;&&space;0&space;&&space;k&space;\end{array}\right]" title="\begin{array}{c} \begin{array}{ccc} i\; & \;j\; & \;k\end{array}\\ \left[\begin{array}{ccc} u_{1} & u_{2} & u_{3}\end{array}\right] \end{array}\left[\begin{array}{ccc} i & 0 & 0\\ 0 & j & 0\\ 0 & 0 & k \end{array}\right]" />
   
## 向量叉积
1. 向量叉乘与矩阵行列式的关系。基向量/列向量构成的矩阵。
2. 叉乘最重要的用途是算两个向量张成的平面的【法向量】的方向，而这个法向量的长度是平行四边形面积。
3. 叉乘的定义由四元数乘法得来。
   + <img src="https://latex.codecogs.com/svg.latex?ijk=-1,\quad&space;ij=k,\quad&space;jk=i,\quad&space;ki=j" title="ijk=-1,\quad ij=k,\quad jk=i,\quad ki=j" />
   + <img src="https://latex.codecogs.com/svg.latex?\overrightarrow{u}\times\overrightarrow{v}=\left[\begin{array}{ccc}&space;i&space;&&space;j&space;&&space;k\\&space;u_{1}&space;&&space;u_{2}&space;&&space;u_{3}\\&space;v_{1}&space;&&space;v_{2}&space;&&space;v_{3}&space;\end{array}\right]" title="\overrightarrow{u}\times\overrightarrow{v}=\left[\begin{array}{ccc} i & j & k\\ u_{1} & u_{2} & u_{3}\\ v_{1} & v_{2} & v_{3} \end{array}\right]" />
   
## 基变换
1. 基向量张成空间，坐标系。基向量之间可以不垂直，但平行且各向等距。
2. 空间本身没有网格。选择不同的坐标系，对同一个向量就有不同的表达。
3. 基向量的变换，坐标轴的变换。
4. 乘以矩阵的逆，还原变换。

## 特征向量与特征值
1. 线性变换(Linear Transformation)/行列式(Determinant)/线性方程组(Linear Systems)/基变换(Change Basis)的关系。
2. 理解线性变换作用的关键往往较少依赖特定坐标系。更好的方法是求出特征向量与特征值。
3. Ax=λx，x 是 A 的一个特征向量，在变换中停留在张成的空间里。
4. 特征向量就是旋转轴。特征值出现复数的情况，一般对应于某种旋转。
5. 一组基向量(同样是特征向量)构成的集合被称为一个“特征基”。
6. 一个线性变换在特征基的角度就是拉伸。
7. 本节的习题解答[fibonacci.pdf](fibonacci.pdf)。

## 抽象向量空间
1. 空间独立于坐标存在。坐标系依赖于所选的基向量。
2. 行列式和特征向量与所选坐标系无关。
   + 2.1 行列式是一个变换对面积或体积或某种积的缩放比例。
   + 2.2 特征向量是变换中留在它所张成的空间中的向量。
   + 2.3 这两者都暗含于空间中的性质。
   + 2.4 自由选取坐标系，不会改变空间的最根本的值。
3. 函数(function)只是另外一种向量。
   + 3.1 函数叠加类似于向量相加。
   + 3.2 函数的倍数类似于向量数乘。
4. 从向量数乘(Vector Scaling)角度考虑：
   + 4.1 线性变换(Linear Transformation)
   + 4.2 零空间(Null Space)
   + 4.3 点积(Dot Porduct)
   + 4.4 所有特征的东西(Eigen-everything)
5. 函数同样也可以从以上角度考虑。
   + 5.1 线性算子(Linear Operator) = 线性变换(Linear Transformation)
   + 5.2 线性(Linearity)的严格定义：a. 可加性(Additivity)；b. 成比例(Scaling)/一阶齐次。
   + 5.3 线性变换保持向量加法运算和数乘运算。
   + 5.4 点积(Dot Porduct) = 内积(Inner Porduct)
   + 5.5 特征向量(Eigenvector) = 特征函数(Eigenfunction)
6. 数学中有很多类似于向量的事物。
   + 6.1 所处理的对象集合具有合理的数乘和相加概念。加法封闭和纯量乘法封闭。
   + 6.2 线性代数中有关向量、线性变换、零空间、点积，和其它等等所产生的概念都应该适用于它。
7. 普适的概念就是抽象。
