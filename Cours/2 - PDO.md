# PDO (PHP Data Objects)

## **Chapitre 1 : Les Super Pouvoirs de PDO**

Salut, jeunes développeurs web en herbe ! Aujourd'hui, nous allons découvrir un super pouvoir secret du développement web : PDO, alias "PHP Data Objects". Avec PDO, vous pourrez manipuler des bases de données comme un véritable super-héros du web.

### **Qu'est-ce que PDO ?**

PDO est comme une baguette magique qui vous permet de communiquer avec des bases de données. Une base de données, c'est comme un énorme classeur où vous pouvez stocker toutes sortes d'informations, comme des noms, des scores de jeux, ou même des photos de chats mignons, mais ça normalement vous le savez déjà ! (j’espère).

## **Chapitre 2 : Les Origines de PDO**

PDO a été créé par des développeurs géniaux pour rendre la vie des programmeurs plus facile. Il est l'ami de tout développeur PHP qui veut interagir avec des bases de données de manière élégante.

### **Pourquoi PDO est-il génial ?**

- **Portable** : Avec PDO, vous pouvez changer de type de base de données (par exemple, de MySQL à SQLite) sans changer tout votre code. C'est comme avoir une voiture qui fonctionne avec n'importe quel carburant !
- **Sécurité** : PDO protège votre site web contre les attaques de pirates informatiques. Il agit comme une armure super résistante pour vos données.
- **Facilité d'utilisation** : Même si vous êtes nouveau dans le développement web, PDO est super facile à apprendre.

## **Chapitre 3 : L'Apprentissage des Super Pouvoirs**

Maintenant, voyons comment utiliser PDO pour interagir avec une base de données. Pour cela, nous allons utiliser un exemple simple : une liste de super-héros !

Première étape, la connection à la base de données SQL

```php
// Étape 1 : Se connecter à la base de données
try {
    $pdo = new PDO("mysql:host=localhost;dbname=superheros", "nom_utilisateur", "mot_de_passe");
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage());
}
```

Ensuite, nous allons préparer puis exécuter notre première requête.

```php
// Étape 2 : Préparer une requête
$requete = $pdo->prepare("SELECT * FROM superheros");

// Étape 3 : Exécuter la requête
$requete->execute();
```

Nous récupérons ensuite les résultats de la requête dans une variable 

```php
// Étape 4 : Récupérer les résultats
$resultats = $requete->fetchAll();
```

Puis nous les parcourons afin de les afficher de manière simple ici avec des `echo`

```php
// Étape 5 : Parcourir les résultats
foreach ($resultats as $superhero) {
    echo "Nom : " . $superhero['nom'] . "<br>";
    echo "Super Pouvoir : " . $superhero['super_pouvoir'] . "<br>";
    echo "<hr>";
}
```

Enfin nous n'oublons pas de fermer la connexion à SQL pour des raisons de sécurité.

```php
// Étape 6 : Fermer la connexion
$pdo = null;
```

Bravo ! Vous avez maintenant le pouvoir de récupérer des super-héros depuis une base de données et de les afficher sur votre site web.
