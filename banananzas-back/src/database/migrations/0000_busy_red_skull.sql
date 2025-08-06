CREATE TABLE "categorias" (
	"id" serial PRIMARY KEY NOT NULL,
	"usuario_id" integer NOT NULL,
	"nombre" varchar(30),
	"icono" varchar(1),
	"color" varchar(7)
);
--> statement-breakpoint
CREATE TABLE "metodos_de_pago" (
	"id" serial PRIMARY KEY NOT NULL,
	"usuario_id" integer NOT NULL,
	"metodo" varchar(15) NOT NULL
);
--> statement-breakpoint
CREATE TABLE "usuarios" (
	"id" serial PRIMARY KEY NOT NULL,
	"nombre" varchar(100),
	"email" varchar(50),
	"password" varchar(200),
	CONSTRAINT "usuarios_email_unique" UNIQUE("email")
);
--> statement-breakpoint
ALTER TABLE "categorias" ADD CONSTRAINT "categorias_usuario_id_usuarios_id_fk" FOREIGN KEY ("usuario_id") REFERENCES "public"."usuarios"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "metodos_de_pago" ADD CONSTRAINT "metodos_de_pago_usuario_id_usuarios_id_fk" FOREIGN KEY ("usuario_id") REFERENCES "public"."usuarios"("id") ON DELETE no action ON UPDATE no action;