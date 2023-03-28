generated quantities {
   int N = 50;
   int <lower=0> y;
   real <lower=0,upper=1>p = normal_rng(0.2, 0.01);

   y = binomial_rng(N,p);
}