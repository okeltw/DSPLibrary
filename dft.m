function Xk = dft(xn, N)
% Computes discrete Fourier transform. Same process as dfs().
%
% Xk = dft(xn,N)
%   Xk = DFT coeff. array over 0<= k<= N-1
%   xn = N-point finite duration sequence
%   N = length of DFT

Xk = dfs(xn, N);
end

