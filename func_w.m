function w = func_w(alpha,p1,p2,p3,g)

%% 3 order
% w = zeros(length(g),1);
% w(1) = p1*g(1);
% w(2) = p1*g(2)+p2*g(1);
% for k = 3:length(g)
%    w(k) = p1*g(k) + p2*g(k-1)+p3*g(k-2); 
% end
%% 2 order
w = zeros(length(g),1);
w(1) = alpha/2 * g(1);
% w(2) = p1*g(2)+p2*g(1);
for k = 2:length(g)
   w(k) = alpha/2 *g(k) + (2-alpha)/2 *g(k-1); 
end