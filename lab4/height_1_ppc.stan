generated quantities {
    
    real mu = normal_rng(180,20);
    real sigma = exponential_rng(0.066);
    real height = normal_rng(mu, sigma);
}