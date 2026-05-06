# 2bis - PDO Games.md

PDO Games : Afficher et ajouter des jeux avec PDO
==================================================

Maintenant que tu maîtrises SQL, passons à la pratique avec PDO (PHP Data Objects). Tu vas connecter ta base de données `games` à une application PHP et afficher les jeux + en ajouter via un formulaire.

## 🎯 Objectifs

- Établir une connexion à une base de données avec PDO
- Exécuter des requêtes SELECT avec PDO
- Afficher les résultats sur une page web
- Insérer de nouvelles données avec un formulaire
- Comprendre l'utilisation de prepared statements

---

## 📚 Concepts clés

### Connexion PDO

Le fichier `config.php` :

    <?php
    try {
        $pdo = new PDO(
            'mysql:host=localhost;dbname=games;charset=utf8',
            'root',
            ''
        );
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        die('Erreur de connexion : ' . $e->getMessage());
    }
    ?>

### Requête SELECT avec PDO

    <?php
    // Prépare la requête
    $stmt = $pdo->prepare('SELECT * FROM games');

    // Exécute la requête
    $stmt->execute();

    // Récupère les résultats
    $games = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($games as $game) {
        echo $game['name'] . ' - ' . $game['genre'];
    }
    ?>

### Requête INSERT avec PDO (Prepared Statement)

    <?php
    // Prépare la requête avec des paramètres ?
    $stmt = $pdo->prepare('INSERT INTO games (name, genre, score) VALUES (?, ?, ?)');

    // Exécute avec les valeurs
    $stmt->execute(['Zelda', 'adventure', 95]);
    ?>

---

## ✏️ Exercices

### Étape 1 : Afficher tous les jeux

**Fichier** : `index.php`

Cet exercice est simple : tu dois afficher tous les jeux de la base de données dans un tableau HTML.

Structure HTML fournie :

    <!DOCTYPE html>
    <html>
    <head>
        <title>Games Database</title>
        <style>
            table { border-collapse: collapse; width: 100%; margin-top: 20px; }
            th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
            th { background-color: #333; color: white; }
            tr:hover { background-color: #f5f5f5; }
            .container { max-width: 1000px; margin: 0 auto; padding: 20px; }
            a.btn { display: inline-block; padding: 10px 15px; background-color: #333; 
                    color: white; text-decoration: none; border-radius: 5px; margin-bottom: 15px; }
            a.btn:hover { background-color: #555; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Liste des jeux</h1>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nom</th>
                        <th>Genre</th>
                        <th>Score</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- TODO: Affiche les jeux ici avec une boucle foreach -->
                    <tr>
                        <td><!-- ID --></td>
                        <td><!-- Nom --></td>
                        <td><!-- Genre --></td>
                        <td><!-- Score --></td>
                    </tr>
                    <!-- Ferme ta boucle foreach -->
                </tbody>
            </table>
        </div>
    </body>
    </html>

Ton travail PHP en haut du fichier :
- TODO: Inclure le fichier config.php
- TODO: Écrire une requête SELECT * FROM games (préparée)
- TODO: Exécuter la requête
- TODO: Récupérer les résultats avec fetchAll()
- TODO: Boucler sur les jeux et afficher chaque ligne du tableau

---

### Étape 2 : Ajouter un jeu via formulaire

**Fichier** : `add.php`

Pour cette étape, tu dois créer deux choses :
1. Un formulaire HTML pour que l'utilisateur entre les données d'un jeu
2. La logique PHP pour récupérer les données et les insérer dans la base

Structure HTML fournie :

    <!DOCTYPE html>
    <html>
    <head>
        <title>Ajouter un jeu</title>
        <style>
            .container { max-width: 500px; margin: 50px auto; padding: 20px; background: white; border-radius: 8px; }
            form { display: flex; flex-direction: column; }
            label { font-weight: bold; margin-top: 15px; }
            input, select { padding: 10px; margin: 5px 0 15px 0; border: 1px solid #ddd; border-radius: 4px; }
            button { padding: 10px; background-color: #333; color: white; cursor: pointer; border: none; border-radius: 4px; }
            button:hover { background-color: #555; }
            a { margin-top: 10px; color: #333; text-decoration: none; }
            a:hover { text-decoration: underline; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Ajouter un nouveau jeu</h1>
            <form method="POST">
                <label>Nom du jeu :</label>
                <input type="text" name="name" required>
                
                <label>Genre :</label>
                <input type="text" name="genre" placeholder="ex: action, adventure, RPG..." required>
                
                <label>Score :</label>
                <input type="number" name="score" min="0" max="100" required>
                
                <button type="submit">Ajouter le jeu</button>
            </form>
            <a href="index.php">← Retour à la liste</a>
        </div>
    </body>
    </html>

Ton travail PHP (à mettre au début du fichier, avant le HTML) :

    <?php
    require 'config.php';

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // TODO: Récupérer les données du formulaire
        
        // TODO: Préparer une requête INSERT
        // La requête SQL sera : INSERT INTO games (name, genre, score) VALUES (?, ?, ?)
        
        // TODO: Exécuter la requête en passant un tableau avec les trois valeurs
        // $stmt->execute([]);
        
        // TODO: Rediriger vers index.php après l'insertion
        // header('Location: index.php');
        // exit;
    }
    ?>

**Important** : 
- Les points d'interrogation (?) dans la requête SQL sont remplacés par les valeurs du tableau dans execute()
- L'ordre des valeurs dans le tableau doit correspondre à l'ordre des points d'interrogation
- On utilise des prepared statements pour éviter les injections SQL

---

### Explication de la variable $id

Même si tu n'en as pas besoin dans ce TP, voici comment on manipule un jeu spécifique avec son ID :

    // Si on veut modifier le jeu avec l'ID 5 :
    $id = 5;

    // Requête préparée avec un paramètre
    $stmt = $pdo->prepare('SELECT * FROM games WHERE id = ?');

    // On passe l'ID dans le tableau execute()
    $stmt->execute([$id]);

    // Récupérer le jeu
    $game = $stmt->fetch(PDO::FETCH_ASSOC);

    echo $game['name']; // Affiche le nom du jeu avec ID 5

---

## 🔒 Sécurité importante

⚠️ **N'OUBLIE PAS** :
- Toujours utiliser les prepared statements (avec ?)
- Ne JAMAIS faire : `$query = "INSERT INTO games VALUES ('$name', '$genre', '$score')"`
- Les prepared statements protègent contre les injections SQL

---

## ✅ Checklist

Une fois terminé, tu dois avoir :
- [ ] Une page index.php qui affiche tous les jeux
- [ ] Un formulaire sur add.php pour ajouter un jeu
- [ ] L'ajout d'un jeu fonctionne et redirige vers index.php
- [ ] Le nouveau jeu apparaît dans la liste après ajout
- [ ] Aucune erreur PHP
- [ ] Le code utilise des prepared statements
