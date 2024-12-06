-- Active: 1733492701458@@127.0.0.1@3306@librairie
-- Créer la base de données Librairie
CREATE DATABASE Librairie;

-- utilisation de la base de donnée 
USE Librairie;


-- Créer la table Livres
CREATE TABLE Livres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    stock INT NOT NULL
);


-- Créer la table Clients
CREATE TABLE Clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    date_inscription DATE NOT NULL
);

Voici les requêtes SQL correspondant à chaque étape de votre demande.

1. Création de la base de données et des tables
sql
Copier le code
-- Création de la base de données Librairie
CREATE DATABASE Librairie;

-- Sélection de la base de données
USE Librairie;

-- Création de la table Livres
CREATE TABLE Livres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    stock INT NOT NULL
);

-- Création de la table Clients
CREATE TABLE Clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    date_inscription DATE NOT NULL
);

-- Insertion des données dans la table Livres
INSERT INTO Livres (titre, auteur, prix, stock) VALUES
('Les Misérables', 'Victor Hugo', 20.50, 12),
('Le Petit Prince', 'Antoine de Saint-Exupéry', 15.99, 5),
('1984', 'George Orwell', 18.00, 8),
('Harry Potter et la pierre philosophale', 'J.K. Rowling', 25.00, 10);

-- Insertion des données dans la table Clients
INSERT INTO Clients (nom, email, date_inscription) VALUES
('Jean Dupont', 'jean.dupont@email.fr', '2024-01-10'),
('Alice Martin', 'alice.martin@email.fr', '2024-02-15'),
('Bob Robert', 'bob.robert@email.fr', '2024-03-20');

-- Liste des livres disponibles avec leur titre, auteur et prix 
SELECT titre, auteur, prix FROM Livres;

--Livres dont le prix est supérieur à 20 euros
SELECT titre, auteur, prix FROM Livres WHERE prix > 20;

-- Clients inscrits après le 1er février 2024
SELECT nom, email, date_inscription FROM Clients WHERE date_inscription > '2024-02-01';

-- Réduire le stock de 1 pour le livre "1984"
UPDATE Livres SET stock = stock - 1 WHERE titre = '1984';

-- Supprimer un client dont l'email est "bob.robert@email.fr"
DELETE FROM Clients WHERE email = 'bob.robert@email.fr';


-- Ajouter un nouveau livre à la table Livres
INSERT INTO Livres (titre, auteur, prix, stock) VALUES
('Le Seigneur des Anneaux', 'J.R.R. Tolkien', 30.00, 7);

