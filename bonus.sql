
-- Inserting completely generic enseignants
INSERT INTO Enseignant (nom, prenom, email, date_entree) 
VALUES 
('Nom_Enseignant_1', 'Prenom_Enseignant_1', 'enseignant1@exemple.com', '2020-09-01'),
('Nom_Enseignant_2', 'Prenom_Enseignant_2', 'enseignant2@exemple.com', '2021-01-15');

-- Inserting generic matières
INSERT INTO Matiere (nom_matiere) 
VALUES 
('Matière 1'),
('Matière 2');

-- Assigning matières to enseignants generically
INSERT INTO Enseignant_Matiere (id_enseignant, id_matiere) 
VALUES 
(1, 1), 
(2, 2);

-- Inserting completely generic promotions
INSERT INTO Promotion (annee) 
VALUES 
('Année 1'),
('Année N+1');

-- Inserting completely generic étudiants
INSERT INTO Etudiant (nom, prenom, email, id_promotion) 
VALUES 
('Nom_Etudiant_1', 'Prenom_Etudiant_1', 'etudiant1@exemple.com', 1),
('Nom_Etudiant_2', 'Prenom_Etudiant_2', 'etudiant2@exemple.com', 2);

-- Inserting generic notes
INSERT INTO Note (note, date_publication, id_etudiant, id_matiere, id_enseignant) 
VALUES 
(18.5, '2024-03-15', 1, 1, 1),
(16.0, '2024-05-20', 2, 2, 2);

-- Inserting generic absences
INSERT INTO Absence (date_absence, minutes_retard, justifie, id_etudiant) 
VALUES 
('2024-09-01', 15, FALSE, 1),
('2024-10-12', 5, TRUE, 2);

-- Inserting generic historique promotions
INSERT INTO Historique_Promotion (id_etudiant, id_promotion, date_debut, date_fin) 
VALUES 
(1, 1, '2023-09-01', NULL),
(2, 2, '2024-09-01', NULL);
