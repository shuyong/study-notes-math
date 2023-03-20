# 刚体运动与李群

01. [Lie Groups and Lie Algebras in Robotics - 2006](https://www.researchgate.net/publication/226140062_Lie_Groups_and_Lie_Algebras_in_Robotics)
    + 机器人学中的李群和李代数
01. [Rigid Body Motion and the Euclidean Group - 2008](https://www.seas.upenn.edu/~meam620/notes/RigidBodyMotion3.pdf)
    + 刚体运动与欧几里德群
    + [The Lie group SE(3)](https://www.seas.upenn.edu/~meam620/slides/kinematicsI.pdf)
01. [Lecture Notes in Lie Groups - 2011](https://arxiv.org/abs/1104.1106)
    + 关于李群的课程讲义
01. [Lie Group Formulation of Articulated Rigid Body Dynamics - 2012](http://www.cs.cmu.edu/~junggon/tools/liegroupdynamics.pdf)
    + 铰接刚体动力学的李群公式
    + [GEAR (Geometric Engine for Articulated Rigid-body simulation)](http://www.cs.cmu.edu/~junggon/tools/gear.html)
    + 文中在推导过程中使用的是局部坐标系，导致伴随矩阵和使用全局坐标系的不一样。
01. [Lie Groups for 2D and 3D Transformations - 2017](http://ethaneade.com/lie.pdf)
    + 二维和三维变换的李群
01. [A micro Lie theory for state estimation in robotics - 2018](https://arxiv.org/abs/1812.01537)
    + [A small header-only library for Lie theory](https://github.com/artivis/manif)
01. [SE(3) Geometry and Kinematics - 2019](https://natanaso.github.io/ece276a2019/ref/ECE276A_12_SE3.pdf)

# 空间向量代数

01. [Robot Dynamics: Equations and Algorithms - 2000](http://royfeatherstone.org/abstracts.html#icra2000)
    + 机器人动力学：方程与算法
01. [Plücker Basis Vectors - 2006](http://royfeatherstone.org/abstracts.html#icra2006)
    + Plücker基向量
01. [Rigid Body Dynamics Algorithms - 2008](http://www.springer.com/it/book/9780387743141)
01. [Dynamics. Springer Handbook of Robotics - 2008](https://users.dimi.uniud.it/~antonio.dangelo/Robotica/2019/helper/Handbook-dynamics.pdf)
01. [A Beginner's Guide to 6-D Vectors (Part 1) - 2010](http://dx.doi.org/10.1109/MRA.2010.937853)
    + 6-D向量初学者指南1
01. [A Beginner's Guide to 6-D Vectors (Part 2) - 2010](http://dx.doi.org/10.1109/MRA.2010.939560)
01. [Spatial Vector and Dynamics Software - 2015](http://royfeatherstone.org/spatial/index.html)
01. [Kinematics & Dynamics. Springer Handbook of Robotics - 2016](https://link.springer.com/book/10.1007/978-3-319-32552-1)
    + 机器人学基础：运动学与动力学
01. [Primer on Spatial Algebra - 2018](https://jan.carius.io/assets/spatial_velocities/spatial_velocities.pdf)
    + 空间代数入门
01. [Efficient Analytical Derivatives of Rigid-Body Dynamics using Spatial Vector Algebra - 2021](https://arxiv.org/abs/2105.05102)
    + 使用空间向量代数的刚体动力学高效解析导数
    + [Pinocchio: Rigid Body Dynamics algorithms](https://github.com/stack-of-tasks/pinocchio)
    + [Pinocchio implementation of IDSVA](https://github.com/shubhamsingh91/pinocchio)
    + [MATLAB version](https://github.com/ROAM-Lab-ND/spatial_v2_extended)
01. [Introduction to Spatial (6D) Vectors - 2022](http://royfeatherstone.org/teaching/IntroSpVec2022.zip)
    + 空间 (6D) 向量简介
01. [Computational Robot Dynamics - 2022](http://royfeatherstone.org/teaching/CompuRobDyn2022.zip)

# 不确定性

01. [Characterizing the Uncertainty of Jointly Distributed Poses in the Lie Algebra - 2019](https://arxiv.org/abs/1906.07795)
    + 李代数中联合分布位姿不确定性的刻画
    + [code](https://bitbucket.org/jmangelson/lie)
01. [Reducing the uncertainty about the uncertainties - 2021](https://gtsam.org/2021/02/23/uncertainties-part1.html)
    + 减少不确定性的不确定性

# 编程与实现

01. [A small header-only library for Lie theory](https://github.com/artivis/manif)
    + [A micro Lie theory for state estimation in robotics](https://arxiv.org/abs/1812.01537)
01. [WOLF: A modular estimation framework for robotics based on factor graphs](https://arxiv.org/abs/2110.12919)
01. [Pinocchio: Rigid Body Dynamics algorithms](https://github.com/stack-of-tasks/pinocchio)
01. [Sophus: C++ implementation of Lie Groups using Eigen](https://github.com/strasdat/Sophus)
01. [wave_geometry - A manifold geometry library for robotics](https://github.com/wavelab/wave_geometry)
    + [On the Manifold: Representing Geometry in C++ for State Estimation](https://uwspace.uwaterloo.ca/handle/10012/14264)
01. [Kindr - Kinematics and Dynamics for Robotics](https://github.com/anybotics/kindr)
01. [GTSAM is a library of C++ classes that implement smoothing and mapping (SAM)](https://github.com/borglab/gtsam)
01. [Spatial Vector and Dynamics Software - 2015](http://royfeatherstone.org/spatial/index.html)
    + [Pinocchio implementation of IDSVA](https://github.com/shubhamsingh91/pinocchio)
    + [extended version](https://github.com/ROAM-Lab-ND/spatial_v2_extended)
01. [GEAR (Geometric Engine for Articulated Rigid-body simulation)](http://www.cs.cmu.edu/~junggon/tools/gear.html)
01. [Mobile Robot Programming Toolkit (MRPT)](https://www.mrpt.org/)
    + [A tutorial on SE(3) transformation parameterizations and on-manifold optimization - 2022](https://ingmec.ual.es/~jlblanco/papers/jlblanco2010geometry3D_techrep.pdf)
01. [SymForce is a fast symbolic computation and code generation library](https://github.com/symforce-org/symforce)
01. [lie](https://bitbucket.org/jmangelson/lie)

# 更高抽象的表示

01. [Rigid Body Dynamics Using Clifford Algebra - 2010](https://www.researchgate.net/publication/226467424_Rigid_Body_Dynamics_Using_Clifford_Algebra)
    + 使用 Clifford 代数的刚体动力学
01. [Dynamics of Mobile Manipulators using Dual Quaternion Algebra - 2020](https://arxiv.org/abs/2007.08444)
    + 使用对偶四元数代数的移动机械臂动力学
01. [Efficient Analytical Derivatives of Rigid-Body Dynamics using Spatial Vector Algebra - 2021](https://arxiv.org/abs/2105.05102)
    + 使用空间向量代数的刚体动力学高效解析导数
    + [Pinocchio: Rigid Body Dynamics algorithms](https://github.com/stack-of-tasks/pinocchio)
    + [Pinocchio implementation of IDSVA](https://github.com/shubhamsingh91/pinocchio)
    + [MATLAB version](https://github.com/ROAM-Lab-ND/spatial_v2_extended)


