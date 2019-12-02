Quaternion kinematics for the error-state KF - 2017
http://www.iri.upc.edu/people/jsola/JoanSola/objectes/notes/kinematics.pdf

1711.02508.tar : 文档的原始源码，tex 版本。从下面地址获得
https://arxiv.org/abs/1711.02508

误差状态卡尔曼滤波器的四元数动力学

* * *
MSCKF中用的ESKF(Error-State Kalman Filter)，为什么要用ESKF而不是EKF呢? 参考文献[2]中解释了几点理由, 翻译过来大体是：
* 方向(姿态)的误差状态是最小参数描述, 避免了冗余参数化导致协方差矩阵奇异;
* 误差状态系统通常在原点附近, 参数远离奇异点或万向节锁等问题, 从而确保EKF线性化一直有效;
* 误差状态通常很小, 意味着二阶项可以忽略. 这使得Jacobian能够快速容易计算;
* 误差状态的动态变化较慢, 这是因为大的信号动态性被积分到了额定状态. 这意味着EKF更新频率可以比预测频率低.(VIO中通常IMU数据频率为100-500HZ, 而图像频率只有20-30HZ左右)。
