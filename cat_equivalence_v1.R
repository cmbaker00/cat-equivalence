# Cat equivalence model v1

# Parameters
ngr = 0.1 # net growth rate of bird species = birth rate - death rate. Without predation, 0 is no change through time
Nbird = 4000000 # number of birds in region
Ncat = 100 # number of cats in region
Nrat = 3000 # number of rats in region

P_cat_bird = 20 # number of birds killed per cat per breeding season
P_cat_fledge = 40 # number of fledglings killed per cat per breeding season

P_rat_bird = 3 # number of birds killed per rat per breeding season
P_rat_egg = 40 # number of eggs eaten per rat per breeding season

parameters = list(ngr = ngr, Nbird = Nbird, Ncat = Ncat, Nrat = Nrat, P_cat_bird = P_cat_bird, P_cat_fledge = P_cat_fledge,
                  P_rat_bird = P_rat_bird, P_rat_egg = P_rat_egg)

rate.of.change <- function(p){
  p$ngr*p$Nbird - p$Ncat*(p$P_cat_bird + p$P_cat_fledge) - p$Nrat*(p$P_rat_bird + p$P_rat_egg)
}

rate.of.change(parameters)