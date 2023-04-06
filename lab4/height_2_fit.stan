data{
    int N;
    real heights[N];
    vector[N] weight;

}

parameters {
   real <lower=0> sigma; 
   real alpha;
   real beta;
}

transformed parameters {
    vector[N] mu = weight*beta+alpha;
}

model{
    alpha ~ normal(180,20);
    beta ~ lognormal(0,1);
    sigma ~ exponential(0.066);
    heights ~ normal(mu, sigma);

}


generated quantities {
    real height[N];
    for (n in 1:N){
        height[n] = normal_rng(mu[n],sigma);
    }
  
}