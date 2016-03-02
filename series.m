function dY=series(t,Y,eps,a,d,gamma)
dY=zeros(6,1); 
a2=0;
d=0.57;


% physical params
rho=86;
RL=1; 
R=d*rho
I0=0.00122;
K=0.1306;
Vd0=0.27;
aL=RL*I0/K;
Ld=10^(-8);
C=56*10^(-12);
Cd1=26*10^(-12);
Cd2=1.1*Cd1;

% nondimensional params
dL=RL/rho;
eps=(rho*rho*Cd1)/Ld;
gamma =R*C*rho/Ld;



x1=Y(1);
y1=Y(2);
z1=Y(3);
x2=Y(4);
y2=Y(5);
z2=Y(6);

[eps dL   aL   gamma   d   a2]
[x1 y1 z1 x2 y2 z2]
    
dY(1)=1/eps*(x1-x1^3/3-y1);
dY(2)=x1+z1-dL*y1-aL;
dY(3)=1/gamma*(a2-z1-z2-d*y1);
dY(4)=1/eps*(x2-x2^3/3-y2);
dY(5)=x2+z2-dL*y2-aL;
dY(6)=1/gamma*(a2-z2-z1-d*y2);
