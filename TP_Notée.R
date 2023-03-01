set.seed(2003)
echantillons <-rnorm(n= 10000000, mean = 171, sd = 9) #realistation d'un echantillonnage suivant une loi normal

#question 2
mean(echantillons)
sd(echantillons)

#question 3

hist(echantillons , breaks = 10)

#question 4

length(echantillons) > 190
nombre <- echantillons[ c(echantillons > 190)]
length(nombre) #On compte le nombre le nombre d'élèments superieur � 190
#combien devriez vous avoir en théorie
nombre
proba <- 1 - pnorm(q=190 , mean = 171 , sd = 9)
nombre_190 <- proba * 10000000
nombre_190 #R ne peut pas déterminer la valeur net alors on a du faire le complémentaire



#Exercice 2
#Simulation d'échantillon
#question 1
tirage_100 <- echantillons[sample(1:100, replace = TRUE)]
moyenne <- mean(tirage_100)
ecart_type <- sd(tirage_100)

#question 2

#Calculer la largeur du demi intervalle de copnfiance en fonction du sd

dad <- qnorm(p = 1-0.05/2 ,mean = 0, sd = 1 )
Zalpha_2 <- dad * ecart_type/sqrt(100)

#Calculons les bornes
#borne gauche
moyenne - Zalpha_2

#borne droite
moyenne + Zalpha_2 

#Question 3

data <- replicate(n = 1000,echantillons[sample(1:100, replace = TRUE)])
moyennne_colonnes = apply(data,2,mean)
moyennne_colonnes
#question 4


#Question 4

hist(moyennne_colonnes)
#On retrouve la forme de la loi normal centrer reduite


#Question 5
mean(data[,1:100])

#Question 6
length(data)>172.8
oracle <- data[ c(data > 172,8) ]
length(oracle)

