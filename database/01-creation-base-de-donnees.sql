/*
role = (role_id INT AUTO_INCREMENT, role_nom VARCHAR(50), role_description VARCHAR(255));
utilisateur = (utilisateur_id INT AUTO_INCREMENT, utilisateur_email VARCHAR(128), utilisateur_nom VARCHAR(100), utilisateur_prenom VARCHAR(100), utilisateur_section VARCHAR(20), utilisateur_mdp VARCHAR(255), #role_id);
activite = (activite_id INT AUTO_INCREMENT, activite_nom VARCHAR(50), activite_description VARCHAR(255), activite_capacite_min TINYINT, activite_capacite_max TINYINT, activite_debut DATETIME, activite_fin DATETIME, #utilisateur_id);
seance = (seance_id INT AUTO_INCREMENT, seance_file_attente BOOLEAN, seance_statut BOOLEAN, seance_capacite_min TINYINT, seance_capacite_max TINYINT, seance_debut DATETIME, seance_fin DATETIME, #utilisateur_id, #activite_id);
inscription = (#utilisateur_id, #seance_id, date_inscription DATETIME);
*/

DROP DATABASE IF EXISTS zeform;

CREATE DATABASE zeform;