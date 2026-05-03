--creation de l'enum
CREATE TYPE resource_type AS ENUM('guide', 'video', 'exercice', 'projet');

--creation de table

CREATE TABLE "themes" (
  "id" INTEGER PRIMARY KEY,
  "name" TEXT,
  "description" TEXT,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

CREATE TABLE "resources" (
  "id" INTEGER PRIMARY KEY,
  "type" resource_type,
  "title" TEXT,
  "description" TEXT,
  "url" TEXT,
  "is_ada" boolean,
  "theme_id" INTEGER,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

CREATE TABLE "skills" (
  "id" INTEGER PRIMARY KEY,
  "name" TEXT
);

CREATE TABLE "resources_skills" (
  "resource_id" INTEGER,
  "skill_id" INTEGER
);


ALTER TABLE "resources" ADD FOREIGN KEY ("theme_id") REFERENCES "themes" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "resources_skills" ADD FOREIGN KEY ("resource_id") REFERENCES "resources" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "resources_skills" ADD FOREIGN KEY ("skill_id") REFERENCES "skills" ("id") DEFERRABLE INITIALLY IMMEDIATE;