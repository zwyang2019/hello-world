function result = func_f(x,alpha)

%% mazia
result = 1/(2*cos(pi*alpha/2));
result = result*( ...
 gamma(4)/gamma(4-alpha)*( x^(3-alpha)+(1-x)^(3-alpha) )  - 3*gamma(5)/gamma(5-alpha) * ( x^(4-alpha) +(1-x)^(4-alpha) )...
                                      +3*gamma(6)/gamma(6-alpha)*( x^(5-alpha)+(1-x)^(5-alpha) )  - gamma(7)/gamma(7-alpha) * ( x^(6-alpha) +(1-x)^(6-alpha) ) );
  
%% ZX_suanli
% result = 10/(2*cos(pi*alpha/2));
% result = result*(...
%     2/gamma(3-alpha)*(x^(2-alpha)+(1-x)^(2-alpha)) -12/gamma(4-alpha)*(x^(3-alpha)+(1-x)^(3-alpha))...
%     +24/gamma(5-alpha)*(x^(4-alpha)+(1-x)^(4-alpha))  );

%% shixiong 
result = 1/(2*cos(pi*alpha/2));
result = result*( ...
 1/gamma(2-alpha)*( x^(1-alpha)+(1-x)^(1-alpha)   )...
 - 2/gamma(3-alpha) * ( x^(2-alpha) +(1-x)^(2-alpha) ) );
  