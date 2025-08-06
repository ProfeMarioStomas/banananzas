import { integer, pgTable, serial } from "drizzle-orm/pg-core";
import { user } from "./users.schema";
import { category } from "./category.schema";
import { paymentMethod } from "./paymentMethod.schema";
import { expenseItem } from "./expenseItem.schema";

export const expense = pgTable("gastos", {
  id: serial("id").primaryKey(),
  user_id: integer("usuario_id")
    .notNull()
    .references(() => user.id),
  category_id: integer("categoria_id")
    .notNull()
    .references(() => category.id),
  paymentMethod_id: integer("metodo_pago_id")
    .notNull()
    .references(() => paymentMethod.id),
  expense_item_id: integer("item_gasto_id")
    .notNull()
    .references(() => expenseItem.id),
});
