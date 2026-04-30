--Creation de table
CREATE TABLE "resources" (
  "id" integer PRIMARY KEY,
  "type" VARCHAR(50),
  "title" text,
  "description" text,
  "url" text,
  "is_ada" boolean,
  "theme_id" integer,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

CREATE TABLE "resources_skills" (
  "resource_id" integer,
  "skill_id" integer
);

CREATE TYPE resource_type AS ENUM (
  'guide', 'video', 'exercise', 'projet'
);

CREATE TABLE "skills" (
  "id" integer PRIMARY KEY,
  "name" text
);

CREATE TABLE "themes" (
  "id" integer PRIMARY KEY,
  "name" text,
  "description" text,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

ALTER TABLE "resources" ADD FOREIGN KEY ("theme_id") REFERENCES "themes" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "resources_skills" ADD FOREIGN KEY ("resource_id") REFERENCES "resources" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "resources_skills" ADD FOREIGN KEY ("skill_id") REFERENCES "skills" ("id") DEFERRABLE INITIALLY IMMEDIATE;