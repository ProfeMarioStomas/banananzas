import { Hono } from "hono";

const app = new Hono();

app.get("/", (c) => {
  return c.text("Hola desde banananzas!");
});

app.get("/estado", (c) => {
  return c.json({
    status: 500,
    message: "Error al conectar con BD",
    detail: "Host 10.1.1.2 no existe",
  });
});

export default app;
