syms l1 l2 l3 l4 l5 l6 l7 t1 t2 t3 s;
T1=[1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
R1=[cos(t1) -sin(t1) 0 0;sin(t1) cos(t1) 0 0;0 0 1 0;0 0 0 1];
T2=[1 0 0 0;0 1 0 0;0 0 1 l2;0 0 0 1];
T3=[1 0 0 0;0 1 0 l4;0 0 1 0;0 0 0 1];
R2=[cos(t2) -sin(t2) 0 0;sin(t2) cos(t2) 0 0;0 0 1 0;0 0 0 1];
T4=[1 0 0 0;0 1 0 0;0 0 1 l3;0 0 0 1];
T5=[1 0 0 0;0 1 0 l5;0 0 1 0;0 0 0 1];
T6=[1 0 0 0;0 1 0 0;0 0 1 -l6-s;0 0 0 1];
R3=[cos(t3) -sin(t3) 0 0;sin(t3) cos(t3) 0 0;0 0 1 0;0 0 0 1];
T7=[1 0 0 0;0 1 0 0;0 0 1 -l7;0 0 0 1];
P0=[0;0;0;1];
simplify(T1*R1*T2*T3*R2*T4*T5*T6*R3*T7*P0)


l1=50; l2=10; l3=10; l4=30; l5=25; l6=30; l7=20;
 for t1=0:0.1:2*pi
     for t2=0:0.1:2*pi
          for t3=0:0.1:2*pi
              for s=0:1:10
                  Px=-l5*sin(t1 + t2) - l4*sin(t1);
                  Py=l5*cos(t1 + t2) + l4*cos(t1);
                  Pz= l1 + l2 + l3 - l6 - l7-s;
                  plot3(Px,Py,Pz,'*')
                  hold on
              end
          end
     end
 end
 
 