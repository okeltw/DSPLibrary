% Example 6.1

b = [1 -3 11 -27 18];  a = [16 12 2 -4 -1];
[b0, B, A]=dir2cas(b,a);

b0_exp = 0.0625; 
B_exp = [1 -0,  9;  1, -3, 2];
A_exp = [1 1 0.5; 1 -0.25 -0.125];

delta = 1E-10;

assert(b0 == b0_exp, "b0 incorrect");
assert(all(all(B-B_exp < delta)), "B incorrect");
assert(all(all(A-A_exp < delta)), "A incorrect");