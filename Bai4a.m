syms l3 l4 l5 l6 t1 t2 t4;
R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
R2 = [cos(t2) 0 sin(t2) 0;0 1 0 0;-sin(t2) 0 cos(t2)  0; 0 0 0 1];
T2 = [1 0 0 l4+l5; 0 1 0 0; 0 0 1 0; 0 0 0 1];
R3 = [cos(t4) 0 sin(t4) 0;0 1 0 0;-sin(t4) 0 cos(t4)  0; 0 0 0 1];
T3 = [1 0 0 l6; 0 1 0 0; 0 0 1 0; 0 0 0 1];
P0=[0;0;0;1];
simplify(R1*T1*R2*T2*R3*T3*P0)

l3 = 30; l4= 20; l5=5; l6 =40;  
 for t1=0:0.1:2*pi
     for t2=0:0.1:pi
         for t4=0:0.1:pi
         Px =cos(t1)*(l6*cos(t2 + t4) + l4*cos(t2) + l5*cos(t2));
         Py =sin(t1)*(l6*cos(t2 + t4) + l4*cos(t2) + l5*cos(t2));
         Pz =l3 - sin(t2)*(l4 + l5) - l6*sin(t2 + t4);
         plot3(Px,Py,Pz, '*');
         hold on
         end
     end
 end