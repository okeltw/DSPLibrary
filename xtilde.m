function [x] = xtilde(x1, P)
% Generates P iterations of periodic signal x1
% ---------------------------------------------
% x = xtilde(x1,P)

x = x1' * ones(1,P);
x = x(:)';

end

