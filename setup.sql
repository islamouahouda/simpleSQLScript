\c stock;
CREATE TABLE Produit (
  Ref VARCHAR(15),
  Desig VARCHAR(30),
  PU FLOAT,
  QS FLOAT,
  CONSTRAINT XRef UNIQUE (Ref)
);


CREATE TABLE Client (
  Code VARCHAR(15),
  Nom VARCHAR(30),
  Prenom VARCHAR(30),
  Adresse VARCHAR(50),
  Tel VARCHAR(15),
  CONSTRAINT XCode UNIQUE (Code)
);

CREATE TABLE Fournisseur (
  Code VARCHAR(15),
  Nom VARCHAR(30),
  Prenom VARCHAR(30),
  Adresse VARCHAR(50),
  Tel VARCHAR(15),
  CONSTRAINT XCodeF UNIQUE (Code)
);

CREATE TABLE Facture (
  NumFact INT,
  CodeCli VARCHAR(15),
  DF Date,
  CONSTRAINT XNF UNIQUE (NumFact)
);

CREATE TABLE Achat (
  NumFact INT,
  RefProd VARCHAR(15),
  QA Float
);

INSERT INTO Produit VALUES ('C01', 'Clavier', 200, 30);
INSERT INTO Produit VALUES ('C02', 'Ecran', 2000, 10);
INSERT INTO Produit VALUES ('C03', 'Imprimante', 1500, 2);
