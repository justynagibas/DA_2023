data{
    int N;
    real heights[N];

}

parameters {
   real <lower=0> sigma; 
   real mu;
}

model{
    mu ~ normal(180,20);
    sigma ~ exponential(0.066);
    heights ~ normal(mu, sigma);

}

generated quantities {
   real height  = normal_rng(mu, sigma);
}