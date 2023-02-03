install.packages("questionr")
library(questionr)
data("hdv2003")
head(hdv2003,10)#afficher les 10 premiere ligne
tail(hdv2003,5) #Demande des 5 derniers enregistrement


dim(hdv2003) #affiche le nombre d'enregistrement dans le tableau
nrow(hdv2003) #le nombrede ligne d'en enregistrement

hdv2003$age

#Faire la moyenne de la variable age

mean(hdv2003$age)
min(hdv2003$age)
quantile(hdv2003$age) #affiche le min et les 3 autre quartiles

summary(hdv2003$age)
hist(hdv2003$age , main = "repartition en age ") #La fonction main est utilisé pour modifié le titre du graphique 
#pour dire à R de modifier les intervalle pris par defaut on utilise break


hist(hdv2003$age , breaks = 10 , main = "repartition en age ")

boxplot(hdv2003$age) #Representation graphique de la variable age avec la repartition de ses quartiles

######"
######
#####"

table(hdv2003$sexe)
#r c'est pas calculer une valeur quand il y'a des valeur manquante, pour le faire il faudra une manipulation donc dire à r d'oter les valeurs manquantes '

mean(hdv2003$heures.tv)

mean(hdv2003$heures.tv ,na.rm = T) #Ici on retrouve la moyenne de ceux qui ont repondu 

#pour compter les valeurs manquantes 
sum(is.na(hdv2003$heures.tv))

