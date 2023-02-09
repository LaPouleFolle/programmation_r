library(readxl)
pokemon <- read_excel("pokemon.xlsx")
View(pokemon) #Importation du fichier excel qui contient la base de donnée 

#comptons le nombre de ligne et de colonne presente dans ce fichier

nrow(pokemon) #il y'a 251 ligne dans le fichier
ncol(pokemon)
NCOL(pokemon) #les 2 sont possible pour compter le nombre de colonne 

#Afficher le nom des colonnes 

colnames(pokemon)

#affichons le type des colonnes 

str(pokemon)

#on souhaite analyser les variables generations; is_legendary;type
pokemon$generation <- as.factor(pokemon$generation)
pokemon$is_legendary <- as.factor(pokemon$is_legendary)
############################################################""

#Afficher le resumer des données 

summary(pokemon)

#Exercice 2 

#Determinons la moyenne de la variable weight_kg

mean(pokemon$weight_kg , na.rm = TRUE)

#determiner la mediane

median(pokemon$weight_kg , na.rm = TRUE)

#determiner quartiles

quantile(pokemon$height_m , na.rm = TRUE)

#Deciles

quantile(pokemon$height_m , seq(0,1,0.1), na.rm = TRUE)

#determinons la variance et l'ecart type
var(pokemon$weight_kg , na.rm = TRUE) # Variance de la variable poids

sd(pokemon$weight_kg , na.rm = TRUE)

#Detrminons un tri à plat pour compter les effectifs des modalité de chaque variable
gene_tri <- table(pokemon$generation)
sort(gene_tri)
is_leg_tri <- table(pokemon$is_legendary)
sort(is_leg_tri)

#Exercice 3 

requete_0 <- pokemon[,1:2]
dim(requete_0)2

pokemon[,2:4] #Selectionner la colonne nom et legendary

#selectionnons les 50 premieres lignes et les 2 premiere colonnes

pokemon[1:50,]


pokemon[1:10,]

pokemon[,-10]

pok = sort(pokemon$nom , decreasing = F)
pok[1] on #affiche le nom du pokemon à la premiere ligne

#Trions le data set par weight_kg en ordre décroisant, puis on affiche le nom du pokemon à la premiere ligne

poids = pokemon[order(pokemon$weight_kg , decreasing = TRUE), ]
dim(poids)
poids$nom[1]


#Trions le data set par attack en ordre croiossant puis par speed en ordre décroissant
fight = pokemon[order(pokemon$attack , decreasing = TRUE), ]
dim(fight)
fight$nom[1:10] #Il marche enfinnnnnnnnnnnnnnnnnnnnn

