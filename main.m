glvs;                           % ����ȫ�ֱ���
ts = 0.01;  
att0 = [0;0;90]*arcdeg;         %��ת��Ϊ����
vn0 = [0;0;0];          
pos0 = [[34;108]*arcdeg;100];   %��γ�Ⱥ͸߶�
%     ���������� ��������� ��λ������ ������ٶ� ����ʱ��
wat = [  0,         0,          0,         0,         10       %��ֹ
        0,         0,          0,         1,         10       %����
        0,         0,          0,         0,         10       %����
        5,         0,          0,         0,         4        %̧ͷ
        0,         0,          0,         0,         10       %����
       -5,         0,          0,         0,         4        %��ͷ
        0,         0,          0,         0,         10       %����
        0,         10,         0,         0,         1        %���
        0,         0,          9,         0,         10       %ת��
        0,        -10,         0,         0,         1        %���
        0,         0,          0,         0,         10       %����
        0,         0,          0,        -1,         10       %����
        0,         0,          0,         0,         10  ];    %��ֹ
wat(:,1:3) = wat(:,1:3)*arcdeg/1;                   % ->deg/s �Ѷ�ת��Ϊ����
                      %��ʼ��̬  �ٶ� ��γ�ȸ߶� �仯 ����
[att, vn, pos] = trjprofile(att0, vn0, pos0, wat, ts);
% [wm, vm] = av2imu(att, vn, pos, ts);
% tt = (0:length(att)-1)'*ts;
% % �켣��ͼ
% mysubplot(221, tt, att/arcdeg, '\theta, \gamma, \psi / \circ');
% mysubplot(222, tt, vn, 'v ^n / m/s');
% mysubplot(223, tt, deltapos(pos), '\Deltap / m');
% mysubplot(224, pos(:,2)/arcdeg, pos(:,1)/arcdeg, 'L / \circ', '\lambda / \circ');
%           hold on, plot(pos(1,2)/arcdeg, pos(1,1)/arcdeg, 'ro');
% %  ����������Ϣ��ͼ
% mysubplot(121, tt(2:end), wm/ts/arcdeg, 'Gyro / \circ/s');
% mysubplot(122, tt(2:end), vm/ts, 'Acc / m/s^2');
