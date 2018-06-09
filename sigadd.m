function [y,n] = sigadd(x1,n1,x2,n2)
% Implements y(n) = x1(n) + x2(n)
% -------------------------------
% [y,n] = sigadd(x1,n1,x2,n2)
%   y  = sum of sequence over n, which includes n1 and n2
%   x1 = first sequence over n1
%   x2 = second sequence over n2 (n2 can  be different from n1)

%% Setup
n = min((n1), min(n2)) : max(max(n1), max(n2));
y1 = zeros(1, length(n)); 
y2 = y1;

%% Process
% [6/8/2018] Edited the original function to use logical indexing; improves
% performance.
y1((n>=min(n1)) & (n<=max(n1))) = x1;
y2((n>=min(n2)) & (n<=max(n2))) = x2;

y = y1+y2;

end

