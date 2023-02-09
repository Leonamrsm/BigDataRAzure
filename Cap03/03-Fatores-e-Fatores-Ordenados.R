setwd("~/Projects/BigDataRAzure/Cap03")

vec1 <- c('Macho', 'Femea', 'Femea', "Macho", 'Macho')
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

# Variáveis Categoricas Nominais
# Não existe uma ordem implícita

animais <- c("Zebra", "Pantera", "Rinocerante")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)

# Variáveis Categóricas Ordinais
# possuem uma ordem natural
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grade <- factor(grad, order = TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grade
levels(fac_grade)

# Sumarizar os Dados fornece uma visão geral sobre o conteúdo das variáveis
summary(fac_grade)

vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M", "M")
vec2
fac_vec2 <-factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea", "Macho")
fac_vec2
summary(fac_vec2)
summary(vec2)

# Mais exemplos
data <- c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata <- factor(data)
fdata

rdata <- factor(data, labels = c("I", "II", "III"))
