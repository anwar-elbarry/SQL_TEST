-- Création de database

CREATE DATABASE Librairie ;

-- Création de la table

CREATE TABLE Livres (
  id SERIAL PRIMARY KEY,
  titre VARCHAR(255) NOT NULL,
  auteur VARCHAR(255) NOT NULL,
  prix NUMERIC(5,2) NOT NULL,
  stock INT NOT NULL
);


CREATE TABLE Clients (
id SERIAL PRIMARY KEY,
nom VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
date_inscription DATE NOT NULL
);

-- Insertion de données

INSERT INTO Livres (titre, auteur, prix, stock)
 VALUES
 ('Les Misérables','Victor Hugo',20.50,12),
 ('Le Petit Prince','Antoine de Saint-Exupéry',15.99,5),
 ('1984','George Orwell',18.00,8),
 ('Harry Potter et la pierre philosophale','J.K. Rowling',25.00,10);

INSERT INTO Clients (nom,email,date_inscription) 
VALUES 
 ('Jean Dupont','jean.dupont@email.fr','2024-01-10'),
 ('Alice Martin','alice.martin@email.fr','2024-02-15'),
 ('Bob Robert','bob.robert@email.fr','2024-03-20');

-- Listez tous les livres disponibles dans la librairie avec leur titre, auteur, et prix.

SELECT*
FROM livres;

-- Trouvez tous les livres dont le prix est supérieur à 20 euros.

SELECT * 
FROM livres
WHERE prix > 20;

-- Trouvez tous les clients inscrits après le 1er février 2024.

SELECT *
FROM clients 
WHERE date_inscription > '2024-02-01';

-- Réduisez le stock de 1 pour le livre "1984" (simulatez une vente).

UPDATE livres 
SET stock = stock - 1
WHERE titre = '1984';

-- Supprimez un client dont l'email est "bob.robert@email.fr".

DELETE FROM clients 
WHERE email = 'bob.robert@email.fr';

-- Ajoutez un nouveau livre à la table Livres

INSERT INTO Livres (titre, auteur, prix, stock)
 VALUES
 ('Le Seigneur des Anneaux','J.R.R. Tolkien',230.00,7);