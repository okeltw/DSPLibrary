% Example 6.1

test_dir2cas;

dlt = delta; % save delta comparison
delta = impseq(0,0,7);

format long
hcas = casfiltr(b0, B, A, delta);
hdir = filter(b,a,delta);

assert(all( abs(hcas-hdir) < dlt), 'hcas incorrect');