data{
    int N;
    int <lower=0> y;
}

parameters {
   real <lower=0,upper=1> p;
}
model{
   p ~ normal(0.2, 0.01);
   y ~ binomial(N,p);

}

generated quantities {
   int y_pred = binomial_rng(N,p);
}