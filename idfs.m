function xn = idfs(Xk, N)
% Computes inverse discrete Fourier series
%
% xn = idfs(Xk, N)
%   xn = one period of periodic signal over 0 <= n <= N-1
%   Xk = DFS coeff array over = <= k <= N-1
%   N = fundamental period of Xk

n=0:1:N-1;
k=0:1:N-1;
WN = exp(-1j*2*pi/N);
nk = n'*k;
WNnk = WN .^ (-nk);

xn = (Xk * WNnk)/N;
end

