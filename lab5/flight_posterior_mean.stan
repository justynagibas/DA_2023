data {
  int M;//number of years analyzed
  vector[M] miles; //number of miles flown each year
  int y[M];//number of fatal accidents
}

parameters {
  real theta;
  real <lower=0>alpha;
}

model {
  alpha ~ normal(3.15,0.1); 
  theta ~ normal(0,0.0001);
  for (k in 1:M) {
    y[k] ~  poisson_log(alpha+miles[k]*theta);
  }
}

generated quantities {
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] =  poisson_log_rng(alpha+miles[k]*theta);
  }
}
