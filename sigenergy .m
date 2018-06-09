function epsilon = sigenergy(x)
% Calculates the energy of finite signal x
% Implements sum(x .^ conj(x))
% ----------------------------
% epsilon = sigenergy(x)
epsilon = sum(x .^ conj(x));
end

