CREATE TABLE "amounts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "metric" boolean, "measure" varchar(255), "quantity" varchar(255), "ingredient_id" integer);
CREATE TABLE "ingredients" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "image" text);
CREATE TABLE "ingredients_recipes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "ingredient_id" integer, "recipe_id" integer);
CREATE TABLE "recipes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "url" text, "type" varchar(255), "servings" varchar(255), "source" varchar(255), "author" varchar(255), "rating" integer, "prep_time" integer, "cooking_time" integer, "instructions" text);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20131019172458');

INSERT INTO schema_migrations (version) VALUES ('20131019213606');

INSERT INTO schema_migrations (version) VALUES ('20131020083416');

INSERT INTO schema_migrations (version) VALUES ('20131020084954');

INSERT INTO schema_migrations (version) VALUES ('20131020090255');

INSERT INTO schema_migrations (version) VALUES ('20131020090547');