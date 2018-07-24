function X = dtft(x,n,w)
% Computes the discrete-time Fourier transform
% X = dtft(x,n,w)
%   X = DTFT values computed at w frequencies
%   x = finite duration sequence over n
%   n = sample position vector
%   w = frequency location vector

x = x(:);
x = x.';
n = n(:);
n = n.';
w = w(:);
w = w.';

W=exp(-j*w.'*n);
X=W*(x.');
X = X.';

end