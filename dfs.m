function [Xk] = dfs(xn, N)
% Computes discrete Fourier series coefficients
%
% Xk = dfs(xn,N);
%   Xk = DFS coeff. array over = <= k <= N-1
%   xn = one period of periodic signal over 0 <= n <= N-1
%   N  = fundamental period of xn

n=0:1:N-1;
k=0:1:N-1;
WN = exp(-j*2*pi/N);
nk = n'*k;
WNnk = WN .^ nk;

Xk = xn * WNnk;
end

