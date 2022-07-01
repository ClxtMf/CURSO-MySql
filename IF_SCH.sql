--Professores, auxiliares e etc...

USE infinity_school;

CREATE TABLE professores(
    matricula INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(45) NOT NULL,
    idade INT(2) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    formacao VARCHAR(25) NOT NULL,
    materia_ensino VARCHAR(25) NOT NULL,
    salario FLOAT(6,2) NOT NULL
);

CREATE TABLE vagas_ensino(
  id_vaga INT PRIMARY KEY AUTO_INCREMENT,
  nome_ensino VARCHAR(20) NOT NULL,
  fk_professores INT,
  FOREIGN KEY (fk_professores) REFERENCES professores(matricula)
);

INSERT INTO vagas_ensino (nome_ensino) VALUES ('Dev Full Stack'),
('Data Science'),('Fotografia'),('Desing'), ('Metarveso'), ('Maketing');


CREATE TABLE funcionarios(
    matricula INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(45) NOT NULL,
    idade INT(2) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    salario FLOAT(6,2) NOT NULL
);

CREATE TABLE vagas(
    id_vaga INT PRIMARY KEY AUTO_INCREMENT,
    nome_vaga VARCHAR(25) NOT NULL,
    fk_funcionarios INT,
    FOREIGN KEY (fk_funcionarios) REFERENCES funcionarios(matricula)
);

INSERT INTO vagas (nome_vaga) VALUES ('Recepcionista'),
('Auxiliar de limpeza'),('Zelador'),('Segurança');


INSERT INTO funcionarios (nome, idade, cpf, endereco, salario)
VALUES ('Paola Joséfina', 30, '23467034552', 'Rua do airton sena 167, bom jardim', 1500.00);

INSERT INTO vagas (nome_vaga, fk_funcionarios) 
VALUES (1, 1);


SELECT * FROM funcionarios;

SELECT * FROM vagas;