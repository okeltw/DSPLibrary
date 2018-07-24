function xn = idft(Xk, N)
% Computes inverse discrete fourier transform. Same process as idfs().
%
% xn = idft(Xk, N);
%   xn = N-point finite duration sequence
%   Xk = DFT coeff. array over 0<= k<= N-1
%   N = length of DFT
xn = idfs(Xk, N);
end

