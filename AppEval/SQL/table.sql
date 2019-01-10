CREATE TABLE OFFRE_EMPLOI(
        codeEmploi  SERIAL   ,
        libelle     Varchar (50)  ,
        description Varchar (50)  ,
        type        Varchar (50)  ,
        IdPersonne  Int  ,
        code        Varchar (50)
	,CONSTRAINT OFFRE_EMPLOI_PK PRIMARY KEY (codeEmploi)
);



CREATE TABLE CRITERE(
        idCritere      SERIAL   ,
        libelleCritere Varchar (50)
	,CONSTRAINT CRITERE_PK PRIMARY KEY (idCritere)
);



CREATE TABLE CANDIDATURE(
        codeCandidat            SERIAL   ,
        cv                      Varchar (50)  ,
        lettreMotiv             Varchar (50)  ,
        video                   Varchar (50)  ,
        dateC                   Date  ,
        IdPersonne              Int  ,
        codeEmploi              SERIAL   ,
        codeEmploi_OFFRE_EMPLOI Int
	,CONSTRAINT CANDIDATURE_PK PRIMARY KEY (codeCandidat)

	,CONSTRAINT CANDIDATURE_OFFRE_EMPLOI_FK FOREIGN KEY (codeEmploi_OFFRE_EMPLOI) REFERENCES OFFRE_EMPLOI(codeEmploi)
);



CREATE TABLE EVALUATION(
        idEvaluation SERIAL   ,
        nomPrenom_RH Varchar (50)  ,
        dateEval     Date  ,
        Bonus_Malus  Int  ,
        commentaire  Varchar (100)  ,
        codeCandidat Int
	,CONSTRAINT EVALUATION_PK PRIMARY KEY (idEvaluation)

	,CONSTRAINT EVALUATION_CANDIDATURE_FK FOREIGN KEY (codeCandidat) REFERENCES CANDIDATURE(codeCandidat)
);



CREATE TABLE Noter(
        idEvaluation Int  ,
        idCritere    Int,
        note int
	,CONSTRAINT Noter_PK PRIMARY KEY (idEvaluation,idCritere)

	,CONSTRAINT Noter_EVALUATION_FK FOREIGN KEY (idEvaluation) REFERENCES EVALUATION(idEvaluation)
	,CONSTRAINT Noter_CRITERE0_FK FOREIGN KEY (idCritere) REFERENCES CRITERE(idCritere)
);
-- ALTER TABLE Noter
-- ADD note Int ;



CREATE TABLE Associer(
        idCritere  Int  ,
        codeEmploi Int  ,
        coeff      Int
	,CONSTRAINT Associer_PK PRIMARY KEY (idCritere,codeEmploi)

	,CONSTRAINT Associer_CRITERE_FK FOREIGN KEY (idCritere) REFERENCES CRITERE(idCritere)
	,CONSTRAINT Associer_OFFRE_EMPLOI0_FK FOREIGN KEY (codeEmploi) REFERENCES OFFRE_EMPLOI(codeEmploi)
);
