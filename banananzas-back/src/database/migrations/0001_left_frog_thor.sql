CREATE TABLE "gastos" (
	"id" serial PRIMARY KEY NOT NULL,
	"usuario_id" integer NOT NULL,
	"categoria_id" integer NOT NULL,
	"metodo_pago_id" integer NOT NULL,
	"item_gasto_id" integer NOT NULL
);
--> statement-breakpoint
CREATE TABLE "item_gasto" (
	"id" serial PRIMARY KEY NOT NULL,
	"usuario_id" integer NOT NULL,
	"nombre" varchar(200)
);
--> statement-breakpoint
ALTER TABLE "gastos" ADD CONSTRAINT "gastos_usuario_id_usuarios_id_fk" FOREIGN KEY ("usuario_id") REFERENCES "public"."usuarios"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "gastos" ADD CONSTRAINT "gastos_categoria_id_categorias_id_fk" FOREIGN KEY ("categoria_id") REFERENCES "public"."categorias"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "gastos" ADD CONSTRAINT "gastos_metodo_pago_id_metodos_de_pago_id_fk" FOREIGN KEY ("metodo_pago_id") REFERENCES "public"."metodos_de_pago"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "gastos" ADD CONSTRAINT "gastos_item_gasto_id_item_gasto_id_fk" FOREIGN KEY ("item_gasto_id") REFERENCES "public"."item_gasto"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_gasto" ADD CONSTRAINT "item_gasto_usuario_id_usuarios_id_fk" FOREIGN KEY ("usuario_id") REFERENCES "public"."usuarios"("id") ON DELETE no action ON UPDATE no action;