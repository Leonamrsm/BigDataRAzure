# Primeiros Passos na Linguagem R


# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Users/Leonam/Desktop/Cursos/BigDataRAzure/Cap02")
getwd()


# Nome dos Contributors
contributors()

# Licensa
licence()

# Informações sobre a sessão
sessionInfo()

# Imprimir na tela 
print("Estou iniciando minha caminhada na carreira de cientista de dados")

# Criar gráficos
plot(1:25)

# Instalar Pacotes
install.packages('randomForest')
install.packages('ggplot2')
install.packages('dplyr')
install.packages('devtools')


#  Carregar o pacote
library(ggplot2)

# Descarregar o pacote
detach(package:ggplot2)

# Se souber o nome da função podemos usar o helper do proprio R
help(mean)
?mean

# Para buscar mais opções sobre uma função, use o pacote SOS.
install.packages('sos')
library(sos)
findFn("fread")

# Se não souber o nome da função
help.search('randomforest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')

# Sair
q()
