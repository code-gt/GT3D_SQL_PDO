## **Chapitre 4 : Mission Secrète**

Votre mission, si vous l'acceptez, est de créer votre propre base de données et d'ajouter des super-héros à la liste. Vous pouvez ensuite utiliser PDO pour les afficher sur une page web. Amusez-vous bien en explorant ce super pouvoir secret !

Gardez à l'esprit que PDO est bien plus puissant que ce que nous avons vu ici. Vous pouvez également l'utiliser pour ajouter, mettre à jour ou supprimer des données dans la base de données. Mais pour l'instant, vous avez les bases pour commencer.

Allez, jeunes développeurs, partez à l'aventure avec PDO et explorez le monde passionnant des bases de données ! N'oubliez pas que chaque super-héros a commencé quelque part, alors continuez à apprendre et à développer vos compétences. Le web est votre toile, et avec PDO, vous pouvez créer des merveilles. À vos claviers !

### **Exercice TP : Créez votre propre base de données de super-héros**

**Objectif** : Dans cet exercice, vous allez créer une base de données pour stocker des informations sur des super-héros et utiliser PDO pour afficher ces informations sur une page web.

**Étapes** :

**Étape 1 : Configuration de la base de données**

1. Créez une base de données appelée "superheros". Vous pouvez utiliser un outil comme phpMyAdmin ou exécuter la commande SQL suivante :

```php
CREATE DATABASE superheros;
```

1. Dans cette base de données, créez une table appelée "heros" avec les colonnes suivantes :
    - **`id`** (entier auto-incrémenté, clé primaire)
    - **`nom`** (texte)
    - **`super_pouvoir`** (texte)

**Étape 2 : Création d'une page web pour afficher les super-héros**

1. Créez un fichier **`index.php`** pour votre page web.
2. Dans ce fichier, écrivez le code PHP pour vous connecter à la base de données en utilisant PDO. N'oubliez pas de remplacer **`"nom_utilisateur"`** et **`"mot_de_passe"`** par les informations de connexion appropriées.
3. Préparez une requête SQL pour récupérer tous les super-héros de la table "heros".
4. Exécutez la requête et récupérez les résultats dans une variable.
5. Utilisez une boucle **`foreach`** pour afficher les informations de chaque super-héros (nom et super pouvoir) sur la page web.

**Étape 3 : Ajout de super-héros à la base de données**

1. Créez un formulaire HTML dans votre fichier **`index.php`** avec des champs pour le nom et le super pouvoir d'un super-héros.
2. Ajoutez un bouton "Ajouter Super-Héros" pour soumettre le formulaire.
3. Écrivez le code PHP pour gérer la soumission du formulaire. Lorsqu'un utilisateur ajoute un super-héros, insérez ces informations dans la base de données en utilisant une requête SQL d'insertion.

**Étape 4 : Mise à jour des super-héros**

1. Ajoutez un lien ou un bouton "Modifier" à côté de chaque super-héros affiché sur la page.
2. Créez une nouvelle page PHP appelée **`modifier.php`** pour gérer la modification des super-héros.
3. Sur cette page, récupérez l'ID du super-héros que vous souhaitez modifier (peut être transmis via l'URL) et affichez un formulaire pré-rempli avec les informations actuelles du super-héros.
4. Permettez à l'utilisateur de modifier les informations et soumettez le formulaire pour mettre à jour la base de données.

**Étape 5 : Suppression de super-héros**

1. Ajoutez un bouton "Supprimer" à côté de chaque super-héros affiché sur la page principale (**`index.php`**).
2. Écrivez le code PHP pour gérer la suppression d'un super-héros. Supprimez le super-héros correspondant de la base de données en utilisant une requête SQL de suppression.

**Étape 6 : Personnalisation et Style**

1. Personnalisez votre page web en ajoutant un peu de CSS pour la rendre plus attrayante.
2. Ajoutez des fonctionnalités supplémentaires si vous le souhaitez, comme la possibilité de télécharger des images pour chaque super-héros.

**Étape 7 : Test et Amélioration**

1. Testez votre application en ajoutant, modifiant et supprimant différents super-héros.
2. Identifiez et corrigez les éventuels problèmes ou erreurs.

Et voilà ! Vous avez maintenant un exercice TP complet pour pratiquer l'utilisation de PDO dans le développement web en créant votre propre base de données de super-héros. Amusez-vous bien et n'hésitez pas à explorer davantage PDO et à ajouter des fonctionnalités supplémentaires à votre application. Bon codage !

###
