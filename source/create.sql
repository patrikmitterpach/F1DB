-- CREATE Script pre databázu Formuli 1
-- Odstránenie už existujúcich tabuliek
DROP TABLE if exists Jazdec         CASCADE;
DROP TABLE if exists Tim            CASCADE;
DROP TABLE if exists Kontrakt       CASCADE;
DROP TABLE if exists Krajina        CASCADE;
DROP TABLE if exists Pretek         CASCADE;
DROP TABLE if exists Okruh          CASCADE;
DROP TABLE if exists Trest          CASCADE;
DROP TABLE if exists Reziser        CASCADE;
DROP TABLE if exists Auto           CASCADE;
DROP TABLE if exists Motor_vyrobca  CASCADE;
DROP TABLE if exists Sezona         CASCADE;
DROP TABLE if exists Principal      CASCADE;

-- Vytvorenie entít
CREATE TABLE Krajina (
    id_krajina  int primary key,
    nazov       varchar (256) NOT NULL,
    kontinent   varchar
);

CREATE TABLE Principal (
    id_principal   int primary key,
    meno           varchar(256)
);

CREATE TABLE Okruh    (
    id_okruh        int primary key,
    nazov           varchar(256),
    miesto          varchar(256),
    dlzka           int,
    postaveny       int,

    lezi_v          int NOT NULL,

    FOREIGN KEY (lezi_v) REFERENCES Krajina(id_krajina)
);


CREATE TABLE Reziser (
    id_reziser int primary key,
    meno varchar(256) NOT NULL
);

CREATE TABLE Tim (
  id_tim            int primary key,
  meno              varchar(20),

  rok_zalozenia     int,
  id_krajina        int,
  pocet_vitazstiev  int,

  je_vedeny         int,

  FOREIGN KEY (id_krajina) REFERENCES Krajina(id_krajina),
  FOREIGN KEY (je_vedeny)  REFERENCES Principal(id_principal)
);

CREATE TABLE Jazdec (
    id_jazdec   int primary key,
    meno        varchar(256) NOT NULL,
    skratka     varchar(3)   NOT NULL,
    vek         int,

    povod       int,

    FOREIGN KEY (povod) REFERENCES Krajina(id_krajina)
);

CREATE TABLE Sezona (
    rok                 int primary key,

    vitaz_konstrukter   int NOT NULL,
    vitaz_jazdec        int NOT NULL,

    FOREIGN KEY (vitaz_jazdec)      REFERENCES Jazdec(id_jazdec),
    FOREIGN KEY (vitaz_konstrukter) REFERENCES Tim(id_tim)
);



CREATE TABLE Kontrakt (
    id_jazdec       int NOT NULL,
    id_tim          int NOT NULL,

    zaciatok        int NOT NULL,
    koniec          int,
    plat            int,


    FOREIGN KEY (id_jazdec) REFERENCES Jazdec(id_jazdec),
    FOREIGN KEY (id_tim)    REFERENCES Tim(id_tim)
);



CREATE TABLE Motor_vyrobca (
    id_dodavatel    int primary key,
    meno            varchar(256),

    vlastnik_tim    int,

    FOREIGN KEY (vlastnik_tim) REFERENCES Tim(id_tim)
);

CREATE TABLE Auto (
    meno            varchar(256),

    id_tim          int primary key,
    motor_od        int,

    FOREIGN KEY (id_tim)    REFERENCES Tim(id_tim),
    FOREIGN KEY (motor_od)  REFERENCES Motor_vyrobca(id_dodavatel)
);


CREATE TABLE Pretek (
    id_pretek       int primary key,
    nazov           varchar(256) NOT NULL,
    mal_safety_car  bool,

    sezona          int,
    reziser         int NOT NULL,
    prebieha_na     int NOT NULL,
    vitaz           int NOT NULL,

    FOREIGN KEY (sezona)        REFERENCES Sezona(rok),
    FOREIGN KEY (reziser)       REFERENCES Reziser(id_reziser),
    FOREIGN KEY (prebieha_na)   REFERENCES Okruh(id_okruh),
    FOREIGN KEY (vitaz)         REFERENCES Jazdec(id_jazdec)
);

CREATE TABLE Trest (
    id_trest       int primary key,

    penazny_trest   int,
    casovy_trest    int,
    pozicny_trest   int,
    trestne_body    int,

    previneny       int,
    pocas           int,

    FOREIGN KEY (previneny) REFERENCES Jazdec(id_jazdec),
    FOREIGN KEY (pocas)     REFERENCES Pretek(id_pretek)
);