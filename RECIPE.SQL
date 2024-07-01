1 -

SELECT * FROM r.recipe
ORDER BY preparation_time DESC;

2 -

SELECT r.recipe_name, COUNT(t.id_ingredient) AS nbIngredients
FROM recipe r
INNER join recipe_ingredients t
ON r.id_recipe = t.id_recipe
GROUP BY r.recipe_name
ORDER BY nbIngredients desc;

3 -

SELECT * FROM recipe
WHERE preparation_time >= 30;

4 - 

SELECT * FROM recipe
WHERE recipe_name LIKE '%salade%';

5 - 

INSERT INTO recipe (recipe_name,preparation_time,introductions,id_category)
VALUE ('Pâtes à la carbonara', '20', ' Cuire les pâtes dans un grand volume d eau bouillante salée. 
Emincer les oignons et les faire revenir à la poêle. Dès qu ils ont bien dorés, y ajouter les lardons.
Préparer dans un saladier la crème fraîche, les oeufs, le sel, le poivre et mélanger.
Retirer les lardons du feu dès qu ils sont dorés et les ajouter à la crème.
Une fois les pâtes cuite al dente, les égoutter et y incorporer la crème. Remettre sur le feu si le plat a refroidi.','3');

6 - 

UPDATE recipe
SET recipe_name = 'Le paprika c est la vie'
WHERE id_recipe = 3;

7 -

DELETE FROM recipe 
WHERE id_recipe = 2

8 - 

SELECT SUM(ri.quantity * i.price) AS "Prix de la recette"
FROM recipe_ingredients ri 
INNER JOIN ingredient i 
ON ri.id_ingredient = i.id_ingredient
WHERE ri.id_recipe = 5
GROUP BY ri.id_recipe

9 -

SELECT i.ingredient_name, ri.quantity, i.price
FROM recipe_ingredients ri
INNER JOIN ingredient i
ON ri.id_ingredient = i.id_ingredient
WHERE ri.id_recipe = 5

10 -

INSERT INTO ingredient (ingredient_name,unity,price)
VALUE ('poivre blanc',' cuillère à café',' 2.5');

11 - 

UPDATE ingredient
SET price = '20'
WHERE id_ingredient = 12;

12 - REFAIRE

SELECT COUNT(c.id_category) AS 'Type de plat', c.category_name
FROM category c
INNER JOIN recipe r
ON c.id_category = r.id_category
GROUP BY c.category_name

13 - 

SELECT * FROM recipe
WHERE recipe_name LIKE '%poulet%';

14 -

UPDATE recipe
SET preparation_time = preparation_time -5


15 -

SELECT r.recipe_name, i.unity, i.price
FROM ingredient i
INNER JOIN recipe r
WHERE i.price = 1             
ORDER BY i.unity

16 - 

SELECT r.recipe_name
FROM recipe r
INNER	JOIN recipe_ingredients ri
ON r.id_recipe = ri.id_recipe
INNER JOIN ingredient i
ON i.id_ingredient = ri.id_ingredient
WHERE i.price <= 2
GROUP BY r.id_recipe

17 -

SELECT r.id_recipe, r.recipe_name
FROM recipe r
LEFT JOIN recipe_ingredients ir
ON r.id_recipe = ir.id_recipe
WHERE ir.id_recipe IS NULL;

18 -

SELECT COUNT(ri.id_ingredient) AS 'nb d ingredient' , i.ingredient_name
FROM recipe_ingredients ri
INNER JOIN	ingredient i
ON	ri.id_ingredient = i.id_ingredient
GROUP BY ri.id_ingredient
HAVING COUNT(ri.id_ingredient) >= 3

19 - 

INSERT INTO recipe_ingredients (quantity,id_ingredient,id_recipe)
VALUE ('1','77','11');



20 - VERSION AVEC LIMIT SI PAS D EXCEQUO

SELECT r.recipe_name, SUM(ri.quantity * i.price) AS prix_total
FROM recipe_ingredients ri 
INNER JOIN ingredient i 
ON ri.id_ingredient = i.id_ingredient
INNER JOIN recipe r
ON	r.id_recipe = ri.id_recipe
GROUP BY r.recipe_name
ORDER BY prix_total DESC
LIMIT 1;

20 - VERSION SANS LIMIT

WITH prixCouteux AS (SELECT r.recipe_name, SUM(ri.quantity * i.price) AS total
FROM recipe_ingredients ri 
INNER JOIN ingredient i ON ri.id_ingredient = i.id_ingredient
INNER JOIN recipe r ON r.id_recipe = ri.id_recipe
GROUP BY r.recipe_name)
SELECT recipe_name, total
FROM prixCouteux
WHERE total = (SELECT MAX(total) FROM prixCouteux);
