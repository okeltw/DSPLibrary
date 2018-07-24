x1 = [1,2,2];
x2 = [1,2,3,4];
expected = [15,  12, 9, 14]; % from book
actual = circonvt(x1, x2, 4);

expectedstr = sprintf(',%0.5f', expected); expectedstr=expectedstr(2:end);
actualstr = sprintf(',%0.5f', actual); actualstr=actualstr(2:end);

errmsg = sprintf('Circonvt test FAILED: expected [%s] vs actual [%s]', expectedstr, actualstr);
assert(all(expected == actual), errmsg);