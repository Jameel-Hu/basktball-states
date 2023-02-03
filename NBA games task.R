myplot <- function(z, who =1:10) {
  matplot(t(z[who,,drop=F]), type = "b", pch=15:18, col= c(1:4,6), main="basktball players analysis")
  legend("bottomleft", inset=0.01, legend=Players[who],col=c(1:4,6),pch=15:18,horiz=F)
}

myplot(Freethrows)
myplot(freethrowsattempts)

#1. Free throws Attemps Per Game 

myplot(freethrowsattempts/Games)

#2. Free Throw Acurrecy 

myplot(Freethrows/freethrowsattempts)

#3. players style patteren
myplot((Points - Freethrows)/FieldGoals)
