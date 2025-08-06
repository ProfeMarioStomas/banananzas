import { integer, pgTable, serial, varchar } from "drizzle-orm/pg-core";
import { user } from "./users.schema";

export const category = pgTable("categorias", {
  id: serial("id").primaryKey(),
  user_id: integer("usuario_id")
    .notNull()
    .references(() => user.id),
  name: varchar("nombre", { length: 30 }),
  icon: varchar("icono", { length: 1 }),
  color: varchar("color", { length: 7 }),
});

export type TCategoryInsert = typeof category.$inferInsert;
export type TCategorySelect = typeof category.$inferSelect;
