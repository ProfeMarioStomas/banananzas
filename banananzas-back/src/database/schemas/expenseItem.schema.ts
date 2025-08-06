import { integer, pgTable, serial, varchar } from "drizzle-orm/pg-core";
import { user } from "./users.schema";

export const expenseItem = pgTable("item_gasto", {
  id: serial("id").primaryKey(),
  user_id: integer("usuario_id")
    .notNull()
    .references(() => user.id),
  nombre: varchar("nombre", { length: 200 }),
});
