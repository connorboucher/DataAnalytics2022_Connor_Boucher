EPI_2010 <- read.csv(file = 'C:/Users/bouchc2/Downloads/Data Analytics/2010EPI_data.csv')

names(EPI_2010) <- as.matrix(EPI_2010[1,]) # Change first row to be the header
EPI_2010 <- EPI_2010[-1,] # Remove first row
EPI_2010 <- lapply(EPI_2010, as.numeric)
#View(EPI_2010)

attach(EPI_2010)
#fix(EPI_2010)
#EPI

tf <- is.na(EPI)
E <- EPI[!tf]

#summary(EPI)
fivenum(EPI, na.rm=T)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=T)
lines(density(EPI, na.rm=T, bw=1.))
rug(EPI)

plot(ecdf(EPI), do.points=F, verticals=T)
par(pty="s")
qqnorm(EPI); qqline(EPI)

x <- seq(30,95,1)
qqplot(qt(ppoints(250), df=5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


tf <- is.na(DALY)
D <- DALY[!tf]

plot(ecdf(DALY), do.points=F, verticals=T)
par(pty="s")
qqnorm(DALY); qqline(DALY)

x <- seq(30,95,1)
qqplot(qt(ppoints(250), df=5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


tf <- is.na(WATER_H)
W <- WATER_H[!tf]

plot(ecdf(DALY), do.points=F, verticals=T)
par(pty="s")
qqnorm(DALY); qqline(DALY)

boxplot(EPI, DALY)
qqplot(EPI,DALY)

#boxplot(EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H, WATER_H, AIR_EWATER_E, BIODIVERSITY)

EPILand <- EPI[!Landlock]
ELand <- EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=T)

EPIWater <- EPI[!No_surface_water]
EWater <- EPIWater[!is.na(EPIWater)]
hist(EWater)
hist(EWater, seq(30., 95., 1.0), prob=T)

EPIDesert <- EPI[!Desert]
EDesert <- EPIDesert[!is.na(EPIDesert)]
hist(EDesert)
hist(EDesert, seq(30., 95., 1.0), prob=T)

EPIPopDensity <- EPI[!High_Population_Density]
EPopDensity <- EPIPopDensity[!is.na(EPIPopDensity)]
hist(EPopDensity)
hist(EPopDensity, seq(30., 95., 1.0), prob=T)

# Filter on EPI_regions/GEO_subregion
# Understand: Distributions, populations, fitting, creating data frames in R

names(EPI_2010)
unique(EPI[c(EPI_regions)])
unique(EPI[c(GEO_subregion)])

#EPI_South_Asia <- EPI[!EPI_regions]
#E_South_Asia <- EPI_South_Asia[!is.na(EPI_South_Asia)]
#hist(E_South_Asia)
#hist(E_South_Asia, seq(30., 95., 1.0), prob=T)

#EPIGeo <- EPI[!GEO_subregion]
#EGeo <- EPIGeo[!is.na(EPIGeo)]
#hist(EGeo)
#hist(EGeo, seq(30., 95., 1.0), prob=T)
