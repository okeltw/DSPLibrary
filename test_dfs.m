clc; clear

xn = [0,1,2,3];
N =  4;
expected = [6 -2+2i -2-0i -2-2i];
actual = dfs(xn,N);

expectedstr = sprintf(',%f', (expected)); expectedstr = expectedstr(2:end);
actualstr = sprintf(',%f', (actual)); actualstr = actualstr(2:end);

errstr = sprintf('DFS/IDFS test FAILED: expected [%s] did not match actual [%s]', expectedstr, actualstr);

delta = 0.00001; % since we are comparing floats
assert(all((expected-actual)<delta), errstr);