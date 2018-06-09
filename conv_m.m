function [y,ny] = conv_m(x, nx, h, nh)
nyb = nx(1) + nh(1);
nye = nx(length(x) + nh(length(h);

ny = yb:nye;
y = conv(h,x);
end

