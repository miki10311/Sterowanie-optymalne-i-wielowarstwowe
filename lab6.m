clear all;
close all;

H=[0,1;1,0];
A=[0.5,0;0,0.25];
B=eye(2);
I=eye(2);

y1=1;
y2=2;

y=[y1;y2];
%Q=(y1-1)^2+(y2-2)^2;

K=(I-A*H)^(-1) *B;

u=(K)^(-1) *y;


%%%%%%%%%%%%%%%%%%%%%%%%%%%

u11=(y(1)-A(1,:).*(H(1,:)*y))./B(1,:);
u22=(y(2)-A(2,:).*(H(2,:)*y))./B(2,:);

%%%%%%%%%%%%%%%%%%%%%%%%%%%

lambda=2;
a=K(1)*K(3)+K(2)*K(4);
b=K(3)*K(3)+K(4)*K(4)+lambda;
c=K(1)*K(1)+K(2)*K(2)+lambda;

u2=(c*(K(3)+2*K(4)-a*K(1)+2*K(2)))/(c*b-a*a);
u1=(-b*u2+K(3)+2*K(4))/(a);

H1=-8*u1*u1*(K(3)*K(3)+K(4)*K(4)+lambda);
H2=-8*u2*u2*(K(1)*K(1)+K(2)*K(2)+lambda);
H3=16*u1*u2*(K(1)*K(3)+K(2)*K(1));

detHesjan=H1+H2+H3;



