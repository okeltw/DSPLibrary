function x = deconv_m(y,h,n)
% Given discrete samples of output y and impulse response h, and 
% sample times n, deconvolve input x.
% ------------------------------
% x = deconv_m(y,h,n)
    x = zeros(1, length(n));
    prev = 0;
    for a = 1:length(n)
        for b = 1:a-1
            % Compute the impact of previous samples
            prev = prev + x(b) * h(a-b+1);
        end

        % The input is the ouput, minus the resounding effect of previous
        % samples, scaled down by the impulse response.
        x(a) = (y(a) - prev)/h(1);
        prev = 0;
    end
end

