
#2.1.1 Brute vers net avant impot pour les non cadres uniquement

# Bon je refais l'exercice 

brut_to_net1 <- function(salaire_brute) 
  {
  if (is.numeric(salaire_brute) == TRUE) #Si la condition est verifier c'est ??? dire si la valeur du salaire brute est un numerique alors le salaire est d???terminer
  {
    salaire_net <- salaire_brute - (salaire_brute * 0.22)
    
}else
  {
    print("ERROR")
  }
  
  return(salaire_net)
}

#Test 
class(brut_to_net1) #Test de la fonction brut_to_net2

brut_to_net1( salaire_brute = "h")



#2.1.2 Brute vers net apres impot pour les cadres et les non cadres

salaire_2 <- function(salaire_brute , contrat) 
{
  
  if (contrat == "cadre") 
  {print("Bon type de contrat")
    salaire <- salaire_brute - ((salaire_brute * 0.075) + (salaire_brute * 0.25))}
  if (contrat == "non cadre" )
  {salaire <- salaire_brute - ((salaire_brute * 0.075) + (salaire_brute * 0.22))
  
  
  }   else
    print("Votre contrat est indetermin???")
  return(salaire)
  
}

salaire_2(salaire_brute = 2500 , contrat = "non")

#2.1.3 Brut vers net apres impot pour les cadres et non cadres

brut_to_net3 <- function(temps_de_travail) 
  
{
  
  if (temps_de_travail != seq(0,length.out = 101) )
  {c <- 2+3
  print("ffggh")
  
  }    else
    print("ccc")
  return(c)
  
  
}

class(brut_to_net3)
brut_to_net3(temps_de_travail = -2)