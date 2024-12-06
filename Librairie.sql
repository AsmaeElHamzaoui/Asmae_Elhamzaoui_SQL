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

