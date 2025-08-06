import { integer, pgTable, serial, varchar } from "drizzle-orm/pg-core";
import { user } from "./users.schema";

export const paymentMethod = pgTable("metodos_de_pago", {
  id: serial("id").primaryKey(),
  user_id: integer("usuario_id")
    .notNull()
    .references(() => user.id),
  method: varchar("metodo", { length: 15 }).notNull(),
});

export type TPaymentMethodInsert = typeof paymentMethod.$inferInsert;
export type TPaymentMethodSelect = typeof paymentMethod.$inferSelect;
