syms t1 t2 l1 l2 l3 l4 l5 s;
T1=[1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
R1=[cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
T2=[1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T3=[1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
R2=[cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
T4=[1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T5=[1 0 0 0; 0 1 0 0; 0 0 1 -l5-s; 0 0 0 1];
P0=[0; 0; 0; 1];
simplify(T1*R1*T2*T3*R2*T4*T5*P0)

l1=50; l2=60; l3=10; l4=50; l5=40; 
for t1=0:0.1:pi*2
    for t2=0:0.1:pi*2
        for s=0:1:20
            Px= l4*cos(t1 + t2) + l2*cos(t1);
            Py= l4*sin(t1 + t2) + l2*sin(t1);
            Pz= l1 + l3 - l5 - s;
            plot3(Px,Py,Pz,'*');
            hold on
    
        end
    end
end