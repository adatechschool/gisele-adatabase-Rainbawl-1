-- insere les données
INSERT INTO "themes" (id, name, description, created_at,updated_at) VALUES (1, 'SQL','Base de donnees', NOW(), NOW ());
INSERT INTO "skills" (id, name) VALUES (1, 'debutant'), (2,'confirmé');
INSERT INTO "resources" (id, type, title, description, url, is_ada, theme_id, created_at, updated_at) VALUES (1, 'Video','tutopostgresSQL', 'Apprendre SQL','https://sql.sh/', TRUE, 1, NOW(), NOW());
INSERT INTO "resources_skills" (resource_id, skill_id) VALUES (1,1), (2,2);
