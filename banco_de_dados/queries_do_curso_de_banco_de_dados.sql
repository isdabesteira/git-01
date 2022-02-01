/*******************************************************************
*                        Inserts                                   *
********************************************************************/


/*00*/use banco_do_curso_de_banco_de_dados
/*01*/insert into Aluno(
	Sexo, Idade, Data_inscricao_curso, Telefone, Valor_pago_curso,
    Ativo, Endereco, Nome
)values(
	'M', 55, '2018-12-01', '11 5555-2222', 645.22, 
    1, 'Avenida Paulista, 1500, ap315 - São Paulo - SP', 'João'
);
/*02*/insert into Aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo, endereco, nome, 
    sexo, idade
)values(
	'2018-11-01', '11 3333-2222', 589.12, 
    1, 'Rua Francisco Sá, 10 - Belo Horizonte - MG', 'Fernanda', 
    'F', 30
);
/*03*/insert into Aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo, endereco, nome, 
    sexo, idade
)values(
	'2018-12-02', '11 3333-7777', 600.55, 
    0, 'Avenida Dom Manuel, 300 - Fortaleza - CE', 'José', 
    'M', 29
);
/*04*/insert into Aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo, endereco, nome, 
    sexo, idade
)values(
	'2018-12-02', '11 7777-7777', 655.45, 
    1, 'Rua Miramar, 1200, ap112 - Natal - RN', 'Maria', 
    'F', 42
);
/*05*/insert into Aluno(
	data_inscricao_curso, telefone, valor_pago_curso,
    ativo, endereco, nome, 
    sexo, idade
)values(
	'2018-11-15', '11 1111-7777', 612.99, 
    1, 'Rua João de Abreu, 650 - Goiânia - GO', 'Marcelo', 
    'M', 37
);
/*06*/insert into Telefone(Numero,Tipo) values ('11 5555-2222','res'); /*José*/
/*07*/insert into Telefone(Numero,Tipo) values ('11 3333-4444','com'); /*José*/ 
/*08*/insert into Telefone(Numero,Tipo) values ('11 3333-2222','res'); /*Fernanda*/
/*09*/insert into Telefone(Numero,Tipo) values ('11 3333-7777','res'); /*João*/
/*10*/insert into Telefone(Numero,Tipo) values ('11 7777-7777','res'); /*Maria*/
/*11*/insert into Telefone(Numero,Tipo) values ('11 1111-7777','res'); /*Marcelo*/
/*12*/insert into Endereco(fk_idaluno, Logradouro, Numero, Complemento, Bairro, Cidade, Estado) 
                   SELECT  idaluno, Logradouro, Numero, Complemento, Bairro, Cidade, Estado
                   FROM Aluno;
/*13*/insert into Curso(Descricao) values ('Curso completo do desenvolvedor NodeJS e MongoDB');
/*14*/insert into Curso(Descricao) values ('Desenvolvedor multiplataforma Android e IOS');
/*15*/insert into Curso(Descricao) values ('Desenvolvimento web com Angular');
/*16*/insert into Curso(Descricao) values ('Desenvolvimento web completo 2019');
/* Preenchendo a tabela 'se_matricula' */
/*17*/insert into se_matricula(fk_idaluno, fk_idcurso) values (1,4);
/*18*/insert into se_matricula(fk_idaluno, fk_idcurso) values (2,2);
/*19*/insert into se_matricula(fk_idaluno, fk_idcurso) values (3,1);
/*20*/insert into se_matricula(fk_idaluno, fk_idcurso) values (3,2);
/*21*/insert into se_matricula(fk_idaluno, fk_idcurso) values (3,3);
/*22*/insert into se_matricula(fk_idaluno, fk_idcurso) values (3,4);
/*23*/insert into se_matricula(fk_idaluno, fk_idcurso) values (4,1);
/*24*/insert into Aluno(Nome, Idade, cpf, Data_inscricao_curso, Valor_pago_curso, Ativo, Sexo, email)
                values ('Rosa', 25, '666.655.554-15', '2020-10-10', 650.00, 1, 'F', 'rosa@gmarron.com');
/*25*/insert into Endereco(Logradouro, Numero, Complemento, Bairro, Cidade, Estado, fk_idaluno) 
                   values ('Avenida Paulista',500,'','Bela Vista','São Paulo','SP', 1);
/*26*//*26*/insert into Gasto( ano, 
			 tipo, 
			 jan, 
                         fev, 
                         mar, 
                         abr, 
                         mai, 
                         jun, 
                         jul, 
                         ago, 
                         `set`, 
                         `out`, 
                         nov, 
                         dez )
			values
			( '2019', 
                         'previsto', 
                         18000, 
                         17000, 
                         19000, 
                         20000, 
                         17000, 
                         18000, 
                         18500, 
                         18500, 
                         1800, 
                         17500, 
                         18000, 
                         17000 );
/*27*/insert into Gasto( ano, 
			 tipo, 
                         jan )
			 values ( '2019', 
			 'realizado', 
                         18353.20 );


/********************************************************************
 *                        Selects                                   *
 ********************************************************************/


use banco_do_curso_de_banco_de_dados
/*00*/select * from Aluno;
/*01*/select nome, idade, telefone from Aluno where valor_pago_curso > 600 and idade > 30;
/*02*/select * from Aluno where sexo = 'F';
/*03*/select * from Aluno where valor_pago_curso > 600;
/*04*/select * from Aluno where valor_pago_curso < 600;
/*05*/select * from Aluno where valor_pago_curso >= 600.55;
/*06*/select * from Aluno where valor_pago_curso <= 600.55;
/*07*/select * from Aluno where sexo = 'M' and ativo = 1;
/*08*/select * from Aluno where sexo = 'M' and ativo = 1 and valor_pago_curso < 625;
/*09*/select * from Aluno where (sexo = 'M' or ativo = 1) and valor_pago_curso < 625;
/*10*/select * from Aluno where (sexo = 'F' or idade > 40); 
/*11*/select * from Aluno where idade between 29 and 40;
/*12*/select * from Aluno where data_inscricao_curso between '2018-11-10' and '2018-12-31'; 
/*13*/select * from Aluno where nome in ( 'João', 'Maria', 'José' );
/* 'in' escrito de outra forma: */
/*14*/select * from Aluno where nome = 'João' or nome = 'Maria' or nome = 'José';
/*15*/select * from Aluno where nome not in ( 'João', 'Maria', 'José' );
/*16*/select * from Aluno where nome = 'Maria';
/*17*/select * from Aluno where nome like 'Maria';
/*18*/select * from Aluno where nome like '%a';
/*19*/select * from Aluno where nome like 'M%';
/*20*/select * from Aluno where nome like '__s_';
/*21*/select * from Aluno where nome like '%ri_';
/*22*/select * from Aluno where nome like 'ma_ia';
/*23*/select * from Aluno where nome not like 'M%';
/*24*/select * from Aluno where nome like 'M%O';
/*25*/select * from Aluno where nome like '__ã_';
/*26*/select * from Aluno where nome like '%N__d%';
/*27*/select * from Aluno where idade > 20 order by nome desc, idade asc;
/*28*/select * from Aluno where idade > 20 order by nome asc, idade desc;
/*29*/select * from Aluno order by idade desc;
/*30*/select * from Aluno order by nome desc;
/*31*/select * from Aluno order by nome /*DEFAULT=ASC*/;
/*32*/select * from Aluno order by valor_pago_curso asc /*DEFAULT=ASC*/;
/*33*/select * from Aluno order by valor_pago_curso desc;
/*34*/select * from Aluno order by sexo asc, idade desc;
/*35*/select idaluno, Nome, Telefone.Numero, Tipo from Aluno, Telefone where idaluno=fk_idaluno;
/*36*/select * from Telefone;
/*37*/select * from Endereco;
/*38*/select * from Curso;
/*39*/select * from Endereco where idendereco=6;
/*40*/select sum(Valor_pago_curso) as Total, 
             avg(Valor_pago_curso) as Média, 
             min(Valor_pago_curso) as Mínimo, 
             max(Valor_pago_curso) as Máximo,
             count(*) as 'Quantidade de alunos'
      from Aluno;
/*41*/select sum(Valor_pago_curso) as Total, 
             avg(Valor_pago_curso) as Média, 
             min(Valor_pago_curso) as Mínimo, 
             max(Valor_pago_curso) as Máximo,
             count(*) as 'Quantidade de Mulheres'
      from Aluno where Sexo = 'F';
/*42*/select sum(Valor_pago_curso) as Total, 
             avg(Valor_pago_curso) as Média, 
             min(Valor_pago_curso) as Mínimo, 
             max(Valor_pago_curso) as Máximo,
             count(*) as 'Quantidade de Homens'
      from Aluno where Sexo != 'F';
/*43*/select max(Idade) as 'Idade do mais velho' from Aluno;
/*44*/select min(Idade) as 'Idade do mais novo' from Aluno;
/*45*/select truncate(77.8945,2);
/*46*/select ceil(77.8945); 
/*47*/select floor(77.8945);
/*48*/select round(77.8945,2);
/*49*/select round(77.8955,2);
/*50*/select Estado, count(*) as 'Número de alunos' from Endereco group by Estado;
/*51*/select 
              Descricao as Curso, 
              count(*) as Alunos 
      from 
              se_matricula, Curso
      where 
              idcurso = fk_idcurso
      group by 
              fk_idcurso;
/*52*/select jan, fev, mar, abr, mai, jun, jul, ago, `set`, `out`, nov, dez from Gasto;
/*53*/select ( jan + fev + mar + abr + mai + jun + jul + ago + `set` + `out` + nov + dez ) as 'Total de gasto' from Gasto;
/*54*/select Ano, 
	     ( jan + fev + mar + abr + mai + jun + jul + ago + `set` + `out` + nov + dez )/12 as 'Média mensal de gasto', 
             Tipo from Gasto;

/********************************************************************
 *                        Updates                                   *
 ********************************************************************/

/*01*/update Aluno set Ativo = 0 where Nome = 'João';
/*02*/update Aluno set idade=35 where Nome = 'Fernanda';
/*03*/update Aluno set idade=45 where Nome like 'M%';
/*04*/update Aluno set ativo=1, valor_pago_curso=650.00 where Nome like '__ã_';
/*05*/update Aluno set telefone='84 9991-7746' where telefone = '11 7777-7777';
/*06*/update Aluno set cpf='111.111.111-11' where nome = 'João';
/*07*/update Aluno set cpf='222.111.111-11' where nome = 'Fernanda';
/*08*/update Aluno set cpf='333.111.111-11' where nome = 'José';
/*09*/update Aluno set cpf='444.111.111-11' where nome = 'Maria';
/*10*/update Aluno set cpf='555.111.111-11' where nome = 'Marcelo';
/*11*/update Aluno set cpf='111.111.111-11', nome ='João' where Telefone = '11 3333-7777'
/*12*/update Aluno 
                  set 
                      logradouro = 'Avenida Paulista',
                      complemento = 'ap315',
                      numero = '1500',
                      bairro = 'Bela Vista',
                      cidade = 'São Paulo',
                      estado = 'SP'
				  where
                      idaluno = 1;
/*13*/update Aluno 
                  set 
                      logradouro = 'Rua Francisco Sá',
                      complemento = '',
                      numero = '10',
                      bairro = 'Gutierrez',
                      cidade = 'Belo Horizonte',
                      estado = 'MG'
				  where
                      idaluno = 2;
/*14*/update Aluno 
                  set 
                      logradouro = 'Avenida Dom Manuel',
                      complemento = '',
                      numero = '300',
                      bairro = 'Aldeota',
                      cidade = 'Fortaleza',
                      estado = 'CE'
				  where
                      idaluno = 3;
/*15*/update Aluno 
                  set 
                      logradouro = 'Rua Miramar',
                      complemento = 'ap112',
                      numero = '1200',
                      bairro = 'Rocas',
                      cidade = 'Natal',
                      estado = 'RN'
				  where
                      idaluno = 4;
/*16*/update Aluno 
                  set 
                      logradouro = 'Rua João de Abreu',
                      complemento = '',
                      numero = '650',
                      bairro = 'Setor Oeste',
                      cidade = 'Goiânia',
                      estado = 'GO'
				  where
                      idaluno = 5;
/*17*/update Telefone set fk_idaluno=1 where idtelefone in (1,2);
/*18*/update Telefone set fk_idaluno=2 where idtelefone in (3);
/*19*/update Telefone set fk_idaluno=3 where idtelefone in (4);
/*20*/update Telefone set fk_idaluno=4 where idtelefone in (5);
/*21*/update Telefone set fk_idaluno=5 where idtelefone in (6);
/* Atualizando os tipos de telefone */
/*22*/update Telefone set Tipo='res' where idtelefone = 1;
/*23*/update Telefone set Tipo='cel' where idtelefone = 2;
/*24*/update Telefone set Tipo='com' where idtelefone = 3;
/*25*/update Telefone set Tipo='cel' where idtelefone = 4;
/*26*/update Telefone set Tipo='com' where idtelefone = 5;
/*27*/update Telefone set Tipo='cel' where idtelefone = 6;
/* Atualizando os Gastos por mês do registro 2 */
/*28*/update Gasto set fev = 17555.55 where idgasto = 2;
/*29*/update Gasto set mar = 19435.73 where idgasto = 2;
/*30*/update Gasto set abr = 22753.12 where idgasto = 2;
/*31*/update Gasto set mai = 16198.12 where idgasto = 2;
/*32*/update Gasto set jun = 17451.88 where idgasto = 2;
/*33*/update Gasto set jul = 18975.40 where idgasto = 2;
/*34*/update Gasto set ago = 19163.84 where idgasto = 2;
/*35*/update Gasto set `set` = 18132.56 where idgasto = 2;
/*36*/update Gasto set `out` = 17667.91 where idgasto = 2;
/*37*/update Gasto set nov = 17936.33 where idgasto = 2;
/*38*/update Gasto set dez = 17125.88 where idgasto = 2;

/********************************************************************
 *                        Deletes                                   *
 ********************************************************************/

/*01*/delete from Aluno where idade = 29;
/*02*/delete from Aluno where ( idade between 35 and 49 ) or sexo = 'F';
/*03*/delete from Aluno where sexo not like 'F';
/*04*/delete from Endereco where idendereco=6;

/********************************************************************
 *                        Fim                                       *
 ********************************************************************/

