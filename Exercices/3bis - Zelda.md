# 3bis - PDO Zelda.md

PDO Zelda : Gérer ta base de données de jeux Zelda avec PDO
===========================================================

Tu as créé une base de données avec des jeux Zelda. Maintenant, tu vas créer une interface web complète pour afficher, ajouter et modifier tes jeux.

## 🎯 Objectifs

- Afficher tous les jeux de ta base de données
- Ajouter de nouveaux jeux via un formulaire
- Modifier les informations d'un jeu existant
- Comprendre le cycle complet CRUD (Create, Read, Update)

---

## 📋 Structure de la base de données

Ta table `jeux` a cette structure :

    CREATE TABLE jeux (
        id INT AUTO_INCREMENT PRIMARY KEY,
        titre VARCHAR(255) NOT NULL,
        date_sortie DATE,
        console VARCHAR(255),
        producteur VARCHAR(255),
        ventes_mondiales FLOAT,
        note_presse FLOAT
    );

---

## 🎯 Exercices

### Étape 1 : Afficher tous les jeux

**Fichier** : `index.php`

Tu dois afficher tous les jeux dans un tableau avec colonnes : ID, Titre, Console, Producteur, Note Presse.

Structure HTML fournie :

    <!DOCTYPE html>
    <html>
    <head>
        <title>Jeux Zelda - Gestion</title>
        <style>
            * { margin: 0; padding: 0; box-sizing: border-box; }
            body { font-family: Arial, sans-serif; background-color: #f5f5f5; padding: 20px; }
            .container { max-width: 1200px; margin: 0 auto; background: white; padding: 30px; border-radius: 8px; }
            h1 { color: #333; margin-bottom: 20px; }
            .btn-group { margin-bottom: 20px; }
            a.btn, button.btn { display: inline-block; padding: 10px 15px; margin-right: 10px; 
                                background-color: #2c5f2d; color: white; text-decoration: none; 
                                border: none; border-radius: 5px; cursor: pointer; }
            a.btn:hover, button.btn:hover { background-color: #1e4620; }
            table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
            th { background-color: #2c5f2d; color: white; }
            tr:hover { background-color: #f9f9f9; }
            .btn-edit { background-color: #4CAF50; }
            .btn-edit:hover { background-color: #45a049; }
            .btn-delete { background-color: #f44336; }
            .btn-delete:hover { background-color: #da190b; }
            .btn-sm { padding: 5px 10px; font-size: 14px; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Gestion des jeux Zelda</h1>
            <div class="btn-group">
                <a href="add.php" class="btn">+ Ajouter un jeu</a>
            </div>
            
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Titre</th>
                        <th>Date de sortie</th>
                        <th>Console</th>
                        <th>Producteur</th>
                        <th>Ventes (millions)</th>
                        <th>Note presse</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- TODO: Affiche les jeux ici avec une boucle foreach -->
                </tbody>
            </table>
        </div>
    </body>
    </html>

Ton travail PHP (en haut du fichier) :
- TODO: Inclure config.php
- TODO: Requête SELECT * FROM jeux (préparée)
- TODO: Exécuter et récupérer les résultats
- TODO: Boucle foreach pour afficher chaque jeu
- TODO: Dans la colonne "Actions", ajouter deux liens :
  - Un lien vers edit.php?id=X pour modifier
  - Un lien vers delete.php?id=X pour supprimer

---

### Étape 2 : Ajouter un jeu

**Fichier** : `add.php`

Crée un formulaire pour ajouter un nouveau jeu avec tous les champs de la table.

Structure HTML fournie :

    <!DOCTYPE html>
    <html>
    <head>
        <title>Ajouter un jeu</title>
        <style>
            * { margin: 0; padding: 0; box-sizing: border-box; }
            body { font-family: Arial, sans-serif; background-color: #f5f5f5; padding: 20px; }
            .container { max-width: 600px; margin: 0 auto; background: white; padding: 30px; border-radius: 8px; }
            h1 { color: #333; margin-bottom: 20px; }
            form { display: flex; flex-direction: column; }
            label { font-weight: bold; margin-top: 15px; color: #333; }
            input, textarea { padding: 10px; margin: 5px 0 15px 0; border: 1px solid #ddd; border-radius: 4px; }
            button { padding: 10px; background-color: #2c5f2d; color: white; border: none; 
                    border-radius: 5px; cursor: pointer; font-size: 16px; }
            button:hover { background-color: #1e4620; }
            a { margin-top: 15px; color: #2c5f2d; text-decoration: none; }
            a:hover { text-decoration: underline; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Ajouter un nouveau jeu</h1>
            <form method="POST">
                <label>Titre :</label>
                <input type="text" name="titre" required>
                
                <label>Date de sortie :</label>
                <input type="date" name="date_sortie">
                
                <label>Console :</label>
                <input type="text" name="console" placeholder="ex: Nintendo Switch, PS5...">
                
                <label>Producteur :</label>
                <input type="text" name="producteur">
                
                <label>Ventes mondiales (en millions) :</label>
                <input type="number" name="ventes_mondiales" step="0.1" min="0">
                
                <label>Note presse :</label>
                <input type="number" name="note_presse" step="0.1" min="0" max="100">
                
                <button type="submit">Ajouter le jeu</button>
            </form>
            <a href="index.php">← Retour à la liste</a>
        </div>
    </body>
    </html>

Ton travail PHP (avant le HTML) :

    <?php
    require 'config.php';

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // TODO: Récupérer les données du formulaire avec $_POST
        // Exemple : 
        // $titre = $_POST['titre'];
        
        // TODO: Préparer une requête INSERT avec tous les champs
        // La requête sera : 
        // INSERT INTO jeux (titre, date_sortie, console, producteur, ventes_mondiales, note_presse) 
        // VALUES (?, ?, ?, ?, ?, ?)
        
        // TODO: Exécuter la requête avec un tableau contenant les 6 valeurs dans le bon ordre
        // $stmt->execute([]);
        
        // TODO: Rediriger vers index.php après succès
    }
    ?>

---

### Étape 3 : Modifier un jeu

**Fichier** : `edit.php`

C'est l'étape la plus complexe. Tu dois :
1. Récupérer l'ID du jeu depuis l'URL (?id=3)
2. Charger les données actuelles du jeu
3. Afficher un formulaire pré-rempli
4. Permettre la modification et la mise à jour

Structure HTML fournie :

    <!DOCTYPE html>
    <html>
    <head>
        <title>Modifier un jeu</title>
        <style>
            * { margin: 0; padding: 0; box-sizing: border-box; }
            body { font-family: Arial, sans-serif; background-color: #f5f5f5; padding: 20px; }
            .container { max-width: 600px; margin: 0 auto; background: white; padding: 30px; border-radius: 8px; }
            h1 { color: #333; margin-bottom: 20px; }
            form { display: flex; flex-direction: column; }
            label { font-weight: bold; margin-top: 15px; color: #333; }
            input, textarea { padding: 10px; margin: 5px 0 15px 0; border: 1px solid #ddd; border-radius: 4px; }
            button { padding: 10px; background-color: #2c5f2d; color: white; border: none; 
                    border-radius: 5px; cursor: pointer; font-size: 16px; }
            button:hover { background-color: #1e4620; }
            a { margin-top: 15px; color: #2c5f2d; text-decoration: none; }
            a:hover { text-decoration: underline; }
            .error { color: red; padding: 10px; background-color: #ffe6e6; border-radius: 4px; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Modifier le jeu</h1>
            <!-- TODO: Le formulaire sera affiché ici si le jeu existe -->
        </div>
    </body>
    </html>

Ton travail PHP (avant le HTML) :

    <?php
    require 'config.php';

    // TODO: Vérifier que l'ID existe dans l'URL
    // if (!isset($_GET['id'])) { 
    //     header('Location: index.php');
    //     exit;
    // }

    // TODO: Récupérer l'ID et le convertir en entier
    // $id = (int)$_GET['id'];

    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        // Phase 1 : Affichage du formulaire
        // TODO: Requête SELECT pour récupérer le jeu avec cet ID (prepared statement)
        $stmt = $pdo->prepare('');
        $stmt->execute([]);
        $jeu = $stmt->fetch(PDO::FETCH_ASSOC);

        // TODO: Vérifier que le jeu existe, sinon redirection
        // if (!$jeu) { 
        
        }
        
        // TODO: Récupérer le jeu avec fetch()
        // TODO: Afficher le formulaire pré-rempli avec les données actuelles
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Phase 2 : Mise à jour
        // TODO: Récupérer les données du formulaire
        // Exemple : 
        // $titre = $_POST['titre'];
        // $date_sortie = $_POST['date_sortie'];
        // ...
        
        // TODO: Préparer une requête UPDATE
        // La requête sera : 
        // UPDATE jeux SET titre = ?, date_sortie = ?, console = ?, producteur = ?, 
        //                ventes_mondiales = ?, note_presse = ? WHERE id = ?
        
        // TODO: Exécuter la requête
        // IMPORTANT : l'ID doit être le dernier paramètre du tableau execute()
                
        // TODO: Rediriger vers index.php après succès

    }
    ?>

**Conseil important** : 
Dans la requête UPDATE, tu as 7 paramètres (?, ?, ?, ?, ?, ?, ?) :
- Les 6 premiers sont pour les colonnes à modifier
- Le 7e est pour le WHERE (l'ID)

Exemple du tableau pour execute() :

    [$titre, $date_sortie, $console, $producteur, $ventes_mondiales, $note_presse, $id]

---

### Étape 4 : Supprimer un jeu

**Fichier** : `delete.php`

C'est l'étape la plus simple. Tu dois juste supprimer le jeu et rediriger.

    <?php
    require 'config.php';

    if (isset($_GET['id'])) {
        // TODO: Récupérer et valider l'ID (conversion int)
        $id = (int)$_GET['id'];
        
        // TODO: Préparer requête DELETE FROM jeux WHERE id = ?
        
        // TODO: Exécuter avec le tableau [$id]
        
        // TODO: Rediriger vers index.php
    }
    ?>

---

## 🔑 La variable $id expliquée

Voici comment utiliser une variable `$id` pour manipuler un jeu spécifique :

    // Récupérer l'ID depuis l'URL
    $id = (int)$_GET['id'];  // Exemple : ?id=5 → $id = 5

    // Pour afficher un jeu spécifique :
    $stmt = $pdo->prepare('SELECT * FROM jeux WHERE id = ?');
    $stmt->execute([$id]);
    $jeu = $stmt->fetch(PDO::FETCH_ASSOC);

    // Pour modifier ce jeu :
    $stmt = $pdo->prepare('UPDATE jeux SET titre = ? WHERE id = ?');
    $stmt->execute(['Nouveau titre', $id]);

    // Pour le supprimer :
    $stmt = $pdo->prepare('DELETE FROM jeux WHERE id = ?');
    $stmt->execute([$id]);

L'ID est toujours le dernier paramètre pour identifier le jeu qu'on veut modifier/supprimer.

---

## 🔒 Sécurité importante

✅ **À faire** :
- Toujours convertir l'ID en entier : `(int)$_GET['id']`
- Utiliser des prepared statements avec ?
- Valider que l'ID existe avant de l'utiliser

❌ **À ne JAMAIS faire** :
- Concaténer directement : "WHERE id = " . $_GET['id']
- Oublier les prepared statements
- Faire confiance aux données de l'utilisateur

---

## ✅ Checklist finale

Une fois terminé, tu dois pouvoir :
- [ ] Afficher tous les jeux dans un tableau
- [ ] Ajouter un nouveau jeu via le formulaire
- [ ] Modifier un jeu existant
- [ ] Supprimer un jeu
- [ ] Avoir des liens fonctionnels entre les pages
- [ ] Aucune erreur PHP
- [ ] Code sécurisé (prepared statements partout)

---

## 🎓 Questions de synthèse

1. Pourquoi utilise-t-on ? dans les prepared statements ?
2. Quel est l'ordre correct des paramètres dans execute() ?
3. Comment récupérer l'ID depuis l'URL ?
4. Pourquoi convertir l'ID en entier avec (int) ?
5. Quelle est la différence entre fetch() et fetchAll() ?
