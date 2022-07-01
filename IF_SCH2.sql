USE infinity_school;


CREATE TABLE cursos(
  id_curso INT PRIMARY KEY AUTO_INCREMENT,
  nome_curso VARCHAR(20) NOT NULL,
  duracao VARCHAR(25) NOT NULL
);

CREATE TABLE alunos(
    matricula INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(45) NOT NULL,
    idade INT(2) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    fk_curso INT,
    FOREIGN KEY(fk_curso) REFERENCES cursos(id_curso)
);


INSERT INTO cursos (nome_curso, duracao) VALUES ('Dev Full Stack', '1 ano'),
('Data Science', '1 ano'),('Fotografia', '1 ano'),('Desing', '1 ano'), ('Metarveso', '1 ano'), ('Maketing', '1 ano');


SELECT * FROM cursos;

-- Dev Full Stack > Abaixo
INSERT INTO alunos(nome, idade, cpf, endereco, fk_curso)
VALUES('Márcio Calisto', 17, '62729309330', 'Rua monsenhor sábino feijão 1913, Bom jardim', 1),
('João Cleber', 18, '27639856765', 'Rua Jardim paroara 1000, Bom jardim', 1),
('Elizabete Joana', 19, '38749056353', 'Rua marcelo santa fé 763, Bom jardim', 1),
('Maria Quebrada', 22, '90165278334', 'Rua rodrigues alves 7382, Parque são josé', 1),
('Pipoqueiro', 27, '82365457867', 'Av. monte pascoal 5672, Jerusalém', 1),
('Manoela', 35, '41378209345', 'Av. conégo de castro 872, Parque são josé', 1),
('Fernanda', 30, '98290326535', 'Av. ósorio de paiva 6723, Siqueira',1),
('Miguel', 29, '30948237845', 'Rua raimundo marques 971, Canidezinho', 1),
('Joana', 18, '37856443234', 'Rua franciscano 435, Bom jardim', 1),
('Maxine', 20, '28936745654', 'Rua dos golfinhos 1762, Porto das dunas', 1);

SELECT * FROM alunos;

-- Data Science > Abaixo
INSERT INTO alunos(nome, idade, cpf, endereco, fk_curso)
VALUES(),