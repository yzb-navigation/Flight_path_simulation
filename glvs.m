global Re ff wie g0 ug arcdeg arcmin arcsec hur dph dpsh ugpsHz   % ȫ�ֱ���
Re = 6378137;               % ����뾶
ff = 1/298.257;             % �������
wie = 7.2921151467e-5;      % ������ת������
g0 = 9.7803267714;          % �������ٶ�
ug = g0*1e-6;               % ΢g
arcdeg = pi/180;            % �Ƕ�
arcmin = arcdeg/60;         % �Ƿ�
arcsec = arcmin/60;         % ����
hur = 3600;                 % Сʱ
dph = arcdeg/hur;           % ��/Сʱ
dpsh = arcdeg/sqrt(hur);    % ��/sqrt(Сʱ)
ugpsHz = ug/sqrt(1);        % ug/sqrt(Hz)
