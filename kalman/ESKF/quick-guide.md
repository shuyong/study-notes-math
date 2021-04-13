# MEKF 入门快速指南
=================

# 前言

在姿态估计中所使用的卡尔曼滤波器中：
* Error-State Kalman Filter
* Multiplicative Kalman Filter
* Indirect Kalman Filter

大多指的是同一个东西。

乘性卡尔曼滤波器(Multiplicative Extended Kalman Filter, MEKF)因其在数学上能对旋转做最优估计而著称。因为旋转是群而不是向量，只对乘法封闭，因此不能用卡尔曼滤波器直接估计，因为协方差运算必须用减法。所以只能将要估计的状态量分为标称状态和误差状态，先用卡尔曼滤波器估计误差状态，再将误差状态注入标称状态，则标称状态也就成了最优估计，这就解决了旋转不能直接估计的问题，因此这种方法也称间接卡尔曼滤波。又因为估计的是误差，所以又叫误差状态卡尔曼滤波。

如今对估计旋转的问题又有新进展，引入了李群和流形。因此最新的滤波器又被称为流形卡尔曼滤波(Manifold Extended Kalman Filter, MEKF)

# 说明

此处主要介绍工程实现的快速入门。理论的发展脉络在另外的文档列出。

入门了解 MEKF 的一些基本概念，可看文献[5]和[10]。

文献[1]是最早一份介绍 MEKF 完整实现的教材。里面不但介绍了高精度积分的方法，还推导了泰勒级数的封闭形式的解，有很高的工程实用性。不过要注意的是，文献[1]是针对航天人员培训用，所以里面使用的四元数方程是 JPL 约定。并且在测量更新这一章介绍的是航天所用的星光传感器，和地面上所用传感器不一样。

文献[2]是很实用的实现教材。在文献[1]中，只推导了姿态估计方程，而在文献[2]中，则推导姿态、速度和位置的方程，测量更新也加入了磁力计和GPS，更适合地面使用。

文献[3]是近年来最好最详细的介绍 MEKF 完整实现的教材。从理论到实现都说了遍，也关注高精度积分的方法，和推导泰勒级数的封闭形式的解。不过因为这是作者博士毕业论文的一个副产品，学术气息更浓一些。事无巨细，有时候不好抓住实现的脉络。文献[9]是作者在这方面最新的教材。

文献[4]和文献[6]是一些参考实现，可以一边看实现一边回看上面的教材，则更容易理解 MEKF。特别是文献[6]是文献[2]的简单实现，更容易对照理解。

如果要考虑现实的复杂问题，则可以参考文献[7]。文献[7]的实现在[[ROScopter](https://github.com/byu-magicc/roscopter)]，是很现实的项目，在代码里还要处理更多的细节。

MEKF 有一个特点，就是在一次循环迭代结束时，有一次 reset 操作。最新的研究进展，为提高数据精度，对 reset 操作还需要全阶处理。对此请看文献[8]

从文献[11]开始，可以看到 Manifold EKF 的发展势头。突破口已经打开，灌水即将到来。最后一篇好像还是纯国人的文章，可惜没有中文文档。

# 文件列表

## Multiplicative Extended Kalman Filter

01. [Indirect Kalman filter for 3D attitude estimation - 2007](http://mars.cs.umn.edu/tr/reports/Trawny05b.pdf)

02. [Multiplicative Quaternion Extended Kalman Filtering for Nonspinning Guided Projectiles - 2013](https://apps.dtic.mil/sti/pdfs/ADA588831.pdf)

03. [Quaternion kinematics for the error-state KF - 2017](http://www.iri.upc.edu/people/jsola/JoanSola/objectes/notes/kinematics.pdf)

04. [Sensor Fusion Implementation - 2017](http://www.telesens.co/category/sensor-fusion/)

05. [ESKF-tutorial - 2020](https://github.com/martiabr/ESKF-tutorial)

06. [The Multiplicative Extended Kalman Filter - 2020](https://matthewhampsey.github.io/blog/2020/07/18/mekf)

07. [Relative multiplicative extended Kalman filter for observable GPS-denied navigation - 2020](https://scholarsarchive.byu.edu/facpub/1963/)

08. [Full-Order Solution to the Attitude Reset Problem for Kalman Filtering of Attitudes - 2020](https://arc.aiaa.org/doi/pdfplus/10.2514/1.G004134)

## Video

09. [Lie theory for the roboticist - 2020](https://www.youtube.com/watch?v=nHOcoIyJj2o)

10. [An Improved EKF - The Error State Extended Kalman Filter - 2020](https://www.coursera.org/lecture/state-estimation-localization-self-driving-cars/lesson-4-an-improved-ekf-the-error-state-extended-kalman-filter-7Nwfw)

## Manifold Extended Kalman Filter

11. [Integrating Generic Sensor Fusion Algorithms with Sound State Representations through Encapsulation of Manifolds - 2011](https://arxiv.org/pdf/1107.1119.pdf)

12. [Orientation Estimation by Means of Extended Kalman Filter, Quaternions, and Charts - 2017](https://rua.ua.es/dspace/bitstream/10045/67917/8/JoPhA_08_01_03.pdf)

13. [Kalman Filtering for Attitude Estimation with Quaternions and Concepts from Manifold Theory - 2019]

14. [A Code for Unscented Kalman Filtering on Manifolds (UKF-M) - 2020](https://arxiv.org/abs/2002.00878)

15. [Embedding manifold structures into Kalman filters - 2021](https://arxiv.org/abs/2102.03804)

