INSERT INTO CRITERE(idCritere,libelleCritere)
VALUES
      (1,'attitude'),
      (2,'experience professionelle'),
      (3,'comptence informatique'),
      (4,'habilité d''expression');

INSERT INTO OFFRE_EMPLOI(codeEmploi,libelle,description,Idpersonne,code)
values
  (1,'rh','Responsable de formation,Chargé de recrutement',1,'1'),
  (2,'secretaire','Prise de notes, saisie du courrier, réception',2,'1'),
  (3,'assistant secretaire','Prise de notes, saisie du courrier',2,'4'),
  (4,'chef de projet','Gérer le bon développement du projet',1,'2'),
  (5,'Comptable','Gestion des comptes', 2,'1');

INSERT INTO CANDIDATURE(codeCandidat,cv,lettreMotiv,video,dateC,IdPersonne,codeEmploi)
values
  (1,'a','a','a','2018-10-12',3,'1'),
  (2,'a','a','a','2018-10-12',3,'2'),
  (3,'a','a','a','2018-10-12',4,'1'),
  (4,'a','a','a','2018-10-12',4,'3'),
(5,'a','a','a','2018-10-12',5,'4');

INSERT INTO EVALUATION(idEvaluation,nomPrenom_RH,dateEval,Bonus_Malus,commentaire,codeCandidat)
VALUES
      (1,'duaz_jhon','2018-04-04',5,'bonne recrut',1);

      INSERT INTO Noter(idEvaluation,idCritere,note)
      VALUES
            (1,1,7),
            (1,3,8);



INSERT INTO Associer(idCritere,codeEmploi,coeff)
VALUES
      (1,1,3),
      (1,2,1),
      (2,3,2),
      (2,5,2),
      (3,4,5),
      (4,2,3);
