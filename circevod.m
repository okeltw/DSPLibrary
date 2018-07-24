function [xec, xoc] = circevod(x)
% Signal decomposition into circular-even and circular-odd parts
%
% [xec, xoc] = circevod(x)
%   xec = circular-even component of signal x
%   xoc = circular-odd component of signal x
%   x = real signal

if any(imag(x) ~= 0)
    error('x is not a real sequence')
end

N = length(x); n = 0:N-1;
xec = 0.5*(x + x(modn(-n,N)+1));
xoc = 0.5*(x + x(modn(-n,N)+1));
end

