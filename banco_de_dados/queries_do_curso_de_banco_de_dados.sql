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


/********************************************************************
 *                        Deletes                                   *
 ********************************************************************/

/*01*/delete from Aluno where idade = 29;
/*02*/delete from Aluno where ( idade between 35 and 49 ) or sexo = 'F';
/*03*/delete from Aluno where sexo not like 'F';

/********************************************************************
 *                        Fim                                       *
 ********************************************************************/

