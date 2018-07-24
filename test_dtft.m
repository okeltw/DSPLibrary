n = -1:3; x=1:5; k = 0:500;  w = (pi/500)*k;
X = dtft(x,n,w);
magX = abs(X); angX = angle(X);
realX = real(X); imagX = imag(X);

subplot(2,2,1); plot(k/500, magX); grid
title('Magnitude Part');

subplot(2,2,3); plot(k/500, angX/pi); grid
xlabel('Frequency in \pi units'); title('Angle Part');

subplot(2,2,2); plot(k/500, realX); grid
title('Real Part');

subplot(2,2,4); plot(k/500, imagX); grid
title('Imaginary Part')