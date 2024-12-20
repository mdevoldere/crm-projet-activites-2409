USE zeform;

CREATE TABLE role(
   role_id INT AUTO_INCREMENT,
   role_nom VARCHAR(50) NOT NULL,
   role_description VARCHAR(255),
   PRIMARY KEY(role_id)
);

CREATE TABLE utilisateur(
   utilisateur_id INT AUTO_INCREMENT,
   utilisateur_email VARCHAR(128) NOT NULL,
   utilisateur_nom VARCHAR(100) NOT NULL,
   utilisateur_prenom VARCHAR(100) NOT NULL,
   utilisateur_section VARCHAR(20) NOT NULL,
   utilisateur_mdp VARCHAR(255),
   role_id INT NOT NULL,
   PRIMARY KEY(utilisateur_id),
   UNIQUE(utilisateur_email),
   FOREIGN KEY(role_id) REFERENCES role(role_id)
);

CREATE TABLE activite(
   activite_id INT AUTO_INCREMENT,
   activite_nom VARCHAR(50) NOT NULL,
   activite_description VARCHAR(255) NOT NULL,
   activite_capacite_min TINYINT NOT NULL,
   activite_capacite_max TINYINT NOT NULL,
   activite_debut DATETIME NOT NULL,
   activite_fin DATETIME NOT NULL,
   utilisateur_id INT NOT NULL,
   PRIMARY KEY(activite_id),
   UNIQUE(activite_nom),
   FOREIGN KEY(utilisateur_id) REFERENCES utilisateur(utilisateur_id)
);

CREATE TABLE seance(
   seance_id INT AUTO_INCREMENT,
   seance_file_attente BOOLEAN NOT NULL,
   seance_statut BOOLEAN NOT NULL,
   seance_capacite_min TINYINT NOT NULL,
   seance_capacite_max TINYINT NOT NULL,
   seance_debut DATETIME NOT NULL,
   seance_fin DATETIME NOT NULL,
   utilisateur_id INT NOT NULL,
   activite_id INT NOT NULL,
   PRIMARY KEY(seance_id),
   FOREIGN KEY(utilisateur_id) REFERENCES utilisateur(utilisateur_id),
   FOREIGN KEY(activite_id) REFERENCES activite(activite_id)
);

CREATE TABLE inscription(
   utilisateur_id INT,
   seance_id INT,
   date_inscription DATETIME NOT NULL,
   PRIMARY KEY(utilisateur_id, seance_id),
   FOREIGN KEY(utilisateur_id) REFERENCES utilisateur(utilisateur_id),
   FOREIGN KEY(seance_id) REFERENCES seance(seance_id)
);
