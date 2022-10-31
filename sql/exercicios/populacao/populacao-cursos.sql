INSERT INTO cursos("descricaoCurso",turno)
VALUES('Historia','Matutino'),
	('Historia','Vespertino'),
	('Historia','Noturno'),
	('Matematica','Matutino'),
	('Matematica','Vespertino'),
	('Matematica','Noturno'),
	('Geografia','Matutino'),
	('Geografia','Vespertino'),
	('Geografia','Noturno'),
	('Informatica','Matutino');
	
SELECT * FROM cursos

SELECT "descricaoCurso",turno FROM cursos
WHERE turno = 'Matutino';


SELECT * FROM  cursos
ORDER BY turno

SELECT DISTINCT turno
FROM cursos
  