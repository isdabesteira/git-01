/* modelo_logico_do_curso_de_banco_de_dados: */

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