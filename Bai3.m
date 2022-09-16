syms t1 t2 t3 l1 l2 l3 l4 l5 l6 l7 l8;
T1=[1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
T2=[1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
P1=[cos(t1) 0 -sin(t1) 0; 0 1 0 0; sin(t1) 0 cos(t1) 0; 0 0 0 1];
T3=[1 0 0 0; 0 1 0 l3; 0 0 1 0; 0 0 0 1];
P2=[cos(-t1) 0 -sin(-t1) 0; 0 1 0 0; sin(-t1) 0 cos(-t1) 0; 0 0 0 1];
T4=[1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
P3=[cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
T5=[1 0 0 l5; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T6=[1 0 0 0; 0 1 0 -l8; 0 0 1 0; 0 0 0 1];
P4=[cos(t3) 0 -sin(t3) 0; 0 1 0 0; sin(t3) 0 cos(t3) 0; 0 0 0 1];
T7=[1 0 0 0; 0 1 0 l6; 0 0 1 0; 0 0 0 1];
T8=[1 0 0 l7; 0 1 0 0; 0 0 1 0; 0 0 0 1];
P=[0; 0; 0; 1];
simplify(T1*T2*P1*T3*P2*T4*P3*T5*T6*P4*T7*T8*P)


l1=70; l2=50; l3=15; l4=20; l5=15; l6=8; l7=20; l8=5; s=10;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            Px= l2 + l4 + l5*cos(t2) - l6*sin(t2) + l8*sin(t2) + l7*cos(t2)*cos(t3)
            Py= l3 + l6*cos(t2) - l8*cos(t2) + l5*sin(t2) + l7*cos(t3)*sin(t2)
            Pz= l1 + l7*sin(t3);
            plot3(Px,Py,Pz,'*');
            hold on   
        end
    end
end
