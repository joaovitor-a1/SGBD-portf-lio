show databases;
#comentario
Create database db_sistema_faculdade;

Drop database db_sistema_faculdade;

use db_sistema_faculdade;
#ativa o database

show tables;
#permite visualizar as tabelas existentes
#ctrl+enter inicia a linha

#tabela aluno

create table tbl_aluno (
	id int not null primary key auto_increment,
	nome_aluno varchar(45) not null,
    telefone_aluno varchar(45) not null,
    email_aluno varchar(45) not null,
    cpf_aluno varchar(45) not null,
	unique index (id)
);

drop table tbl_professor;

#tabela professor
create table tbl_professor (
	id int not null primary key auto_increment,
	nome_professor varchar(45) not null,
    telefone_professor varchar(45) not null,
    email_professor varchar(45) not null,
    cpf_professor varchar(45) not null,
    unique index (id)
);

#relacionamento entre a tabela matricula e aluno

#tabela matricula
create table tbl_matricula ( 
id int not null primary key auto_increment,
data_matricula date, 
id_aluno int not null, 
constraint FK_aluno_matricula 
foreign key (id_aluno) 
references tbl_aluno(id),
unique index(id)
);

#tabela turma
CREATE TABLE tbl_turma ( 
id_turma int not null primary key auto_increment,
ano year not null,
semestre varchar (10) not null,
id_professor int not null, 
id_aluno int not null, 

constraint FK_Professor_Turma 
foreign key (id_professor) 
references tbl_professor(id), 

constraint FK_Aluno_Turma 
foreign key (id_aluno) 
references tbl_aluno(id),

unique index(id_turma)
);


#tabela curso

create table tbl_curso( 
id_curso int not null primary key auto_increment,
 nome_curso varchar(60) not null,
 duracao_curso varchar(45) not null,
 id_turma int not null,
 constraint FK_Curso_Turma
 foreign key (id_turma)
 references tbl_turma(id_turma),
 
 unique index (id_curso)
 );

#tabela nota
create table tbl_nota(
id_nota int not null primary key auto_increment,
nota int  not null,
id_matricula int not null,
constraint FK_Nota_Matricula
foreign key (id_matricula)
references tbl_matricula(id),

unique index (id_nota)
);

#tabela materia
create table tbl_materia(
id_materia int not null primary key auto_increment,
nome_materia varchar(45),
id_curso int not null,
constraint FK_materia_curso
foreign key (id_curso)
references tbl_curso(id_curso),

unique index (id_materia)

);