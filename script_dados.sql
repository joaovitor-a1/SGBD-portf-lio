use db_sistema_faculdade;
#dados alunos
INSERT INTO tbl_aluno (nome_aluno, telefone_aluno, email_aluno, cpf_aluno) 
VALUES ('Mateus', '2525-2525', 'mateus@gmail.com', '123.433.468-2');

select * from tbl_aluno;


#dados professores
insert into tbl_professor (nome_professor, telefone_professor, email_professor, cpf_professor)
values ('Manoeç', '1111-4452', 'ProfManoel@hotmail.com', '900.312.433-2' );

select * from tbl_professor;


#dados matricula
insert into tbl_matricula (data_matricula, id_aluno) 
values ('2001-10-26', 3);

select *from tbl_matricula;


#dados turma
insert into tbl_turma (ano_turma, semestre_turma , id_professor, id_aluno)
values ('2002-10-25', '2º semestre', 1, 1);

#dados curso
insert into tbl_curso (nome_curso, duracao_curso, id_turma)
values ('robotica', '3 meses', 1);

#dados nota
insert into tbl_nota (nota,  id_matricula)
values ('10', 1);

#dados materia
insert into tbl_materia (nome_materia, id_cursos)
values ('programacao' , 1);
show tables;


#Updates para alunos
update tbl_aluno set nome_aluno = 'jafar' where id = 2;
update tbl_aluno set telefone_aluno = 'jafar' where id = 2;
update tbl_aluno set email_aluno = 'jafar' where id = 2;
update tbl_aluno set cpf_aluno = 'jafar' where id = 2;

delete from tbl_aluno where id = 2;


#Updates para professores
update tbl_professor set nome_professor = '' where id = 2;
update tbl_professor set telefone_professor = '' where id = 2;
update tbl_professor set email_professor = '' where id = 2;
update tbl_professor set cpf_professor = '' where id = 2;

delete from tbl_professor where id = 2;

#Updates para matricula
update tbl_matricula set data_matricula = '' where id =2;

delete from tbl_matricula where id = 2;

#Updates para turma
update tbl_turma set ano_turma = '' where id = 2;
update tbl_turma set semestre_turma = '' where id = 2;

delete from tbl_turma where id = 2;

#Updates para curso
update tbl_curso set nome_curso = '' where id = 2;
update tbl_turma set duracao_curso = '' where id = 2;

delete from tbl_curso where id = 2;

#Updates para nota
update tbl_nota set nota = ' ' where id = 2;

delete from tbl_nota where id = 2;

#Updates para materia
update tbl_materia set nome_materia = ' ' where id =2;

delete from tbl_materia where id = 2;
