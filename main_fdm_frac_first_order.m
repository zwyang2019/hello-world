clear;close all
n = 2^4;%num of elements
alpha = 1.5;
h = 1/n;
[f,u,uh,x] = deal(zeros(n-1,1));

h=1/n;
for i=1:n-1
    x(i)=0+(i)*h;
    f(i) = func_f(x(i),alpha);
    u(i)= u_true(x(i));
end

coef = 1/(2*(cos(alpha*pi/2)));
g_alpha = compute_weights_of_fractional_differentials(n,alpha);%���������׵�������������
g_alpha = g_alpha/h^(alpha);
AL = compute_left_fractional_stiffness_matrix(g_alpha,n);% dim(AL) = n-1;ֻ���ڵ��
A = AL+AL';
% p1 = func_p1(alpha);
% p2 = func_p2(alpha);
% p3 = func_p3(alpha);
% A = p1*A + p2*A + p3*A;
%% precondiotion

% P = diag()
% A_pred = 

uh = coef*A\f;
kan_error = [u,uh,u-uh];
plot(x',u,'r--',x',uh,'b-')
error = max(abs(u-uh));
elements = n;
table(elements,error)
