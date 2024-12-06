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