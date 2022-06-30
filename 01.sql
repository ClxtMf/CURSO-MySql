USE escola;

CREATE TABLE porteiro(
    matricula INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    idade INT(2) NOT NULL,
    horario VARCHAR(20) NOT NULL
);