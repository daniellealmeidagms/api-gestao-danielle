---
--- POPULAR TABELA NECESSIDADES
---
INSERT INTO necessidades(cid,"descricaoSimples","descricaoTecnica") 
VALUES 
    --- 01
    ('F41','Ansiedade','Outros transtornos ansiosos'),
    --- 02
    ('F41.0','Pânico','Transtorno de pânico (ansiedade paroxística episódica)'),
    --- 03
    ('F84.1','TEA - Transtorno do Espectro Autista','Autismo atípico'),
    --- 04
    ('R48','Dislexia','Dislexia'),
    --- 05
    ('F81.2','Discalculia','Discalculia'),
    --- 06
    ('F90.0','TDAH - Transtorno do Déficit de Atenção e Hiperatividade','Distúrbios da atividade e da atenção'),
    --- 07
    ('G91','Hidrocefalia','A hidrocefalia é um acúmulo de líquido excedente nos espaços normais dentro do cérebro (ventrículos) e/ou entre as camadas de tecido interna e média que recobrem o cérebro (o espaço subaracnóideo).'),
    --- 08
    ('H91','Surdez','Outras perdas de audição.'),
    --- 09
    ('G92','Encefalopatia tóxica','A encefalopatia é causada pelas toxinas provenientes da alimentação em que o próprio fígado não consegue eliminá-las'),
    --- 10
    ('H54','Cegueira e visão subnormal','É considerado cego ou de visão subnormal aquele que apresenta desde ausência total de visão até alguma percepção luminosa que possa determinar formas a curtíssima distância.');

---
--- POPULAR TABELA CURSOS
---

INSERT INTO cursos("descricaoCurso", "turno", "departamento", "modalidade") VALUES
    --- 01
	('Técnico Integrado em Mineração','Matutino', 'III', 'Técnico Integrado'),
    --- 02
	('CST Análise e Desenvolvimento de Sistemas','Noturno', 'IV', 'Curso Superior de Tecnologia'),
    --- 03
	('Licenciatura em História','Vespertino', 'I', 'Licenciatura'),
    --- 04
	('Licenciatura em Música','Vespertino', 'I', 'Licenciatura'),
    --- 05
	('Técnico Subsequente em Agrimensura','Noturno', 'III', 'Técnico Subsequente'),
    --- 06
	('Técnico Integrado em Cozinha EJA','Noturno', 'I', 'Técnico Integrado EJA'),
    --- 07
	('Bacharelado em Engenharia Civil','Noturno', 'I', 'Bacharelado'),
    --- 08
	('Bacharelado em Engenharia Ambiental e Sanitária', 'Matutino', 'II', 'Bacharelado'),
    --- 09
	('Técnico Integrado em Edificações','Matutino', 'III', 'Técnico Integrado'),
    --- 10
	('Especialização em Matemática','Vespertino', 'II', 'Pós Graduação');

    ---
--- POPULAR TABELA ALUNOS
---
INSERT INTO alunos("cpfAluno","nomeAluno","emailAluno","telefoneAluno","dataNascimento","prioridade","inicioAtendimento") VALUES
    --- 01
    ('98126203030','andrea','andra@gmail.com','62991855285','23/05/1982','b','21/10/2022'),
    --- 02
    ('30009570063','barbara','barbara@gmail.com','62991855269','12/04/1974','b','21/10/2022'),
    --- 03
    ('25966553068','daniel','daniel@gmail.com','62991855273','21/09/1985','m','15/03/2020'),
    --- 04
    ('97501079005','gilton','gilton@gmail.com','62991855206','11/08/1941','a','16/03/2022'),
    --- 05
    ('24038967050','guilherme','guilherme@gmail.com','62991855206','03/12/1985','m','21/10/2022'),
    --- 06
    ('04234253073','joao','joa@gmail.com','62991855292','09/04/1984','b','21/10/2021'),
    --- 07
    ('03396836006','lucca','lucca@gmail.com','62991855267','21/10/1982','b','21/10/2021'),
    --- 08
    ('08542975022','marcos','marcos@gmail.com','62991855283','14/08/1945','m','01/01/2020'),
    --- 09
    ('93501973080','paulo','paulo@gmail.com','62991855205','17/12/1996','m','01/06/2020'),
    --- 10
    ('58902352064','pedro','pedro@gmail.com','62991855258','10/01/1973','a','21/10/2022'),
    --- 11
    ('73481496001','john','john@hotmail.com','62991855285','03/07/1977','b','21/10/2022'),
    --- 12
    ('51546931082','mary','mary@hotmail.com','62991855269','30/10/2005','b','21/10/2022'),
    --- 13
    ('80732698057','anne','anne@gmail.com','62991855273','09/06/2001','m','15/03/2020'),
    --- 14
    ('73435925051','peter','peter@gmail.com','62991855206','16/02/1975','a','16/03/2022'),
    --- 15
    ('22433722071','william','will@hotmail.com','62991855206','18/05/2000','m','21/10/2022'),
    --- 16
    ('19628156098','lucy','lucy@gmail.com','62991855292','02/06/1973','b','21/10/2021'),
    --- 17
    ('12615572040','susan','susan@hotmail.com','62991855267','08/05/1995','b','21/10/2021'),
    --- 18
    ('82742010009','jane','jane@gmail.com','62991855283','19/04/2005','m','01/01/2020'),
    --- 19
    ('82887659049','george','george@gmail.com','62991855205','19/12/1996','m','01/06/2020'),
    --- 20
    ('22909552055','james','james@gmail.com','62991855258','05/09/2007','a','21/10/2022');

---
--- POPULAR TABELA ALUNOS-NECESSIDADES
---
INSERT INTO alunos_necessidades ("alunos_id","necessidades_id") VALUES 
    --- 01
    ('1', '1'),
    --- 02
    ('1', '2'),
    --- 03
    ('2', '3'),
    --- 04
    ('3', '3'),
    --- 05
    ('4', '4'),
    --- 06
    ('4', '5'),
    --- 07
    ('5', '1'),
    --- 08
    ('6', '6'),
    --- 09
    ('7', '6'),
    --- 10
    ('8', '7'),
    --- 11
    ('9', '8'),
    --- 12
    ('10', '9'),
    --- 13
    ('11', '1'),
    --- 14
    ('11', '4'),
    --- 15
    ('12', '3'),
    --- 16
    ('13', '1'),
    --- 17
    ('14', '9'),
    --- 18
    ('15', '5'),
    --- 19
    ('16', '3'),
    --- 20
    ('17', '2'),
    --- 21
    ('17', '3'),
    --- 22
    ('18', '6'),
    --- 23
    ('19', '6'),
    --- 24
    ('20', '1'),
    --- 25
    ('20', '4'),
    --- 26
    ('20', '5'),
    --- 27
    ('20', '6');

---
--- POPULAR TABELA ALUNOS-CURSOS
---
INSERT INTO alunos_cursos("alunos_id","cursos_id", "matricula") VALUES
    --- 01
    ('1', '3', '20201011'),
    --- 02
    ('2', '2', '20201012'),
    --- 03
    ('3', '3', '20201013'),
    --- 04
    ('4', '5', '20201014'),
    --- 05
    ('4', '7', '20201015'),
    --- 06
    ('5', '5', '20201016'),
    --- 07
    ('6', '1', '20201017'),
    --- 08
    ('6', '6', '20201018'),
    --- 09
    ('7', '6', '20201019'),
    --- 10
    ('8', '8', '20202010'),
    --- 11
    ('9', '2', '20202011'),
    --- 12
    ('10', '5', '20202012'),
    --- 13
    ('11', '4', '20202013'),
    --- 14
    ('12', '1', '20202014'),
    --- 15
    ('13', '1', '20202015'),
    --- 16
    ('14', '8', '20202016'),
    --- 17
    ('15', '2', '20202017'),
    --- 18
    ('16', '6', '20202018'),
    --- 19
    ('17', '3', '20202019'),
    --- 20
    ('18', '3', '20203010'),
    --- 21
    ('19', '7', '20203011'),
    --- 22
    ('20', '1', '20203012');

---
--- POPULAR TABELA CARGOS
---
INSERT INTO cargos("descricaoCargo") VALUES
    --- 01
    ('Coordenador'),
    --- 02
    ('Professor'),
    --- 03
    ('Supervisor'),
    --- 04
    ('Secretário'),
    --- 05
    ('Vice-Secretário'),
    --- 06
    ('Vice-Coordenador'),
    --- 07
    ('Intérprete de LIBRAS'),
    --- 08
    ('Médico'),
    --- 09
    ('Enfermeiro'),
    --- 10
    ('Técnico Administrativo');

---
--- POPULAR TABELA MEMBROS
---
INSERT INTO membros("siape","nomeMembro","emailMembro","telefoneMembro","formacaoMembro","horarioAtendimentoMembro") VALUES
    --- 01
    ('8952157','Mateus','mateus@gmail.com','639845448','psicologia','SEG A SEX MATUTINO'),
    --- 02
    ('8952158','Marcos','marcos@gmail.com','637845448','história','SEG A SEX VESPERTINO'),
    --- 03
    ('8952159','Lucas','lucas@gmail.com','637425448','filosofia','SEG A SEX NOTURNO'),
    --- 04
    ('8952160','João','joao@gmail.com','6123225448','artes','TER E QUI MATUTINO'),
    --- 05
    ('8952161','Paulo','paulo@gmail.com','61234545448','geografia','TER E QUI VESPERTINO'),
    --- 06
    ('8952162','Pedro','pedro@gmail.com','6123445448','artes','TER E QUI NOTURNO'),
    --- 07
    ('8952163','Tadeu','tadeu@gmail.com','6123125448','sociologia','SEG, TER E QUA MATUTNINO E VESPERTINO'),
    --- 08
    ('8952164','Judas','judas@hotmail.com','42223125448','física','QUI E SEX MATUTNINO E VESPERTINO'),
    --- 09
    ('8952165','Tiago','tiago@hotmail.com','63023125448','tecnologia','SEX E SAB MATUTINO'),
    --- 10
    ('8952166','André','andre@hotmail.com','63023125448','tecnologia','SAB MATUTINO'),
    --- 11
    ('8952167','Tomé','tome@hotmail.com','63023125448','tecnologia','TER E SEX VESPERTINO'),
    --- 12
    ('8952168','Filipe','filipe@hotmail.com','63923125448','artes','SEG E QUA NOTURNO');

---
--- POPULAR TABELA MEMBROS-CARGOS
---
INSERT INTO membros_cargos ("membros_id","cargos_id", "dataEntradaCargo") VALUES
    --- 01
    ('2', '3', '01/03/2020'),
    --- 02
    ('4', '3', '01/03/2020'),
    --- 03
    ('6', '3', '01/03/2020'),
    --- 04
    ('8', '3', '01/03/2020'),
    --- 05
    ('1', '1', '01/03/2020'),
    --- 06
    ('3', '4', '01/03/2020'),
    --- 07
    ('2', '5', '01/03/2020');

---
--- POPULAR TABELA MONITORES
---
INSERT INTO monitores("cpfMonitor", "nomeMonitor", "emailMonitor", "telefoneMonitor", "horarioAtendimentoMonitor", "formacaoMonitor", "supervisor") VALUES
    --- 01
	('12345678912', 'Joaquina', 'joaquina@yahoo.com.br', 62987635489, 'SEG, QUA, SEX 8:00 ÀS 12:00', 'Pedagogia', 2),
    --- 02
	('79846513258', 'Frederico', 'fred@gmail.com', 62987687936, 'SEG, TER, QUA 13:00 ÀS 17:00', 'Psicologia', 4),
    --- 03
	('98763158821', 'Isabel', 'isabel@gmail.com', 62789635489, 'TER, QUI 8:00 ÀS 12:00', 'História', 6),
    --- 04
	('24814013019', 'Afonso', 'afonso@hotmail.com', 62789635489, 'SEG, QUA, SEX 13:00 ÀS 17:00', 'História', 8),
    --- 05
	('70649430281', 'Raimundo', 'raimundo@gmail.com', 62988763489, 'SEG, QUA, QUI, SEX 18:00 ÀS 22:00', 'Letras', 2);

---
--- POPULAR TABELA AÇÕES
---
INSERT INTO acoes ("descricaoAcao","dataHoraCriacao","resultadoAcao","dataHoraResultado",aluno,monitor)VALUES 
    --- 01
    ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.','25/03/2021','Quis autem vel eum iure reprehenderit qui in ea voluptate velit.','04/07/2021','1','1'),
    --- 02
    ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.','25/03/2021','Quis autem vel eum iure reprehenderit qui in ea voluptate velit.','04/07/2021','2','1'),
    --- 03
    ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.','25/03/2021','Quis autem vel eum iure reprehenderit qui in ea voluptate velit.','04/07/2021','3','2'),
    --- 04
    ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.','25/03/2021','Quis autem vel eum iure reprehenderit qui in ea voluptate velit.','04/07/2021','4','2'),
    --- 05
    ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.','25/03/2021','Quis autem vel eum iure reprehenderit qui in ea voluptate velit.','04/07/2021','5','3'),
    --- 06
    ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.','25/03/2021','Quis autem vel eum iure reprehenderit qui in ea voluptate velit.','04/07/2021','6','3'),
    --- 07
    ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.','25/03/2021','Quis autem vel eum iure reprehenderit qui in ea voluptate velit.','04/07/2021','7','3'),
    --- 08
    ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.','25/03/2021','Quis autem vel eum iure reprehenderit qui in ea voluptate velit.','04/07/2021','8','3'),
    --- 09
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','9','4'),
    --- 10
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','10','5'),
    --- 11
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','11','4'),
    --- 12
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','12','5'),
    --- 13
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','13','4'),
    --- 14
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','14','5'),
    --- 15
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','15','4'),
    --- 16
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','16','5'),
    --- 17
    ('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.','25/10/2019','Duis aute irure dolor in reprehenderit.','05/11/2019','17','4');

