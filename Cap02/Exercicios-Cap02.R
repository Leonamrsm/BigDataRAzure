# Lista de Exercícios - Capítulo 2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("~/Projects/BigDataRAzure/Cap02")
getwd()

# Exercício 1 - Crie um vetor com 30 números inteiros
v_int = c(1:30)

# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
Mat_4x4 <- matrix(c(2,4,8,12), nr = 4, ncol = 4)
Mat_4x4 

# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
lista1 <- list(v_int=v_int, Mat_4x4=Mat_4x4)
lista1

# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

data <- read.table("https://grodri.github.io/datasets/effort.dat", header=TRUE)
data
class(data)



# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")

colnames(data) <- c("config", "esfc", "chang")
data


# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset
View(iris)
iris
dim(iris)
summary(iris)

# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
?plot
plot(iris$Sepal.Length, iris$Sepal.Width)

# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset

subset_iris = subset(iris, iris$Sepal.Length>7)
subset_iris
dim(subset_iris)


# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()


copy_data <- data.frame(iris)
tracemem(copy_data)==tracemem(iris)

?slice
# select rows by range
sliced_data<- copy_data %>% slice(50:64)
sliced_data
dim(sliced_data)


# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter

result_10 <- filter(sliced_data, Sepal.Length  > 6)
result_10
