glvs;                           % 加载全局变量
ts = 0.01;  
att0 = [0;0;90]*arcdeg;         %度转化为弧度
vn0 = [0;0;0];          
pos0 = [[34;108]*arcdeg;100];   %经纬度和高度
%     俯仰角速率 横滚角速率 方位角速率 纵向加速度 持续时间
wat = [  0,         0,          0,         0,         10       %静止
        0,         0,          0,         1,         10       %加速
        0,         0,          0,         0,         10       %匀速
        5,         0,          0,         0,         4        %抬头
        0,         0,          0,         0,         10       %匀速
       -5,         0,          0,         0,         4        %低头
        0,         0,          0,         0,         10       %匀速
        0,         10,         0,         0,         1        %横滚
        0,         0,          9,         0,         10       %转弯
        0,        -10,         0,         0,         1        %横滚
        0,         0,          0,         0,         10       %匀速
        0,         0,          0,        -1,         10       %减速
        0,         0,          0,         0,         10  ];    %静止
wat(:,1:3) = wat(:,1:3)*arcdeg/1;                   % ->deg/s 把度转化为弧度
                      %初始姿态  速度 经纬度高度 变化 周期
[att, vn, pos] = trjprofile(att0, vn0, pos0, wat, ts);
% [wm, vm] = av2imu(att, vn, pos, ts);
% tt = (0:length(att)-1)'*ts;
% % 轨迹作图
% mysubplot(221, tt, att/arcdeg, '\theta, \gamma, \psi / \circ');
% mysubplot(222, tt, vn, 'v ^n / m/s');
% mysubplot(223, tt, deltapos(pos), '\Deltap / m');
% mysubplot(224, pos(:,2)/arcdeg, pos(:,1)/arcdeg, 'L / \circ', '\lambda / \circ');
%           hold on, plot(pos(1,2)/arcdeg, pos(1,1)/arcdeg, 'ro');
% %  惯性器件信息作图
% mysubplot(121, tt(2:end), wm/ts/arcdeg, 'Gyro / \circ/s');
% mysubplot(122, tt(2:end), vm/ts, 'Acc / m/s^2');
