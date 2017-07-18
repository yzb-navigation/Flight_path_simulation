global Re ff wie g0 ug arcdeg arcmin arcsec hur dph dpsh ugpsHz   % 全局变量
Re = 6378137;               % 地球半径
ff = 1/298.257;             % 地球扁率
wie = 7.2921151467e-5;      % 地球自转角速率
g0 = 9.7803267714;          % 重力加速度
ug = g0*1e-6;               % 微g
arcdeg = pi/180;            % 角度
arcmin = arcdeg/60;         % 角分
arcsec = arcmin/60;         % 角秒
hur = 3600;                 % 小时
dph = arcdeg/hur;           % 度/小时
dpsh = arcdeg/sqrt(hur);    % 度/sqrt(小时)
ugpsHz = ug/sqrt(1);        % ug/sqrt(Hz)
