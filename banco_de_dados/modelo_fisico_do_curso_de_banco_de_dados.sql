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

