CREATE TABLE "necessidades" (
  "id" serial PRIMARY KEY,
  "cid" varchar(5) UNIQUE NOT NULL,
  "descricaoSimples" varchar(255) NOT NULL,
  "descricaoTecnica" varchar(255),
  "ativo" boolean DEFAULT true
);

CREATE TABLE "cursos" (
  "id" serial PRIMARY KEY,
  "descricaoCurso" varchar(255) NOT NULL,
  "turno" varchar(15),
  "modalidade" varchar(30),
  "departamento" varchar(10),
  "semestral" boolean DEFAULT true,
  "ativo" boolean DEFAULT true
);

CREATE TABLE "responsaveis" (
  "id" serial PRIMARY KEY,
  "nomeResponsavel" varchar(80) NOT NULL,
  "emailResponsavel" varchar(40),
  "telefoneResponsavel" bigint NOT NULL
);

CREATE TABLE "horarios" (
  "id" serial PRIMARY KEY,
  "horaInicio" char(5) NOT NULL,
  "horaFim" char(5) NOT NULL,
  "diaSemana" varchar(10) NOT NULL
);

CREATE TABLE "cargos" (
  "id" serial PRIMARY KEY,
  "descricaoCargo" varchar(50) NOT NULL,
  "ativo" boolean DEFAULT true
);

CREATE TABLE "membros" (
  "id" serial PRIMARY KEY,
  "fkCargo" bigint NOT NULL,
  "cpfMembro" char(11) UNIQUE NOT NULL,
  "nomeMembro" varchar(100) NOT NULL,
  "emailMembro" varchar(50) NOT NULL,
  "telefoneMembro" bigint NOT NULL,
  "formacao" varchar(50),
  "permissao" char(1) DEFAULT 'M',
  "ativo" boolean DEFAULT true
);

CREATE TABLE "alunos" (
  "id" serial PRIMARY KEY,
  "fkMembro" bigint NOT NULL,
  "cpfAluno" char(11) UNIQUE NOT NULL,
  "nomeAluno" varchar(80) NOT NULL,
  "nomeSocialAluno" varchar(80),
  "emailAluno" varchar(40),
  "telefoneAluno" bigint NOT NULL,
  "dataNascimento" date,
  "prioridade" char(1) DEFAULT 'B',
  "inicioAtendimento" date NOT NULL,
  "fimAtendimento" date,
  "ativo" boolean DEFAULT 'true'
);

CREATE TABLE "acoes" (
  "id" serial PRIMARY KEY,
  "fkAluno" bigint NOT NULL,
  "descricaoAcao" varchar(255) NOT NULL,
  "statusAcao" varchar(10) DEFAULT 'Em Andamento',
  "dataInicio" date DEFAULT 'now()',
  "dataFim" date,
  "ativo" boolean DEFAULT true
);

ALTER TABLE "alunos" ADD FOREIGN KEY ("fkMembro") REFERENCES "membros" ("id");

ALTER TABLE "acoes" ADD FOREIGN KEY ("fkAluno") REFERENCES "alunos" ("id");

CREATE TABLE "alunos_necessidades" (
  "alunos_id" serial,
  "necessidades_id" serial,
  PRIMARY KEY ("alunos_id", "necessidades_id")
);

ALTER TABLE "alunos_necessidades" ADD FOREIGN KEY ("alunos_id") REFERENCES "alunos" ("id");

ALTER TABLE "alunos_necessidades" ADD FOREIGN KEY ("necessidades_id") REFERENCES "necessidades" ("id");


CREATE TABLE "membros_horarios" (
  "membros_id" serial,
  "horarios_id" serial,
  PRIMARY KEY ("membros_id", "horarios_id")
);

ALTER TABLE "membros_horarios" ADD FOREIGN KEY ("membros_id") REFERENCES "membros" ("id");

ALTER TABLE "membros_horarios" ADD FOREIGN KEY ("horarios_id") REFERENCES "horarios" ("id");


CREATE TABLE "alunos_cursos" (
  "alunos_id" serial,
  "cursos_id" serial,
  "matricula" bigint NOT NULL,
  PRIMARY KEY ("alunos_id", "cursos_id")
);

ALTER TABLE "alunos_cursos" ADD FOREIGN KEY ("alunos_id") REFERENCES "alunos" ("id");

ALTER TABLE "alunos_cursos" ADD FOREIGN KEY ("cursos_id") REFERENCES "cursos" ("id");


CREATE TABLE "alunos_responsaveis" (
  "alunos_id" serial,
  "responsaveis_id" serial,
  "parentesco" varchar(20),
  PRIMARY KEY ("alunos_id", "responsaveis_id")
);

ALTER TABLE "alunos_responsaveis" ADD FOREIGN KEY ("alunos_id") REFERENCES "alunos" ("id");

ALTER TABLE "alunos_responsaveis" ADD FOREIGN KEY ("responsaveis_id") REFERENCES "responsaveis" ("id");


CREATE TABLE "membros_cargos" (
  "membros_id" serial,
  "cargos_id" serial,
  "dataEntradaCargo" date NOT NULL,
  "dataSaidaCargo" date,
  PRIMARY KEY ("membros_id", "cargos_id")
);

ALTER TABLE "membros_cargos" ADD FOREIGN KEY ("membros_id") REFERENCES "membros" ("id");

ALTER TABLE "membros_cargos" ADD FOREIGN KEY ("cargos_id") REFERENCES "cargos" ("id");

