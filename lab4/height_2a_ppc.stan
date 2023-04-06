data{
    int N;
    real weight[N];
}

generated quantities {
    real alpha = normal_rng(180,20);
    real beta = normal_rng(0,10);
    real sigma = exponential_rng(0.066);
    real height[N];
    for (n in 1:N)
        height[n] = normal_rng(alpha + beta*weight[n], sigma);
}