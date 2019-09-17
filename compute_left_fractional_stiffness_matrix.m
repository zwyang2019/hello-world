function AL = compute_left_fractional_stiffness_matrix(g,n)
%% Compute left side fractional differential 
% Input
%     g：weights of fractional differentials
%     n: intervals or number of elements or inside points is n-1
% Output
%     AL: left side fractinal differntial matrix
% Zhiwei Yang 03/12/2019
AL=zeros(n-1,n-1);% Initial matrix to store fractional differentials
%% assemble matrix
for i=1:n-1
    for j=1:n-1
        if i==j
            AL(i,j)=g(2);%主对角线元素
        elseif j==i-1
            AL(i,j)=g(3);%下次对角线元素
        elseif i==j-1
            AL(i,j)=g(1);%上次对角线元素
        elseif j<i-1
            AL(i,j)=g(i-j+2);%左下方元素
        else
            AL(i,j)=0;%其他地方为零
        end
    end
end
