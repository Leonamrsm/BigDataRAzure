# Lista de Exercícios - Capítulo 3

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no diretório de trabalho
list.files()

# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, um lógico e um de números
data.frame(caracters = c("A", "B", "C", "D"), 
           logico = c(TRUE, FALSE, TRUE, FALSE), 
           numeros = c(1,2,3,4))


# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número e uma mensagem no console.

# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34)


for (i in vec1) {
  if(i >10){
    print(paste(i, "é maior que 10"))
  }
  else{
    print(paste(i, "é menor que 10"))
  }
}

# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2

x = 1
while(x <= length(lst2)){
  print(lst2[[x]])
  x = x + 1
}

# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as materizes
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2



# Multiplicação element-wise
result <- mat1 * mat2
result

# Multiplicação de matrizes
resultado <- mat1 %*% mat2
resultado

# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de cada um dos objetos
vec <- c("Nelson", "Mandela", "95")
vec
names(vec) = c("Nome", "Sobrenome", "Idade")
vec

mat <- matrix(c("Terra", "Marte", "Saturno", "Netuno"), nr=2)
mat
dimnames(mat3) = (list(c('linha1', 'linha2'), c('coluna1', 'coluna2')))
mat

lst <- lst(elemento1 = 3:5, elemento2 = c(7,2,3,5))
lst

# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória para 50 elementos da matriz
# Dica: use a função sample()
mat2 <- matrix(1:90, 10)
mat2
mat2[sample(mat2,50)] = NA
mat2

# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

rows_sum <- apply(mat1, 1, sum)
rows_sum
col_sum <- apply(mat1, 2, sum)
col_sum

# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
a <- c(100, 10, 10000, 1000)
sort(a)

# # Exercício 10 - Imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1


for(i in mat1){
  if (i >15){
    print(i)
  }
}

print(mat1[which(mat1 > 15)])
