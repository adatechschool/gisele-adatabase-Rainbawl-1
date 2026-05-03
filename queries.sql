--Récupérer la liste des thèmes : 
--SELECT *
--FROM themes;

--Récupérer toutes les ressources triées par date de mise à jour
--SELECT  title, updated_at
--FROM resources
--ORDER BY updated_at DESC;

--Récupérer uniquement le nom et l'url des ressources de type exercice
--SELECT title,url
--FROM resources
--WHERE type = 'exercice';

--Récupérer le titre et la description des ressources Ada uniquement
--SELECT title, description
--FROM resources
--WHERE is_ada = 'True'; --boolean


--Récupérer les ressources qui ont la compétence JavaScript associée
--resource -> resource_skill puis resources_skill -> skills
--SELECT * FROM resources;
--SELECT * FROM skills;
--SELECT * FROM resources_skills;
--SELECT *
--FROM resources
--JOIN resources_skills ON resources.id = resources_skills.resource_id
--JOIN skills ON skills.id = resources_skills.skill_id
--WHERE skills.name = 'JavaScript';


--Récupérer les ressources dont le titre contient le mot "react" (sans tenir compte des majuscules)
