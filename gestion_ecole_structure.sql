
CREATE DATABASE gestion_ecole;
USE gestion_ecole;

CREATE TABLE Enseignant (
    id_enseignant INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    date_entree DATE NOT NULL
);

CREATE TABLE Matiere (
    id_matiere INT AUTO_INCREMENT PRIMARY KEY,
    nom_matiere VARCHAR(100) NOT NULL
);

CREATE TABLE Enseignant_Matiere (
    id_enseignant INT,
    id_matiere INT,
    PRIMARY KEY (id_enseignant, id_matiere),
    FOREIGN KEY (id_enseignant) REFERENCES Enseignant(id_enseignant),
    FOREIGN KEY (id_matiere) REFERENCES Matiere(id_matiere)
);

CREATE TABLE Promotion (
    id_promotion INT AUTO_INCREMENT PRIMARY KEY,
    annee INT NOT NULL
);

CREATE TABLE Etudiant (
    id_etudiant INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    id_promotion INT,
    FOREIGN KEY (id_promotion) REFERENCES Promotion(id_promotion)
);

CREATE TABLE Note (
    id_note INT AUTO_INCREMENT PRIMARY KEY,
    note DECIMAL(5, 2) CHECK (note BETWEEN 0 AND 20),
    date_publication DATE NOT NULL,
    id_etudiant INT,
    id_matiere INT,
    id_enseignant INT,
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id_etudiant),
    FOREIGN KEY (id_matiere) REFERENCES Matiere(id_matiere),
    FOREIGN KEY (id_enseignant) REFERENCES Enseignant(id_enseignant),
    UNIQUE (id_etudiant, id_matiere)
);

CREATE TABLE Absence (
    id_absence INT AUTO_INCREMENT PRIMARY KEY,
    date_absence DATE NOT NULL,
    minutes_retard INT NOT NULL,
    justifie BOOLEAN NOT NULL,
    id_etudiant INT,
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id_etudiant)
);

CREATE TABLE Historique_Promotion (
    id_historique INT AUTO_INCREMENT PRIMARY KEY,
    id_etudiant INT,
    id_promotion INT,
    date_debut DATE NOT NULL,
    date_fin DATE DEFAULT NULL,
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id_etudiant),
    FOREIGN KEY (id_promotion) REFERENCES Promotion(id_promotion)
);
