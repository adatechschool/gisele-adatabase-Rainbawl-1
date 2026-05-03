-- insere les themes
INSERT INTO "themes" (id, name, description, created_at,updated_at) VALUES (1, 'Frontend','Developpement coté client', NOW(), NOW ()),
(2, 'Backend','Developpement coté serveur', NOW(), NOW ()),
(3, 'Base de donnee','Gestion et requete de donnees', NOW(), NOW ()),
(4, 'Devops','Developpement et infrastructure', NOW(), NOW ());

--Insere les competences
INSERT INTO "skills" (id, name) VALUES 
(1, 'JavaScript'),
  (2, 'React'),
  (3, 'SQL'),
  (4, 'PostgreSQL'),
  (5, 'Node.js');

-- insere les resources
INSERT INTO "resources" (id, title, url, description,type, is_ada, theme_id, created_at, updated_at) VALUES 
(1,'Introduction à React','https://react.dev', 'Guide officiel React', 'guide',FALSE, 1, NOW(), NOW()),
(2, 'SQL pour débutants', 'https://example.com/sql', 'Cours SQL complet', 'video', FALSE, 3, NOW(), NOW()),
(3, 'Exercices JavaScript','https://example.com/js', 'Pratique JS','exercice', FALSE, 1, NOW(), NOW()),
(4, 'Créer une API en node','https://example.com/node', 'Projet node','projet',   FALSE, 2, NOW(), NOW()),
(5, 'Ressource Ada React','https://ada.example.com','Contenu Ada sur React','guide', TRUE,  1, NOW(), NOW());

--insere les resources skill (depend du nb de liens entre eux)
INSERT INTO "resources_skills" (resource_id, skill_id) VALUES 
(1, 1),  -- Intro à React  -> JavaScript
  (1, 2),  -- Intro à React -> React
  (2, 3),  -- SQL pour debutant -> SQL
  (2, 4),  -- SQL pour debutant -> PostgreSQL
  (3, 1),  -- Exo JavaScript-> JavaScript
  (4, 1),  -- Créer une API en node -> JavaScript
  (4, 5),  -- Créer une API en node -> Node.js
  (5, 2);  -- Ressource Ada React -> React
