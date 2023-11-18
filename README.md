Processing 网格动画
这个 Processing 程序创建了一个网格动画，可以变色并翻转矩形。
homework1_2没有保存图像添加视频的代码
homework1_3为保存图像添加视频的版本

grid：确定每个网格单元的大小。
angle：控制矩形的旋转角度。
startColor 和 endColor：定义用于混合的渐变颜色。
setup() 函数在程序启动时进行初始化，设置画布的大小，定义起始颜色和结束颜色，并禁用描边。

draw() 函数被连续调用，执行以下步骤：

用浅黄色为背景。
使用嵌套的 for 循环遍历网格单元。
根据当前角度计算插值值 (inter)。
使用 lerpColor() 函数根据插值值将起始颜色和结束颜色进行混合。
将填充颜色设置为混合的颜色。
平移至当前网格单元的位置。
根据当前角度旋转矩形。
在网格单元原点处绘制矩形。
恢复之前的变换状态。
angle 变量每帧增加 1，以创建旋转效果。

自定义
你可以根据需要进行实验和自定义：

在 setup() 函数中调整画布大小以适应你的偏好。
修改 grid 变量来改变网格单元的大小。
通过调整 startColor 和 endColor 变量来尝试不同的颜色组合。
修改 angle 变量的增量值来改变旋转速度。

联系方式
如果你有任何问题或建议，请随时联系作者：

电子邮件：2412198830@qq.com
GitHub：yoyoyummy
致谢
Processing：Processing Foundation 提供了创意编程平台。
Processing 社区：Processing 社区对该项目的支持和启发。
感谢使用这个网格动画程序！# Homework
