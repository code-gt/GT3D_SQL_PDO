
# Exercices SQL - Base de données Games

Cette série d'exercices te permet de consolider tes connaissances en SQL avec la table `games`. Tu dois exécuter chaque requête dans un gestionnaire SQL (phpMyAdmin par exemple).

## 📋 Prérequis

- Base de données créée

- Table `games` importée (voir `games.sql`)
- Connaissances de base : SELECT, INSERT, UPDATE, DELETE, WHERE

---

## ✏️ Exercices

### **Exercice 1 : Sélection de base**
1. Affiche tous les jeux avec leurs noms et genres.
2. Affiche uniquement les jeux avec un score supérieur à 90 points.
3. Liste les jeux du genre "action" avec un score supérieur à 80.

### **Exercice 2 : Insertion de données**
1. Ajoute le jeu "The Legend of Zelda" avec le genre "adventure" et un score de 98.
2. Insère "Elden Ring" avec le genre "RPG" et un score de 96.
3. Ajoute 2 jeux de ton choix avec des scores entre 60 et 75.

### **Exercice 3 : Mise à jour de données**
1. Augmente le score de "Minecraft" à 100 points.
2. Change le genre de "Fortnite" en "action".

### **Exercice 4 : Suppression de données**
1. Supprime "Call of Duty" de la table.

### **Exercice 5 : Requêtes combinées**
1. Affiche tous les jeux du genre "adventure" avec un score supérieur à 80.
2. Affiche les jeux "action" ou "RPG" triés par score (du plus haut au plus bas).

### **Exercice 6 : Requêtes avancées**
1. Compte le nombre total de jeux dans la table.
2. Calcule le score moyen de tous les jeux.
3. Trouve le jeu avec le score le plus élevé.
4. Affiche tous les genres uniques présents dans la table.

### **Exercice 7 : Défis avec ORDER BY et LIMIT**
1. Affiche les 3 jeux avec les meilleurs scores.
2. Liste les 5 jeux avec les scores les plus faibles.
3. Affiche les jeux triés par nom (ordre alphabétique).
4. Affiche les jeux triés par genre, puis par score (décroissant).

---

## 💡 Astuces

- Utilise `WHERE` pour filtrer tes requêtes

- `AND` / `OR` te permettent de combiner plusieurs conditions

- `ORDER BY` pour trier les résultats

- `LIMIT` pour en limiter le nombre

- `COUNT()`, `AVG()`, `MAX()`, `MIN()` pour les calculs

---

## ✅ Validation

Une fois tes exercices terminés, tu dois être capable de :

- ✓ Écrire une requête SELECT avec filtres
- ✓ Ajouter, modifier et supprimer des données
- ✓ Utiliser des fonctions d'agrégation
- ✓ Combiner plusieurs conditions dans une WHERE
