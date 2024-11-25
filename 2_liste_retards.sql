
SELECT date_absence, minutes_retard, justifie, id_etudiant
FROM Absence
WHERE justifie = FALSE AND minutes_retard > 10
ORDER BY minutes_retard DESC;
