syms t1 t3 l1 l2;
R1=[cos(-t1) -sin(t1) 0 0;sin(t1) cos(t1) 0 0;0 0 1 0;0 0 0 1];
T1=[1 0 0 0;0 1 0 l1;0 0 1 0; 0 0 0 1];
R2=[cos(-t3) -sin(-t3) 0 0;sin(-t3) cos(t3) 0 0;0 0 1 0;0 0 0 1];
T2=[1 0 0 0;0 1 0 l2;0 0 1 0;0 0 0 1];
P0=[0;0;0;1];
simplify(R1*T1*R2*T2*P0)


l1=20;l2=25;
for t1=0:0.2:pi/2
    for t3=0:0.1:pi/2
            Px=- l1*sin(t1) - l2*sin(t1 - t3);
            Py= l1*cos(t1) + l2*cos(t1 - t3);
            plot(Px,Py,'*')
            hold on
    end
end