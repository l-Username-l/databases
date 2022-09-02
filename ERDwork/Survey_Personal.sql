
CREATE TABLE Ans_No
(
  Ans_No INT          NOT NULL,
  Answer VARCHAR(200) NULL    ,
  PRIMARY KEY (Ans_No)
);

CREATE TABLE MERGE_No
(
  Name_No INT NOT NULL,
  Surv_No INT NOT NULL,
  Ans_No  INT NOT NULL
);

CREATE TABLE Name_No
(
  Name_No INT          NOT NULL,
  Name    VARCHAR(200) NULL    ,
  PRIMARY KEY (Name_No)
);

CREATE TABLE Name_No_Surv_No
(
  Name_No INT NOT NULL,
  Surv_No INT NOT NULL,
  PRIMARY KEY (Name_No)
);

CREATE TABLE Surv_No
(
  Surv_No INT          NOT NULL,
  Survey  VARCHAR(200) NOT NULL,
  PRIMARY KEY (Surv_No)
);

CREATE TABLE Surv_No_Ans_No
(
  Surv_No INT NOT NULL,
  Ans_No  INT NOT NULL,
  PRIMARY KEY (Surv_No, Ans_No)
);

ALTER TABLE Name_No_Surv_No
  ADD CONSTRAINT FK_Name_No_TO_Name_No_Surv_No
    FOREIGN KEY (Name_No)
    REFERENCES Name_No (Name_No);

ALTER TABLE Name_No_Surv_No
  ADD CONSTRAINT FK_Surv_No_TO_Name_No_Surv_No
    FOREIGN KEY (Surv_No)
    REFERENCES Surv_No (Surv_No);

ALTER TABLE Surv_No_Ans_No
  ADD CONSTRAINT FK_Surv_No_TO_Surv_No_Ans_No
    FOREIGN KEY (Surv_No)
    REFERENCES Surv_No (Surv_No);

ALTER TABLE Surv_No_Ans_No
  ADD CONSTRAINT FK_Ans_No_TO_Surv_No_Ans_No
    FOREIGN KEY (Ans_No)
    REFERENCES Ans_No (Ans_No);

ALTER TABLE MERGE_No
  ADD CONSTRAINT FK_Name_No_Surv_No_TO_MERGE_No
    FOREIGN KEY (Name_No)
    REFERENCES Name_No_Surv_No (Name_No);

ALTER TABLE MERGE_No
  ADD CONSTRAINT FK_Surv_No_Ans_No_TO_MERGE_No
    FOREIGN KEY (Surv_No, Ans_No)
    REFERENCES Surv_No_Ans_No (Surv_No, Ans_No);
