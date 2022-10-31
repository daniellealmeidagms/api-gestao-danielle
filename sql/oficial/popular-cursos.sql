ALTER TABLE cursos 
ADD departamento varchar(10),
ADD modalidade varchar(30);

INSERT INTO cursos("descricaoCurso", "turno", "departamento", "modalidade")
VALUES
	('Técnico Integrado em Mineração','Matutino', 'III', 'Técnico Integrado'),
	('CST Análise e Desenvolvimento de Sistemas','Noturno', 'IV', 'Curso Superior de Tecnologia'),
	('Licenciatura em História','Vespertino', 'I', 'Licenciatura'),
	('Licenciatura em Música','Vespertino', 'I', 'Licenciatura'),
	('Técnico Subsequente em Agrimensura','Noturno', 'III', 'Técnico Subsequente'),
	('Técnico Integrado em Cozinha EJA','Noturno', 'I', 'Técnico Integrado EJA'),
	('Bacharelado em Engenharia Civil','Noturno', 'I', 'Bacharelado'),
	('Bacharelado em Engenharia Ambiental e Sanitária', 'Matutino', 'II', 'Bacharelado'),
	('Técnico Integrado em Edificações','Matutino', 'III', 'Técnico Integrado'),
	('Especialização em Matemática','Vespertino', 'II', 'Pós Graduação');