function X = dtft(x,n,w)
% Computes the discrete-time Fourier transform
% X = dtft(x,n,w)
%   X = DTFT values computed at w frequencies
%   x = finite duration sequence over n
%   n = sample position vector
%   w = frequency location vector

M = length(w)-1;
k = 0:M;

X = x * (exp(-j*pi/M)) .^ (n'*k); %#ok<IJCL>

end