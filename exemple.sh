#! /bin/bash
echo "Hello World"

# test validité commande 1 - retour 41
if [ $? -eq 0 ] ; then
   echo "Succes, on continue"
else
  echo "Erreur, on s'arrete"
  exit 41
fi


# retour de commande identité utilisateur
echo "Entrez votre Nom"
while [ -z $username ] ; do
  read -p 'Nom Utilisateur: ' username
done 

# retour de commande âge
echo "Entrez votre âge sur 2 digit : "
while [ -z $age ] ; do 
  read -p 'Age: ' age

# test de validité de saisie de l'âge - erreur 43 et 44
  if [ $age -lt 1 ] ; then
    echo "Vous n'avez pas saisi suffisament d'arguments"
    exit 43
  elif [ $age -gt 99 ] ; then
    echo "Vous avez saisi trop d'arguments"
    exit 44
  fi
done

# test validité commande 2 - retour 42
if [ $? -eq 0 ] ; then
   echo "Youpi !!"
   echo "Hello" $username "," $age "ans est un bien bel âge pour venir nous retrouver!"
else
  echo "Erreur, on s'arrete"
  exit 42
fi

