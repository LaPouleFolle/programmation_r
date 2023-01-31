
 
 #Un vecteur, est une liste d’élément de même type. À l’inverse, une liste est une collection d’objets de différentes classes. 
 #La fonction list permet de créer une liste.
 
 #Demande à l'utilisateur de saisir la valeur du montant de son horaire en brute
 
brut_to_net1 <- function()  {
salaire_brute <- as.numeric(readline())

salaire_brute #Test d'affichage du salaire 

prevoyance_complementaire <- 20

#calcul de la vieillesse
#Vieillesse = assiette 1 + assiette 2

assiette_1 <- salaire_brute * 0.004
assiette_1

#temps de travail > plafond sécurité social
assiette_2 <- (salaire_brute * 6.9) / 100
assiette_2

vieillesse <- (assiette_1 + assiette_2)
vieillesse

#Retrait complémentaire
#assiette c'est le salaire brute

retrait_1 <- (salaire_brute * 3.15) / 100 
retrait_1
retrait_2 <- (salaire_brute * 4.72) / 100
retrait_2

retrait_complémentaire <- c(retrait_1 + retrait_2)

retrait_complémentaire

#Contribution d'équilibre général

#Contribution = (salaire brute * 1.29%) + (salaire brute * 0.86%)

contri_1 <- (salaire_brute * 1.29) / 100

contri_2 <- (salaire_brute * 0.86) / 100

contribution_eg <- (contri_1 + contri_2)
contribution_eg


#Autre ; CSG - CRDS 

#CSG : assiette1 98.25% du salaire brute ::

base_csg_1 <- (((salaire_brute * 98.25) / 100) + 20) * (6.8) / 100
base_csg_1

base_csg_2 <- (((salaire_brute * 98.25) / 100) + 20) * (2.4) / 100 # 20 euro represente la prevoyances complémentaire 
base_csg_2   

csg_brute <- base_csg_1 + base_csg_2
csg_brute

#Calcule du CRDS

crds_brute <- (((salaire_brute * 98.25) / 100) * (0.005))
crds_brute

#CSG - CRDS

csg_crds <- csg_brute + crds_brute
csg_crds

total_retenues <- prevoyance_complementaire + vieillesse + retrait_complémentaire + contribution_eg - csg_crds
total_retenues

salaire_net <- salaire_brute - total_retenues

salaire_net

return( salaire_net)}


# Bon je refais l'exercice 

brut_to_net1 <- function(salaire_brute) {
  if (is.numeric(salaire_brute) == TRUE)
  {
      salaire_net <- salaire_brute - (salaire_brute * 0.22)

  }else
  {
    print("ERROR")
  }

return(salaire_net)
}

#Test 
class(brut_to_net1)

brut_to_net1( salaire_brute = "fff")



#Brute to net 2 

brut_to_net2 <- function(salaire_brute, contrat)
{if ( contrat =="cadre" ) 
  salaire_net <- salaire_brute - (salaire_brute * 0.25)



  else
  salaire_net <- salaire_brute - salaire_brute * 0.22
  
  if(is.numeric(contrat))
      
      print("Erreur")
  else
    print("Le type du contrat est correct")
  
return(salaire_net)
  
}

brut_to_net2

 