CREATE TABLE IF NOT EXISTS "Funcionario" (
	"matricula" bigint NOT NULL UNIQUE,
	"nome" varchar(255) NOT NULL,
	"cargo" varchar(255) NOT NULL,
	"telefone" bigint NOT NULL,
	"email" varchar(255) NOT NULL,
	PRIMARY KEY ("matricula")
);

CREATE TABLE IF NOT EXISTS "Tarefas" (
	"id" serial NOT NULL UNIQUE,
	"nome" varchar(255) NOT NULL,
	"horas" time without time zone NOT NULL,
	"FuncionarioResponsavel" bigint NOT NULL,
	"Funcionarios" bigint NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Cliente" (
	"CNPJ" varchar(255) NOT NULL UNIQUE,
	"nome" varchar(255) NOT NULL,
	"endereço" varchar(255) NOT NULL,
	"telefone" bigint NOT NULL UNIQUE,
	"email" varchar(255) NOT NULL UNIQUE,
	"responsavel" varchar(255) NOT NULL,
	PRIMARY KEY ("CNPJ")
);

CREATE TABLE IF NOT EXISTS "Projeto" (
	"id" serial NOT NULL UNIQUE,
	"descrição" bigint NOT NULL,
	"responsavel" bigint NOT NULL UNIQUE,
	"data_inicio" date NOT NULL,
	"data_fim" date NOT NULL,
	"terefas" bigint NOT NULL,
	"cliente" varchar(255) NOT NULL,
	PRIMARY KEY ("id")
);


ALTER TABLE "Tarefas" ADD CONSTRAINT "Tarefas_fk3" FOREIGN KEY ("FuncionarioResponsavel") REFERENCES "Funcionario"("matricula");

ALTER TABLE "Tarefas" ADD CONSTRAINT "Tarefas_fk4" FOREIGN KEY ("Funcionarios") REFERENCES "Funcionario"("matricula");

ALTER TABLE "Projeto" ADD CONSTRAINT "Projeto_fk5" FOREIGN KEY ("terefas") REFERENCES "Tarefas"("id");

ALTER TABLE "Projeto" ADD CONSTRAINT "Projeto_fk6" FOREIGN KEY ("cliente") REFERENCES "Cliente"("CNPJ");