clear;close all
n = 2^4;%num of elements
alpha = 1.5;
p1 = func_p1(alpha);
p2 = func_p2(alpha);
p3 = func_p3(alpha);
h = 1/n;
[f,u,uh,x] = deal(zeros(n-1,1));

h=1/n;
for i=1:n-1
    x(i)=0+(i)*h;
    f(i) = func_f(x(i),alpha);
    u(i)= u_true(x(i));
end

coef = 1/(2*(cos(alpha*pi/2)));
g_alpha = compute_weights_of_fractional_differentials(n,alpha);%产生分数阶导数供后面求导用
% g_alpha = g_alpha/h^(alpha);
w_alpha = func_w(alpha,p1,p2,p3,g_alpha);
error = w_alpha-g_alpha;
w_alpha = w_alpha/h^(alpha);
AL = compute_left_fractional_stiffness_matrix(w_alpha,n);% dim(AL) = n-1;只算内点的
A = AL+AL';
%% precondiotion


% p1 = func_p1(alpha);
% p2 = func_p2(alpha);
% p3 = func_p3(alpha);
% A = p1*A + p2*A + p3*A;

uh = coef*A\f;
kan_error = [u,uh,u-uh];
plot(x',u,'r--',x',uh,'b-')
error = max(abs(u-uh));
elements = n;
table(elements,error)
