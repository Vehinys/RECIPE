1 -

SELECT * FROM recipe
ORDER BY preparation_time DESC;

2 - AVOIR AVEC STEPHANE



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

