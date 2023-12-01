#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Rayons
#------------------------------------------------------------

CREATE TABLE Rayons(
        CodeRayon     Varchar (50) NOT NULL ,
        IntituleRayon Varchar (50) NOT NULL
	,CONSTRAINT Rayons_PK PRIMARY KEY (CodeRayon)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Auteur
#------------------------------------------------------------

CREATE TABLE Auteur(
        CodeAut   Varchar (50) NOT NULL ,
        NomAut    Varchar (50) NOT NULL ,
        PrenomAut Varchar (50) NOT NULL
	,CONSTRAINT Auteur_PK PRIMARY KEY (CodeAut)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Mots
#------------------------------------------------------------

CREATE TABLE Mots(
        CodeMot Varchar (50) NOT NULL ,
        Mot     Varchar (50) NOT NULL
	,CONSTRAINT Mots_PK PRIMARY KEY (CodeMot)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ouvrage
#------------------------------------------------------------

CREATE TABLE Ouvrage(
        CodeOuvrage  Varchar (50) NOT NULL ,
        TitreOuvrage Varchar (50) NOT NULL ,
        CodeRayon    Varchar (50) NOT NULL
	,CONSTRAINT Ouvrage_PK PRIMARY KEY (CodeOuvrage)

	,CONSTRAINT Ouvrage_Rayons_FK FOREIGN KEY (CodeRayon) REFERENCES Rayons(CodeRayon)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Adherant
#------------------------------------------------------------

CREATE TABLE Adherant(
        CodeAdh    Varchar (50) NOT NULL ,
        NomAdh     Varchar (50) NOT NULL ,
        PrenomAdh  Varchar (50) NOT NULL ,
        AdresseAdh Varchar (50) NOT NULL
	,CONSTRAINT Adherant_PK PRIMARY KEY (CodeAdh)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Auteur de
#------------------------------------------------------------

CREATE TABLE Auteur_de(
        CodeOuvrage Varchar (50) NOT NULL ,
        CodeAut     Varchar (50) NOT NULL
	,CONSTRAINT Auteur_de_PK PRIMARY KEY (CodeOuvrage,CodeAut)

	,CONSTRAINT Auteur_de_Ouvrage_FK FOREIGN KEY (CodeOuvrage) REFERENCES Ouvrage(CodeOuvrage)
	,CONSTRAINT Auteur_de_Auteur0_FK FOREIGN KEY (CodeAut) REFERENCES Auteur(CodeAut)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Indexe
#------------------------------------------------------------

CREATE TABLE Indexe(
        CodeOuvrage Varchar (50) NOT NULL ,
        CodeMot     Varchar (50) NOT NULL
	,CONSTRAINT Indexe_PK PRIMARY KEY (CodeOuvrage,CodeMot)

	,CONSTRAINT Indexe_Ouvrage_FK FOREIGN KEY (CodeOuvrage) REFERENCES Ouvrage(CodeOuvrage)
	,CONSTRAINT Indexe_Mots0_FK FOREIGN KEY (CodeMot) REFERENCES Mots(CodeMot)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Emprunt
#------------------------------------------------------------

CREATE TABLE Emprunt(
        CodeOuvrage Varchar (50) NOT NULL ,
        CodeAdh     Varchar (50) NOT NULL
	,CONSTRAINT Emprunt_PK PRIMARY KEY (CodeOuvrage,CodeAdh)

	,CONSTRAINT Emprunt_Ouvrage_FK FOREIGN KEY (CodeOuvrage) REFERENCES Ouvrage(CodeOuvrage)
	,CONSTRAINT Emprunt_Adherant0_FK FOREIGN KEY (CodeAdh) REFERENCES Adherant(CodeAdh)
)ENGINE=InnoDB;

