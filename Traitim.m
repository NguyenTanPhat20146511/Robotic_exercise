syms x y ;
l1=50; l2=40; 
for t=0:0.01:2*pi
    x= 13*sin(t);
    y= (169*sin(t)^2)^(1/3)+13*cos(t);
    c2=(x^2+y^2-l1^2-l2^2)/(2*l1*l2);
    s2=sqrt(abs(1-c2^2));
    t2=atan2(s2,c2);
    c1=(l1+l2*c2)*x+l2*s2*y;
    s1=(l1+l2*c2)*y-l2*s2*x;
    t1=atan2(s1,c1);
    subplot(2,1,1)
    plot(t*180/pi,t1*180/pi,'--o',t*180/pi,t2*180/pi,'-o'); 
    pause(0.1);
    xlabel('t');
    ylabel('rotation');
    hold on
    subplot(2,1,2)
    px=l1*cos(t1)+l2*cos(t1+t2);
    py=l1*sin(t1)+l2*sin(t1+t2);    
    axis ( [ -20 20 -20 20 ] );
    plot(px,py,'*');
    xlabel('x(cm)');
    ylabel('y(cm)'); 
    pause(0.1)
    hold on
end
       