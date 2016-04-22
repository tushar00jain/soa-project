
library(EpiModel)

param <- param.icm(inf.prob = 0.8, act.rate = 0.5, rec.rate = 0.03, b.rate = 0.08, ds.rate = 0.08, di.rate = 0.1)
init <- init.icm(s.num = 1000, i.num = 100)
control <- control.icm(type = "SIS", nsteps = 500, nsims = 5)
set.seed(1)
mod <- icm(param, init, control)

par(mfrow = c(1,1))
# pdf("plt.pdf")
plot(mod)
# dev.off()

