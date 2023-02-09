# Criando Matrizes

# Número de Linhas
matrix(c(1,2,3,4,5,6), nr=2)
matrix(c(1,2,3,4,5,6), nr=3)
matrix(c(1,2,3,4,5,6), nr=6)

# Número de Colunas
matrix(c(1,2,3,4,5,6), nc=2)

# Help
?matrix

# Matrizes precisam ter um número de elementos que seja múltiplo de linhas
matrix(c(1,2,3,4,5), nr=2)

# Criando matrizes a pártir de vetores e preenchendo a partir das linhas
meus_dados = c(1:10)
matrix(data = meus_dados, nrow=5, ncol = 2, byrow = T)
matrix(data = meus_dados, nrow = 5, ncol = 2)

# Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nrow = 2)
mat[1,2]
mat[2,2]
amt[1,3]
mat[2,]

# Criando uma matriz diagonal
vetor = 1:3
diag(vetor)

# Transposta da Matriz
W <- matrix(c(2,4,8,12), nr = 2, ncol = 2)
t(W)
U <- t(W)
U

# Obtendouma matriz inversa
solve(solve(W))

# Multiplicação de Matrizes

mat1 <- matrix(c(2,3,4,5), nr= 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat2
mat1 + mat2
mat1 - mat2
mat1 * mat2
mat1 / mat2

# Multiplicando Matrix com Vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr = 2)
y
x * y

# Nomeando a Matriz

mat3 <- matrix(c("Terra", "Marte", "Saturno", "Netuno"), nr=2)
mat3
dimnames(mat3) = (list(c('linha1', 'linha2'), c('coluna1', 'coluna2')))
mat3

# Identificando linhas e colun as no momento de criação da Matriz
matrix(c(1,2,3,4), nr=2, nc=2, dimnames = list(c('linha1', 'linha2'), c('coluna1', 'coluna2')))

# Combinando Matrizes
mat4 <- matrix(c(2,3,4,5), nr=2)
mat4
mat5 <- matrix(c(6,7,8,9), nr=2)
mat5
rbind(mat4, mat5)
cbind(mat4, mat5)

# Desconnstruindo a Matriz
c(mat4)