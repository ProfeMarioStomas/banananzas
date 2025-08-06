import { pgTable, serial, varchar } from "drizzle-orm/pg-core";

export const user = pgTable("usuarios", {
  id: serial("id").primaryKey(),
  name: varchar("nombre", { length: 100 }),
  email: varchar("email", { length: 50 }).unique(),
  password: varchar("password", { length: 200 }),
});

export type TUserInsert = typeof user.$inferInsert;
export type TUserSelect = typeof user.$inferSelect;
