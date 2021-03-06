function [att, vn, pos] = trjprofile(att0, vn0, pos0, wat, ts)
    att = 0;
    vn = 0;
    pos = 0;
    len = fix(sum(wat(:,5))/ts); %取整  运行的总时间
    
    att = zeros(len, 3);
    vn = att;           %先弄出次数和X Y Z          都是三列
    pos = att;          %先弄出次数和经纬度和次数    都是三列
    kk=1;
    
    %先把初始的加入进去
    att(1,:) = att0';  
    vn(1,:) = vn0'; 
    pos(1,:) = pos0';
    
    %速度从n坐标系到b坐标系
    %先求旋转矩阵然后在算b坐标系的速度
    vb = a2mat(att0)'*vn0; 
    vby = vb(2);   % 求纵向速度
    
    
    
    
%     b = fir1(20, 0.01, 'low');  b = b/sum(b); x = repmat([att0;vby]',length(b),1); % 低通滤波器


     for m=1:size(wat,1);
     	watk = wat(m,:);   %取第几行
        for tk=ts:ts:(watk(5)+ts/10)
            
            %att0 = att0 + watk(1:3)'*ts;
            %vby = vby + watk(4)*ts;
%             x = [x(2:end,:); [att0;vby]']; y = b*x;  % 低通滤波
%             att(kk+1,:) = y(1:3);
%             vn(kk+1,:) = (a2mat(att(kk+1,:)')*[0;y(4);0])';  vn01 = (vn(kk,:)+vn(kk+1,:))/2;
%             eth = earth(pos(kk,:)',vn01');
%             pos(kk+1,:) = pos(kk,:) + [vn01(2)/eth.RMh;vn01(1)/eth.clRNh;vn01(3)]'*ts;  kk = kk+1;
         end
     end
%     att(kk:end,:) = []; vn(kk:end,:) = []; pos(kk:end,:) = [];