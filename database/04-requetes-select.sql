USE zeform;

SELECT * FROM utilisateur;

SELECT * FROM seance;

-- Séances créées
SELECT *
FROM utilisateur u
INNER JOIN seance s ON u.utilisateur_id = s.utilisateur_id;

-- Inscriptions aux séances
SELECT *
FROM utilisateur u
INNER JOIN inscription i ON u.utilisateur_id = i.utilisateur_id
INNER JOIN seance s ON i.seance_id = s.seance_id;

