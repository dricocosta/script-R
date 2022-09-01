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
                     "Saldo", "Produtos", "TemCartaoCredito", "Ativo", "SalarioAnual",
                     "Saiu")
head(dados)

#Explorar dados categóricos:

#Estado

counts = table(dados$Estado)
barplot(counts, main = "Estado", xlab="Estados")

#Gênero

counts = table(dados$Genero)
barplot(counts, main="Gêneros", xlab = "Gêneros")

#Explorar colunas numéricas:

#Score
summary(dados$Score)
boxplot(dados$Score)
hist(dados$Score)

#Idade
summary(dados$Idade)
boxplot(dados$Idade)
hist(dados$Idade)

#Saldo
summary(dados$Saldo)
boxplot(dados$Saldo)
boxplot(dados$SalarioAnual, outline = FALSE)
hist(dados$Saldo)

#Salário
summary(dados$SalarioAnual)
boxplot(dados$SalarioAnual)
boxplot(dados$SalarioAnual, outline = FALSE)
hist(dados$SalarioAnual)

#Valores faltantes - NA's:

dados[!complete.cases(dados),] #comando tras todas as linhas incompletas

#Tratar salários removendo NA's:
summary(dados$SalarioAnual)

#Calcular mediana dos salários anuais
median(dados$SalarioAnual, na.rm = TRUE)

#Atribuir a mediana às NA's
dados[is.na(dados$SalarioAnual),]$SalarioAnual = median(dados$SalarioAnual, na.rm = TRUE)

#Buscar NA's em SalarioAnual para checagem
dados[!complete.cases(dados$SalarioAnual),]

#Falta de padronzação na coluna Gênero:

#Ver valores
unique(dados$Genero)
summary(dados$Genero)

#Transformar F e Fem em Feminino
dados[dados$Genero == "F" | dados$Genero == "Fem", ]$Genero = "Feminino"

#transformar M em Masculino (Moda determina que os NA's serão passados para Masculino)
dados[is.na(dados$Genero) | dados$Genero == "M", ]$Genero = "Masculino"

#Ver resultado das alterações
summary(dados$Genero)

#Remover levels não utilizados
dados$Genero = factor(dados$Genero)

#Visualizar novamente
summary(dados$Genero)


