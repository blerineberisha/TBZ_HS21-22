CREATE TABLE Mitarbeiter (
  id int(11) NOT NULL AUTO_INCREMENT,
  lastname varchar(50) DEFAULT NULL,
  firstname varchar(50) DEFAULT NULL,
  chef int(11) DEFAULT NULL,
  titel int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_chef (chef),
  KEY fk_titel (titel),
  CONSTRAINT fk_chef FOREIGN KEY (chef) REFERENCES Mitarbeiter (id),
  CONSTRAINT fk_titel FOREIGN KEY (titel) REFERENCES Titel (id)
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE Mitarbeiter_chefs (
  id int(11) NOT NULL AUTO_INCREMENT,
  firstname varchar(50) DEFAULT NULL,
  lastname varchar(50) DEFAULT NULL,
  chef int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_mitarbeiter (chef),
  CONSTRAINT fk_mitarbeiter FOREIGN KEY (chef) REFERENCES Mitarbeiter (id)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE Titel (
  id int(11) NOT NULL AUTO_INCREMENT,
  titelname varchar(30) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

