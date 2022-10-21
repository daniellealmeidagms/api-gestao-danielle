CREATE TABLE "alunos" (
  "id" serial PRIMARY KEY,
  "cpfAluno" char(11) UNIQUE NOT NULL,
  "nomeAluno" varchar(80) NOT NULL,
  "emailAluno" varchar(40),
  "telefoneAluno" bigint NOT NULL,
  "dataNascimento" date,
  "responsavel" varchar(80),
  "prioridade" char(1) DEFAULT 'B',
  "inicioAtendimento" date NOT NULL,
  "fimAtendimento" date
);

CREATE TABLE "necessidades" (
  "id" serial PRIMARY KEY,
  "cid" varchar(5) UNIQUE NOT NULL,
  "descricaoSimples" varchar(255) NOT NULL,
  "descricaoTecnica" varchar(255)
);

CREATE TABLE "cursos" (
  "id" serial PRIMARY KEY,
  "descricaoCurso" varchar(255) NOT NULL,
  "turno" varchar(15),
  "semestral" boolean DEFAULT true
);

CREATE TABLE "acoes" (
  "id" serial PRIMARY KEY,
  "descricaoAcao" varchar(255) NOT NULL,
  "dataHoraCriacao" timestamptz DEFAULT 'now()',
  "motivacaoAcao" varchar(255),
  "resultadoAcao" varchar(255),
  "dataHoraResultado" timestamptz,
  "aluno" integer NOT NULL,
  "monitor" integer NOT NULL
);

CREATE TABLE "monitores" (
  "id" serial PRIMARY KEY,
  "cpfMonitor" char(11) UNIQUE NOT NULL,
  "nomeMonitor" varchar(80) NOT NULL,
  "emailMonitor" varchar(40) NOT NULL,
  "telefoneMonitor" bigint NOT NULL,
  "horarioAtendimentoMonitor" varchar(100) NOT NULL,
  "formacaoMonitor" varchar(100),
  "supervisor" integer NOT NULL
);

CREATE TABLE "membros" (
  "id" serial PRIMARY KEY,
  "siape" varchar(8) UNIQUE NOT NULL,
  "nomeMembro" varchar(100) NOT NULL,
  "emailMembro" varchar(50) NOT NULL,
  "telefoneMembro" bigint NOT NULL,
  "formacaoMembro" varchar(100),
  "horarioAtendimentoMembro" varchar(100) NOT NULL
);

CREATE TABLE "cargos" (
  "id" serial PRIMARY KEY,
  "descricaoCargo" varchar(50) NOT NULL
);

CREATE TABLE "alunos_necessidades" (
  "alunos_id" serial,
  "necessidades_id" serial,
  PRIMARY KEY ("alunos_id", "necessidades_id")
);

ALTER TABLE "alunos_necessidades" ADD FOREIGN KEY ("alunos_id") REFERENCES "alunos" ("id");

ALTER TABLE "alunos_necessidades" ADD FOREIGN KEY ("necessidades_id") REFERENCES "necessidades" ("id");


CREATE TABLE "alunos_cursos" (
  "alunos_id" serial,
  "cursos_id" serial,
  PRIMARY KEY ("alunos_id", "cursos_id")
);

ALTER TABLE "alunos_cursos" ADD FOREIGN KEY ("alunos_id") REFERENCES "alunos" ("id");

ALTER TABLE "alunos_cursos" ADD FOREIGN KEY ("cursos_id") REFERENCES "cursos" ("id");


ALTER TABLE "acoes" ADD FOREIGN KEY ("aluno") REFERENCES "alunos" ("id");

ALTER TABLE "acoes" ADD FOREIGN KEY ("monitor") REFERENCES "monitores" ("id");

ALTER TABLE "monitores" ADD FOREIGN KEY ("supervisor") REFERENCES "membros" ("id");

CREATE TABLE "membros_cargos" (
  "membros_id" serial,
  "cargos_id" serial,
  PRIMARY KEY ("membros_id", "cargos_id")
);

ALTER TABLE "membros_cargos" ADD FOREIGN KEY ("membros_id") REFERENCES "membros" ("id");

ALTER TABLE "membros_cargos" ADD FOREIGN KEY ("cargos_id") REFERENCES "cargos" ("id");

