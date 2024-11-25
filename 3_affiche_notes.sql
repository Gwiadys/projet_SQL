
SELECT 
    Note.note, 
    Note.date_publication, 
    Etudiant.nom AS etudiant_nom, 
    Etudiant.prenom AS etudiant_prenom, 
    Enseignant.email AS enseignant_email
FROM 
    Note
JOIN 
    Etudiant ON Note.id_etudiant = Etudiant.id_etudiant
JOIN 
    Enseignant ON Note.id_enseignant = Enseignant.id_enseignant
WHERE 
    Note.note BETWEEN 15 AND 20 
    AND YEAR(Note.date_publication) = YEAR(CURDATE());
