USE zeform;

INSERT INTO role
(role_nom, role_description)
VALUES
("administrateur", NULL),
("stagiaire", NULL);

INSERT INTO utilisateur
(utilisateur_email, utilisateur_nom, utilisateur_prenom, utilisateur_section, utilisateur_mdp, role_id)
VALUES
("mdevoldere@zeform.fr", "devoldère", "mickaël", "form", NULL, 1),
("sthiry@zeform.fr", "thiry", "sophie", "form", NULL, 1),
("fcommunod@zeform.fr", "communod", "francine", "cheffe", NULL, 1),
("bherault@zeform.fr", "hérault", "benjamin", "dwwm2409", NULL, 2),
("fbretont@zeform.fr", "breton", "frédéric", "dwwm2409", NULL, 2),
("jmatz@zeform.fr", "matz", "jérôme", "dwwm2409", NULL, 2),
("llemmel@zeform.fr", "lemmel", "lucas", "dwwm2409", NULL, 2),
("kpariyar@zeform.fr", "pariyar", "karan", "cda2409", NULL, 2),
("rlancesseur@zeform.fr", "lancesseur", "rémi", "cda2409", NULL, 2),
("llissandre@zeform.fr", "lissandre", "laurent", "cda2409", NULL, 2),
("mbarriquand@zeform.fr", "barriquand", "marie", "cda2409", NULL, 2);

INSERT INTO activite
(activite_nom, activite_description, activite_capacite_min, activite_capacite_max, activite_debut, activite_fin, utilisateur_id)
VALUES
("badminton", "Faire du badminton", 0, 16, "1970-01-01 16:00:00", "1970-01-01 17:00:00", 1), -- DATETIME ou TIME ?
("tennis de table", "Taper dans la balle", 0, 12, "1970-01-01 16:00:00", "1970-01-01 17:00:00", 2),
("cardio muscu", "Transpirer", 0, 12, "1970-01-01 16:00:00", "1970-01-01 17:00:00", 1),
("piscine", "Se mouiller", 0, 5, "1970-01-01 16:00:00", "1970-01-01 17:00:00", 3);

INSERT INTO seance -- Création séance
(seance_file_attente, seance_statut, seance_capacite_min, seance_capacite_max, seance_debut, seance_fin, utilisateur_id, activite_id)
VALUES
(FALSE, TRUE, 1, 16, "2026-06-01 16:00:00", "2026-06-01 17:00:00", 2, 1), -- seance_file_attente pour autoriser ou non la file -- seance_statut = FALSE si annulée, TRUE si calculée
(FALSE, TRUE, 1, 5, "2026-06-01 16:00:00", "2026-06-01 17:00:00", 3, 4),
(FALSE, TRUE, 1, 12, "2026-06-01 16:00:00", "2026-06-01 17:00:00", 1, 3),
(FALSE, TRUE, 1, 12, "2026-06-01 16:00:00", "2026-06-01 17:00:00", 3, 2);

INSERT INTO inscription
(utilisateur_id, seance_id, date_inscription)
VALUES
(4, 3, "2024-06-01 16:00:00"),
(8, 2, "2024-06-01 16:00:00"),
(8, 4, "2024-06-01 16:00:00"),
(5, 1, "2024-06-01 16:00:00");
