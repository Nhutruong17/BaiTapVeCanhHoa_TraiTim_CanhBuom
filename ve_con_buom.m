%v?con b??m b??m siêu ??p
l1 = 40;
l2 = 40;
for t = 0:0.01:2*pi
    x = sin(t)*((exp(cos(t)))-2*cos(4*t)+(sin(t/12)^5));
    y = cos(t)*((exp(cos(t)))-2*cos(4*t)+(sin(t/12)^5));
    c2 = ((x^2)+(y^2)-(l1^2)-(l2^2))/(2*l1*l2);
    s2 = sqrt(abs(1-(c2)^2));
    t2 = atan2(s2,c2);
    c1 = x*(l1+l2*cos(t2))+ y*l2*sin(t2);
    s1 = y*(l1+l2*cos(t2))-(x*l2*sin(t2));
    t1 = atan2(s1,c1);
    Px = l1*cos(t1)+l2*cos(t1+t2);
    Py = l1*sin(t1)+l2*sin(t1+t2);
    subplot(2,1,1);
    plot(t,t1*180/pi,'*',t,t2*180/pi,'*');
    xlabel('t');
    ylabel('rotation');
    hold on;
    subplot(2,1,2);
    plot(Px,Py,'*');
    xlabel('x(cm)');
    ylabel('y(cm)'); 
    pause(0.1);
    hold on;
    axis equal;
end