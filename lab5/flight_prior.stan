data {
  int M;//number of years analyzed
  real miles_mean; //mean values of miles
}


generated quantities {
  real alpha = normal_rng(3.15,0.1);
  real theta=normal_rng(0,0.0001);
  int y = poisson_log_rng(alpha+theta*miles_mean);
}
