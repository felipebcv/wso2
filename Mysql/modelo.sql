CREATE DATABASE IF NOT EXISTS CUSTOM_USERSTORE;

USE CUSTOM_USERSTORE;

CREATE TABLE COLABORADORES(
    ID int(4) AUTO_INCREMENT,
    USERNAME VARCHAR (100),
    SENHA VARCHAR (100),
    NOME varchar(30) NOT NULL,
    SOBRENOME varchar(30) NOT NULL,
    EMAIL varchar(50),
    PRIMARY KEY (ID)
);

INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (1, 'usuario0', 'password2022', 'Usuario0', 'Usuario0', 'usuario0@test.com');
INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (2, 'usuario1', 'password2022', 'Usuario1', 'Usuario1', 'usuario1@test.com');
INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (3, 'usuario2', 'password2022', 'Usuario2', 'Usuario2', 'usuario2@test.com');
INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (4, 'usuario3', 'password2022', 'Usuario3', 'Usuario3', 'usuario3@test.com');
INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (5, 'usuario4', 'password2022', 'Usuario4', 'Usuario4', 'usuario4@test.com');
INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (6, 'usuario5', 'password2022', 'Usuario5', 'Usuario5', 'usuario5@test.com');
INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (7, 'usuario6', 'password2022', 'Usuario6', 'Usuario6', 'usuario6@test.com');
INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (8, 'usuario7', 'password2022', 'Usuario7', 'Usuario7', 'usuario7@test.com');
INSERT INTO COLABORADORES (ID, USERNAME, SENHA, NOME, SOBRENOME, EMAIL) VALUES (9, 'usuario8', 'password2022', 'Usuario8', 'Usuario8', 'usuario8@test.com');