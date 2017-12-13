




library(gRain)
library(gRbase)
library(ggm)
library(Rgraphviz)


#Specify the levels
suspect <- c("one", "two", "three")

#Construct Conditional Probability Table (CPT)
c <- cptable(~criminal, values = c(1/3, 1/3, 1/3), levels = suspect)

s.c <- cptable(~scene | criminal, values = c(0.8, 0.1, 0.1, 0.1, 0.8, 0.1, 0.1, 0.1, 0.8), levels = suspect)

h.s <- cptable(~height | scene, values = c(0.6, 0.3, 0.1, 0.1, 0.6, 0.3, 0.1, 0.4, 0.5), levels = suspect)

k.c <- cptable(~knife | criminal, values = c(0.9, 0.05, 0.05, 0.05, 0.9, 0.05, 0.05, 0.05, 0.9), levels = suspect)

e.k <- cptable(~expert | knife, values = c(0.8, 0.1, 0.1, 0.1, 0.8, 0.1, 0.1, 0.1, 0.8), levels = suspect)

#Compile the Network
plist <- compileCPT(list(c, s.c, h.s, k.c, e.k))
grn1 <- grain(plist)
plot(grn1)


find1 <- setFinding(grn1, nodes = c("height", "expert"), states = c("one", "three"))

querygrain(find1, nodes = c("criminal"), type = "marginal")

