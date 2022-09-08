#Histograma
trees
hist(trees$Height)
hist(trees$Height, main = "Árvores", ylab = "Frequência", xlab = "altura", col = "blue")
hist(trees$Height, main = "Árvores", ylab = "Frequência", xlab = "Altura", col = "blue", density = 20, breaks = 20)

#Densisdade
densidade <- density(trees$Height)
plot(densidade)

#Densidade sobre o histograma - parâmetro par
hist(trees$Height, main = NULL, xlab = NULL, ylab = NULL)
par(new=TRUE)
plot(densidade)

#Dispersão:

plot(trees$Girth, trees$Volume)
plot(trees$Girth, trees$Volume, main = "Árvores")
plot(trees$Girth, trees$Volume, main = "Árvores", ylab = "Circunferência", xlab = "Volume", col="blue")
#pch muda o elemento gráfico
plot(trees$Girth, trees$Volume, main = "Árvores", ylab = "Circunferência", xlab = "Volume", col="blue", pch=20)

#Muda o tipo para linha
plot(trees$Girth, trees$Volume, ylab = "Circunferência", xlab = "Volume", col="blue", pch=20, type = "l")

#Tremulação - diminui sobreposição
plot(jitter(trees$Girth), trees$Volume, ylab = "Circunferência", xlab = "Volume", col="blue", main = "Árvores")

#Adiciona legenda com dimensão categórica
CO2
plot(CO2$conc, CO2$uptake, pch=20, col=CO2$Treatment)
#função legend
legend("bottomright", legend=c("nonchilled", "chilled"), cex=1, fill=c("black", "red"))

#Novos dados
plot(trees)

#Divisão de telas
split.screen(figs = c(2,2))
screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Girth, trees$Height)
screen(3)
plot(trees$Height, trees$Volume)
screen(4)
hist(trees$Volume)
close.screen(all=TRUE)


