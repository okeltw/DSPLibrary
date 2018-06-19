function Rm = rect(n, M)
% Returns a rectangular pulse of 1 from 0 to M
% Rm = rect(M,n)
%   Rm = array representing a rectangular pulse
%   n  = sample indices, n1 <= n <= n2, where n1, n2 are not necessarily 0
%        or M
%   M  = sample of which Rm returns to 0, n1 <= M <= n2

Rm = zeros(1, length(n));
Rm((n>=0) & (n<M)) = 1; 

end 