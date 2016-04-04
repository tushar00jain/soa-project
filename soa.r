
library(EpiModel)

param <- param.dcm(inf.prob = 0.1, act.rate = 0.5)
init <- init.dcm(s.num = 100000, i.num = 50)
control <- control.dcm(type = "SI", nsteps = 500)

mod <- dcm(param, init, control)

mod

plot(mod)

# param <- param.dcm(inf.prob = 0.1, act.rate = 0.5)
# init <- init.dcm(s.num = 100000, i.num = 50)
# control <- control.dcm(type = "SI", nsteps = 500)
param <- param.dcm(inf.prob = 0.7, act.rate = 1, rec.rate = 0.1,
                   b.rate = 0.013, ds.rate = 0.008, di.rate = 0.5, dr.rate = 0.008)
init <- init.dcm(s.num = 1000, i.num = 100, r.num = 0)
control <- control.dcm(type = "SIR", nsteps = 500, dt = 0.5)
mod <- dcm(param, init, control)

par(mar = c(3.2, 3, 2, 1), mgp = c(2, 1, 0), mfrow = c(1, 2))
plot(mod, popfrac = FALSE, alpha = 0.5,
     lwd = 4, main = "Compartment Sizes")
plot(mod, y = "si.flow", lwd = 4, col = "firebrick",
     main = "Disease Incidence", leg = "n")

par(mfrow = c(1, 1))
comp_plot(mod, at = 500, digits = 1)


