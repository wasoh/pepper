#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Questions
#------------------------------------------------------------

CREATE TABLE Questions(
        id_question     int (11) Auto_increment  NOT NULL ,
        enonce_question Text NOT NULL ,
        PRIMARY KEY (id_question )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Reponses
#------------------------------------------------------------

CREATE TABLE Reponses(
        id_reponse     int (11) Auto_increment  NOT NULL ,
        enonce_reponse Text NOT NULL ,
        id_question    Int NOT NULL ,
        PRIMARY KEY (id_reponse )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: TraductionsQuestions
#------------------------------------------------------------

CREATE TABLE TraductionsQuestions(
        id_traductionQ     int (11) Auto_increment  NOT NULL ,
        enonce_traductionQ Text NOT NULL ,
        id_question        Int NOT NULL ,
        PRIMARY KEY (id_traductionQ )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: TraductionsReponses
#------------------------------------------------------------

CREATE TABLE TraductionsReponses(
        id_traductionR     int (11) Auto_increment  NOT NULL ,
        enonce_traductionR Text NOT NULL ,
        id_reponse         Int NOT NULL ,
        PRIMARY KEY (id_traductionR )
)ENGINE=InnoDB;

ALTER TABLE Reponses ADD CONSTRAINT FK_Reponses_id_question FOREIGN KEY (id_question) REFERENCES Questions(id_question);
ALTER TABLE TraductionsQuestions ADD CONSTRAINT FK_TraductionsQuestions_id_question FOREIGN KEY (id_question) REFERENCES Questions(id_question);
ALTER TABLE TraductionsReponses ADD CONSTRAINT FK_TraductionsReponses_id_reponse FOREIGN KEY (id_reponse) REFERENCES Reponses(id_reponse);
