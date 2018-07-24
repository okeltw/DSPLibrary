function y = cirshiftt(x,m,N)
% Circular shift of m samples wrt size N in sequence x: (time domain)
%
% y = cirshiftt(x,m,N)
%   y = output sequence containing the circular shift
%   x = input sequence of length <= N
%   m = sample shift
%   N = size of circular buffer
%
% Method:
%   y(n) = x((n-m) mod N)

assert(length(x) <= N, 'N must be >= the length of x');

x = [x zeros(1, N-length(x))];
n = 0:1:N-1;
n = mod(n-m, N);
y = x(n+1);

end

