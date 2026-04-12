CREATE TABLE User_(
   ID INT,
   email VARCHAR(50),
   nom VARCHAR(50),
   roles VARCHAR(50),
   password VARCHAR(50),
   pseudo VARCHAR(50),
   PRIMARY KEY(ID)
);
 
CREATE TABLE Historique(
   id INT,
   page_actuelle INT,
   date_maj DATETIME,
   ID_1 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(ID_1) REFERENCES User_(ID)
);
 
CREATE TABLE Livre(
   id INT,
   titre VARCHAR(50),
   auteur VARCHAR(50),
   resume VARCHAR(350),
   couverture_url Lien,
   type VARCHAR(50),
   PRIMARY KEY(id)
);
 
CREATE TABLE Chapitre(
   id INT,
   numero INT,
   titre VARCHAR(50),
   contenu_url url,
   id_1 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES Livre(id)
);
 
CREATE TABLE ListeLecture(
   id INT,
   statut VARCHAR(50),
   PRIMARY KEY(id)
);
 
CREATE TABLE Categorie(
   id INT,
   nom VARCHAR(50),
   PRIMARY KEY(id)
);
 
CREATE TABLE Commentaire(
   id INT,
   contenu VARCHAR(50),
   note BIGINT,
   date_publi DATE,
   ID_1 INT NOT NULL,
   id_2 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(ID_1) REFERENCES User_(ID),
   FOREIGN KEY(id_2) REFERENCES Livre(id)
);
 
CREATE TABLE conserver(
   id INT,
   id_1 INT,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Livre(id),
   FOREIGN KEY(id_1) REFERENCES ListeLecture(id)
);
 
CREATE TABLE détient(
   id INT,
   id_1 INT,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Livre(id),
   FOREIGN KEY(id_1) REFERENCES Categorie(id)
);