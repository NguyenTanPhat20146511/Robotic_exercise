syms l1 l2 l3 l4 l5 t4 t5 t6;
T1 = [1 0 0 l3; 0 1 0 l2; 0 0 1 l1; 0 0 0 1];
R1 = [1 0 0 0; 0 cos(t4) -sin(t4) 0; 0 sin(t4) cos(t4) 0; 0 0 0 1];
T2 = [1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
R2 = [cos(t6) 0 sin(t6) 0; 0 1 0 0; -sin(t6) 0 cos(t6) 0; 0 0 0 1];
R3 = [cos(t5) -sin(t5) 0 0; sin(t5) cos(t5) 0 0; 0 0 1 0; 0 0 0 1];
T3 = [1 0 0 l5; 0 1 0 0; 0 0 1 0; 0 0 0 1];
P0 = [0; 0; 0; 1];
simplify(T1*R1*T2*R2*R3*T3*P0)

l1=20; l2=10; l3=20; l4=10; l5=20;
for t4=0:0.1:pi/2
    for t5=0:0.1:pi/2
        for t6=0:0.1:pi/2
            Px = l3 + l4 + l5*cos(t5)*cos(t6);
            Py = l2 + l5*(cos(t4)*sin(t5) + cos(t5)*sin(t4)*sin(t6));
            Pz = l1 + l5*(sin(t4)*sin(t5) - cos(t4)*cos(t5)*sin(t6));
            plot3(Px,Py,Pz,'*');
            hold on 
        end
    end
end
