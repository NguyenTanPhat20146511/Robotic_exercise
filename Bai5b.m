syms t3 l1 l2;
R1=[cos(-t2) -sin(t2) 0 0;sin(t2) cos(t2) 0 0;0 0 1 0;0 0 0 1];
T1=[1 0 0 0;0 1 0 l1+cos(t3)*l2;0 0 1 0; 0 0 0 1];
P0=[0;0;0;1];
simplify(R1*T1*P0)

l1=20;l2=25;
for t2=0:0.2:pi
    for t3=0:0.1:pi
            Px=-sin(t2)*(l1 + l2*cos(t3));
            Py= cos(t2)*(l1 + l2*cos(t3));
            plot(Px,Py,'*')
            hold on
    end
end
         