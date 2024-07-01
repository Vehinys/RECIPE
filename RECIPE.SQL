1 - Afficher toutes les recettes disponibles (nom de la recette, catégorie et temps de préparation) triées de façon décroissante sur la durée de réalisation

SELECT r.recipe_name,r.preparation_time,c.category_name
FROM recipe r
INNER JOIN category c ON r.id_category = c.id_category
ORDER BY preparation_time DESC;

2 - En modifiant la requête précédente, faites apparaître le nombre d’ingrédients nécessaire par recette.

SELECT r.recipe_name,r.preparation_time,c.category_name, COUNT(ri.id_ingredient) AS nbIngredients
FROM recipe r
INNER JOIN category c ON r.id_category = c.id_category
INNER JOIN recipe_ingredients ri ON r.id_recipe = ri.id_recipe
GROUP BY r.id_recipe
ORDER BY preparation_time DESC

3 - Afficher les recettes qui nécessitent au moins 30 min de préparation

SELECT r.recipe_name,r.preparation_time
FROM recipe r
WHERE r.preparation_time >= 30;

4 - Afficher les recettes dont le nom contient le mot « Salade » 

SELECT r.recipe_name
FROM recipe r
WHERE r.recipe_name LIKE '%salade%';

5 - Insérer une nouvelle recette : « Pâtes à la carbonara » dont la durée de réalisation est de 20 min avec 
les instructions de votre choix. Pensez à alimenter votre base de données en conséquence afin de pouvoir lister les détails de cette recettes

INSERT INTO recipe (recipe_name,preparation_time,introductions,id_category)
VALUE ('Pâtes à la carbonara', '20', ' Cuire les pâtes dans un grand volume d eau bouillante salée. 
Emincer les oignons et les faire revenir à la poêle. Dès qu ils ont bien dorés, y ajouter les lardons.
Préparer dans un saladier la crème fraîche, les oeufs, le sel, le poivre et mélanger.
Retirer les lardons du feu dès qu ils sont dorés et les ajouter à la crème.
Une fois les pâtes cuite al dente, les égoutter et y incorporer la crème. Remettre sur le feu si le plat a refroidi.','3');

6 - Modifier le nom de la recette ayant comme identifiant id_recette = 3

UPDATE recipe
SET recipe_name = 'Le paprika c est la vie'
WHERE id_recipe = 3;

7 - Supprimer la recette n°2 de la base de données

DELETE FROM recipe 
WHERE id_recipe = 2

8 - Afficher le prix total de la recette n°5

SELECT r.recipe_name, ROUND(SUM(i.price * ri.quantity),2) AS coutTotal
FROM recipe r
INNER JOIN recipe_ingredients ri ON r.id_recipe = ri.id_recipe	
INNER JOIN ingredient i ON	i.id_ingredient = ri.id_ingredient
WHERE r.id_recipe = 5

9 - Afficher le détail de la recette n°5

SELECT i.ingredient_name, i.price , ri.quantity
FROM recipe r
INNER JOIN recipe_ingredients ri ON ri.id_recipe = r.id_recipe
INNER JOIN ingredient i ON ri.id_ingredient = i.id_ingredient
WHERE ri.id_recipe = 5

10 - Ajouter un ingrédient en base de données : Poivre, unité : cuillère à café, prix : 2.5 €

INSERT INTO ingredient (ingredient_name,unity,price)
VALUE ('poivre blanc',' cuillère à café',' 2.5');

11 - Modifier le prix de l’ingrédient n°12 

UPDATE ingredient i
SET i.price = 20
WHERE i.id_ingredient = 12;

12 - Afficher le nombre de recettes par catégories : X entrées, Y plats, Z desserts

SELECT c.category_name, COUNT(c.id_category) AS 'NbRecettes'
FROM category c
INNER JOIN recipe r ON c.id_category = r.id_category
GROUP BY c.id_category

13 -  Afficher les recettes qui contiennent l’ingrédient « Poulet »

SELECT r.recipe_name
FROM recipe r
INNER	JOIN recipe_ingredients ri ON ri.id_recipe = r.id_recipe
WHERE ri.id_ingredient = 78

14 -  Mettez à jour toutes les recettes en diminuant leur temps de préparation de 5 minutes 

UPDATE recipe r
SET preparation_time = preparation_time -5

15 - Afficher les recettes qui ne nécessitent pas d’ingrédients coûtant plus de 2€ par unité de mesure

SELECT r.recipe_name
FROM recipe r
WHERE r.id_recipe NOT IN (
SELECT ri.id_recipe
FROM recipe_ingredients ri
INNER JOIN ingredient i ON ri.id_ingredient = i.id_ingredient
WHERE ri.id_recipe = r.id_recipe
AND i.price > 2
);

16 - Afficher la / les recette(s) les plus rapides à préparer

SELECT r.recipe_name, r.preparation_time
FROM recipe r
WHERE r.preparation_time = ( SELECT MIN(r.preparation_time) 
FROM recipe r );    

17 - Trouver les recettes qui ne nécessitent aucun ingrédient 

SELECT r.recipe_name
FROM recipe r
WHERE id_recipe NOT IN(
SELECT id_recipe
FROM recipe_ingredients ri
WHERE	 ri.id_recipe = r.id_recipe);

18 - Trouver les ingrédients qui sont utilisés dans au moins 3 recettes

SELECT i.ingredient_name, COUNT(ri.id_ingredient) AS 'nbIngredients'
FROM recipe_ingredients ri
INNER JOIN	ingredient i ON ri.id_ingredient = i.id_ingredient
GROUP BY ri.id_ingredient
HAVING nbIngredients >= 3

19 -  Ajouter un nouvel ingrédient à une recette spécifique

INSERT INTO recipe_ingredients (quantity,id_ingredient,id_recipe)
VALUE ('1','77','11');

20 - Trouver la recette la plus coûteuse de la base de données

WITH prixCouteux AS (SELECT r.recipe_name, SUM(ri.quantity * i.price) AS total
FROM recipe_ingredients ri 
INNER JOIN ingredient i ON ri.id_ingredient = i.id_ingredient
INNER JOIN recipe r ON r.id_recipe = ri.id_recipe
GROUP BY r.recipe_name)
SELECT recipe_name, total
FROM prixCouteux
WHERE total = (SELECT MAX(total) FROM prixCouteux);

-------------

SELECT r.recipe_name, ROUND(SUM(ri.quantity * i.price),2) AS coutTotal
FROM recipe r
INNER JOIN recipe_ingredients ri ON r.id_recipe = ri.id_recipe
INNER JOIN ingredient i ON i.id_ingredient = ri.id_ingredient
GROUP	BY r.id_recipe
HAVING coutTotal >= ALL(
SELECT ROUND(SUM(ri.quantity * i.price),2) 
FROM recipe r 
INNER JOIN recipe_ingredients ri ON r.id_recipe = ri.id_recipe
INNER JOIN ingredient i ON i.id_ingredient = ri.id_ingredient
GROUP BY r.id_recipe )
