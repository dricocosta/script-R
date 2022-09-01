#check you working directory
getwd()

#import your .csv file to your Global Enviroment
#bfast <- read.csv("Churn.csv", sep = ";", na.strings = "", stringsAsFactors = TRUE)

#importa dados / tratar string vazio como NA / tratar string como fator
dados = read.csv("Churn.csv", sep = ";", na.strings="", stringsAsFactors=TRUE)
head(dados)
summary(dados)

#Alterar nomes das colunas
colnames(dados) <- c("Id", "Score", "Estado", "Genero", "Idade", "Patrimonio",
                     "Saldo", "Produtos", "TemCartaoCredito", "Ativo", "Salario",
                     "Saiu")
head(dados)

