/* modelo_logico_do_curso_de_banco_de_dados: */

/* Criando tabelas */
CREATE TABLE Aluno (
    Nome varchar(25),
    Endereco text,
    Telefone varchar(20),
    Idade int,
    Data_inscricao_curso date,
    Valor_pago_curso float(10,2),
    Ativo int,
    Sexo char(1)
);

CREATE TABLE Telefone (
    idtelefone int PRIMARY KEY AUTO_INCREMENT,
    Numero varchar(20),
    Tipo char(3)
);

CREATE TABLE Endereco (
    idendereco int primary key auto_increment,
    fk_idaluno int,
    Logadouro varchar(100),
    Numero varchar(10),
    Complemento varchar(20),
    Bairro varchar(50),
    Cidade varchar(100),
    Estado char(2)
);

CREATE TABLE Curso (
    idcurso int PRIMARY KEY AUTO_INCREMENT,
    Descricao varchar(50)
);

CREATE TABLE se_matricula (
    idse_matricula int PRIMARY KEY AUTO_INCREMENT,
    fk_idaluno int,
    fk_idcurso int
);
CREATE TABLE se_matricula (
    idse_matricula int PRIMARY KEY AUTO_INCREMENT,
    fk_idaluno int,
    fk_idcurso int
);CREATE TABLE se_matricula (
    idse_matricula int PRIMARY KEY AUTO_INCREMENT,
    fk_idaluno int,
    fk_idcurso int
);CREATE TABLE se_matricula (
    idse_matricula int PRIMARY KEY AUTO_INCREMENT,
    fk_idaluno int,
    fk_idcurso int
);

ALTER TABLE se_matricula ADD CONSTRAINT fk_aluno_se_matricula
                                            FOREIGN KEY (fk_idaluno) 
                                            REFERENCES Aluno(idaluno);
ALTER TABLE se_matricula ADD CONSTRAINT fk_curso_matricula 
                                            FOREIGN KEY (fk_idcurso) 
                                            REFERENCES Curso(idcurso);
/* Alterando colunas da tabela */
ALTER TABLE Aluno ADD CPF char(11);
ALTER TABLE Aluno ADD email varchar(150);
ALTER TABLE Aluno MODIFY COLUMN CPF char(14);
ALTER TABLE Aluno DROP COLUMN CPF;
ALTER TABLE Aluno ADD CPF char(14) AFTER Idade;
ALTER TABLE Aluno CHANGE CPF cpf CHAR(14);
ALTER TABLE Aluno MODIFY COLUMN cpf CHAR(14) PRIMARY KEY;
/* Criando chave primária não natural */
ALTER TABLE Aluno ADD COLUMN idaluno int PRIMARY KEY AUTO_INCREMENT;
/* Decompondo o campo composto - endereço - em campos menores e atômicos. */
ALTER TABLE Aluno ADD COLUMN Logradouro varchar(100);
ALTER TABLE Aluno ADD COLUMN Bairro varchar(100);
ALTER TABLE Aluno ADD COLUMN Complemento varchar(20);
ALTER TABLE Aluno ADD COLUMN Numero varchar(10);
ALTER TABLE Aluno ADD COLUMN Cidade varchar(50);
ALTER TABLE Aluno ADD COLUMN Estado varchar(2);
ALTER TABLE Aluno DROP COLUMN Endereco;
/* Criando a chave estrangeira e o constraint da chave para criar o relacionamento. */
ALTER TABLE Telefone ADD COLUMN fk_idaluno int;
ALTER TABLE Telefone ADD CONSTRAINT fk_aluno_telefone FOREIGN kEY (fk_idaluno) REFERENCES Aluno(idaluno);
/* Removendo a coluna Telefone da tabela Aluno. */
ALTER TABLE Aluno DROP COLUMN Telefone;
/* Criando o constraint da chave estrangeira para criar o relacionamento. */
ALTER TABLE Endereco ADD CONSTRAINT fk_aluno_endereco FOREIGN KEY (fk_idaluno) REFERENCES Aluno (idaluno);
/* Corrigir o erro Logadouro para Logradouro na tabela Endereco. */
ALTER TABLE Endereco CHANGE Logadouro Logradouro varchar(100);
/* Remover os campos redundantes da tabela Aluno baseado na tabela Endereco */
ALTER TABLE Aluno DROP COLUMN Logradouro;
ALTER TABLE Aluno DROP COLUMN Bairro;
ALTER TABLE Aluno DROP COLUMN Numero;
ALTER TABLE Aluno DROP COLUMN Cidade;
ALTER TABLE Aluno DROP COLUMN Complemento;
ALTER TABLE Aluno DROP COLUMN Estado;
