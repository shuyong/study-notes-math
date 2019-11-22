# 误差状态卡尔曼滤波器

在姿态估计中所使用的卡尔曼滤波器中：
* Error-State Kalman Filter
* Multiplicative Kalman Filter
* Indirect Kalman Filter

大多指的是同一个东西。有时候 Additive Kalman Filter 也可以算是 ESKF 中的一种，但是在数学上有问题。

# 文件列表
00. [extended kalman filter equation for orientation quaternion](https://math.stackexchange.com/questions/2621677/extended-kalman-filter-equation-for-orientation-quaternion)
    + 介绍了数学上的困境与理论发展现状

01. [Circumventing Dynamic Modeling: Evaluation of the Error-State Kalman Filter applied to Mobile Robot Localization - 1999](https://www.academia.edu/13385785/Circumventing_dynamic_modeling_Evaluation_of_the_error-state_kalman_filter_applied_to_mobile_robot_localization)
    + 规避动态建模：应用于移动机器人定位的误差状态卡尔曼滤波器的评价

02. [Attitude Error Representations for Kalman Filtering - 2002](https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20020060647.pdf)
    + [Attitude Error Representations for Kalman Filtering - 2003](https://www.researchgate.net/publication/245432681_Attitude_Error_Representations_for_Kalman_Filtering)
    + 卡尔曼滤波的姿态误差表示

03. [Attitude estimation or quaternion estimation? - 2003](https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20030093641.pdf)
    + 姿态估计或四元数估计

04. [Multiplicative vs. Additive Filtering for Spacecraft Attitude Determination - 2004](https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20040037784.pdf)
    + [Multiplicative vs. Additive Filtering for Spacecraft Attitude Determination](https://www.researchgate.net/publication/260347976_Multiplicative_vs_Additive_Filtering_for_Spacecraft_Attitude_Determination)
    + 航天器姿态确定的乘法与加法滤波器的对比

05. [Indirect Kalman filter for 3D attitude estimation - 2007](http://mars.cs.umn.edu/tr/reports/Trawny05b.pdf)
    + 三维姿态估计的间接卡尔曼滤波

06. [Lessons Learned - F. Landis Markley - The Complexity of Constraints - 2009](https://www.researchgate.net/publication/257288674_Lessons_Learned)
    + 经验总结 - F. Landis Markley - 约束的复杂性

07. [Improving the Accuracy of EKF-Based Visual-Inertial Odometry - 2012](https://intra.ece.ucr.edu/~mourikis/papers/Li2012-ICRA.pdf)
    + 提高基于EKF的视觉惯性里程测量精度

08. [High-precision, consistent EKF-based visual-inertial odometry - 2013](https://ee.ucr.edu/~mourikis/papers/Li2013IJRR.pdf)
    + 基于EKF的高精度视觉惯性里程测量
    + [High-Precision, Consistent EKF-based Visual-Inertial Odometry](https://pdfs.semanticscholar.org/0be0/c13803cd08e81b7adaada537e91222eb1491.pdf)

09. [Camera-IMU-based Localization: Observability Analysis and Consistency Improvement - 2013](https://journals.sagepub.com/doi/abs/10.1177/0278364913509675)
    + 基于Camera-IMU的定位：可观测性分析和一致性改进

10. [Quaternion kinematics for the error-state KF - 2017](http://www.iri.upc.edu/people/jsola/JoanSola/objectes/notes/kinematics.pdf)
    + 误差状态卡尔曼滤波器的四元数运动学
    + 潦草注释: https://github.com/TurtleZhong/msckf_mono/
    + 同一个人: http://www.xinliang-zhong.vip/msckf_notes/

11. [Sensor Fusion Implementation - 2017](http://www.telesens.co/category/sensor-fusion/)
    + 用Matlab code实现一个21个状态的CAMERA姿态的ESKF。
    + [code](https://github.com/ankur6ue/SensorFusion_KF)

12. [PX4: Estimation & Control Library for Guidance, Navigation and Control Applications - EKF](https://github.com/PX4/ecl/tree/master/EKF/documentation)
    + PX4项目里24个状态的EKF。
    + [Using the ECL EKF](https://docs.px4.io/en/advanced_config/tuning_the_ecl_ekf.html)

13. [Integrating Generic Sensor Fusion Algorithms with Sound State Representations through Encapsulation of Manifolds - 2011](https://arxiv.org/pdf/1107.1119.pdf)
    + 通过封装流形将通用传感器融合算法与声音状态表示相结合

14. [Kalman Filtering for Attitude Estimation with Quaternions and Concepts from Manifold Theory - 2019](https://www.mdpi.com/1424-8220/19/1/149/pdf)
    + 四元数姿态估计的卡尔曼滤波及流形理论的概念
    + [code](http://www.mdpi.com/1424-8220/19/1/149/s1)

# 翻译：[方向四元数的扩展卡尔曼滤波方程](https://math.stackexchange.com/questions/2621677/extended-kalman-filter-equation-for-orientation-quaternion)

处理EKF中旋转的最大问题就是（据我所知）没有合理的方法来定义向量空间中的旋转。欧拉角、四元数和旋转矩阵不是向量，而是形式群。

这是EKF的一个问题，因为它假定所有的状态变量都是向量。例如，想想如何形成四元数的协方差矩阵。协方差矩阵定义为：

![equ 1](https://latex.codecogs.com/svg.latex?E%5B%28x-%5Chat%20x%29%28x-%5Chat%20x%29%5E%5Cmathrm%20T%5D)

但是，在四元数的情况下，![equ 2](https://latex.codecogs.com/svg.latex?%28q-%5Chat%20q%29)是什么意思？它不再是一个单位四元数。旋转矩阵也是这样。欧拉角更微妙一些，但类似的逻辑也适用(如果你减去两个欧拉角的“向量”，结果真正意味着什么？)

考虑到线性化，欧拉角实际上可以工作。这是一个四旋翼飞行器EKF的例子，它使用欧拉角作为[[四旋翼飞行器动力学和控制](https://scholarsarchive.byu.edu/cgi/viewcontent.cgi?article=2324&context=facpub)]的方向状态。显然，Euler角与万向节锁存在问题，而这个源代码并没有解决这个问题，而且由于所有的计算都采用三角函数，欧拉角的计算效率非常低，但它可以作为一个入门的卡尔曼滤波器实现。如果你刚开始，从这里开始可能是有意义的。

然而，为了解决这些问题，一些做航天器姿态估计的聪明人对此进行了研究，并提出了“乘法”EKF(Multiplicative EKF)。在MEKF中，可以考虑到协方差是根据关于某个四元数参考状态的“误差向量”定义的。使用标准四元数动力学传播四元数，然后更新四元数，并使用参数化为吉布斯矢量(gibbs vector)或罗德里格斯参数(rodriguez parameters)的3矢量定义协方差。[[航天器姿态确定的乘法与加法滤波器的对比 - Markley](https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20040037784.pdf)]。吉布斯矢量(gibbs vector)实际上是一个矢量，但它有一个奇点，所以它只适用于小的旋转。因此，需要一个参考四元数，并用一个向量定义该参考四元数的小“误差”。“乘法”一词来源于这样一个事实，即你最终将这个误差向量“乘法”到参考四元数中，而不是像所有其他状态那样用简单的向量加法添加它。

这种处理滤波器状态的非矢量分量的做法最近已经有了一些更好的形式化，一些新的符号使其更自然，并清理了语法，[[通过封装流形将通用传感器融合算法与声音状态表示相结合-Hertzberg等人](https://arxiv.org/pdf/1107.1119.pdf)]。这样可以避免使用误差状态变量，并允许你“假装”处理的是向量状态，而不是这些群对象（如四元数）。我链接的文章有一个使用四元数的UKF实现示例，它可以作为你的实现的一个很好的基础。

# 参考代码
1. [An implementation of an Error State Kalman Filter (ESKF)](https://github.com/je310/ESKF)
1. [Implementation of error-state kalman filter for attitude determination with MARG sensors](https://github.com/gareth-cross/kr_attitude_eskf)
1. [Cardboard VR Toolkit Library (Decompiled sources)](https://github.com/raasun/cardboard)
1. [NXP® Sensor Fusion](https://www.nxp.com/support/developer-resources/software-development-tools/sensor-developer-resources/nxp-sensor-fusion:XTRSICSNSTLBOXX)
   + [Sensor Fusion Software with Matlab Models](https://community.nxp.com/thread/346827)
   + [Trajectory & Sensor Simulation Toolkit](https://github.com/memsindustrygroup/TSim)
1. [Shows implementation of KF based sensor fusion of gyro, accel and camera measurements.](https://github.com/ankur6ue/SensorFusion_KF)
1. [PX4: Estimation & Control Library for Guidance, Navigation and Control Applications - EKF](https://github.com/PX4/ecl/tree/master/EKF)
1. [Kalman Filtering for Attitude Estimation with Quaternions and Concepts from Manifold Theory - code](http://www.mdpi.com/1424-8220/19/1/149/s1)
