function g_alpha = compute_weights_of_fractional_differentials(n,alpha)
%% Compute  weights of the fractional differentials
% Input
%     n: number of elements
%     alpha: order of fractional differential
% Output
%     g_alpha: weights of fractional differentials
% Zhiwei Yang 03/12/2019
% n == dim(g)

g_alpha=zeros(n-1,1);%”√”⁄¥Ê¥¢ g(alpha)
g_alpha(1)=-alpha;
for i=2:n-1
    g_alpha(i)=(1-(alpha+1)/i)*g_alpha(i-1);
end
g_alpha=[1;g_alpha];

end