


-- Build tables -- 



CREATE TABLE `food` (
`id` int NOT NULL AUTO_INCREMENT,
`name` VARCHAR(25) NOT NULL,
`food_category` VARCHAR(100) NOT NULL,
`category_type` VARCHAR(100) NOT NULL,
PRIMARY KEY(`id`)
) ENGINE=InnoDB;

CREATE TABLE `region` (
`id` int NOT NULL AUTO_INCREMENT,
`country_name` VARCHAR(40) NOT NULL,
PRIMARY KEY(`id`)
) ENGINE=InnoDB;

CREATE TABLE `grape_variety` (
`id` int NOT NULL AUTO_INCREMENT,
`grape_name` VARCHAR(40) NOT NULL,
PRIMARY KEY(`id`)
) ENGINE=InnoDB;

CREATE TABLE `temperature` (
`id` int NOT NULL AUTO_INCREMENT,
`temp` VARCHAR(10) NOT NULL,
PRIMARY KEY(`id`)
) ENGINE=InnoDB;


CREATE TABLE `wine` (         
`id` int NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255) NOT NULL,
`wine_type` VARCHAR(100) NOT NULL,
`region_id` int,
`variety_id` int, 
`temp_id` int,
FOREIGN KEY (`region_id`) REFERENCES region (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`variety_id`) REFERENCES grape_variety  (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`temp_id`) REFERENCES temperature (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- relationship table --
CREATE TABLE `pair` (
`food_id` int NOT NULL, 
`wine_id` int NOT NULL, 
PRIMARY KEY (`food_id`, `wine_id`),
FOREIGN KEY (`food_id`) REFERENCES food (`id`) ON DELETE RESTRICT ON UPDATE CASCADE ,
FOREIGN KEY (`wine_id`) REFERENCES wine (`id`) ON DELETE RESTRICT ON UPDATE CASCADE 
)  ENGINE=InnoDB;


-- insert temperatures into temp table -- 


INSERT INTO temperature ( temp )
VALUES ('41-48');

INSERT INTO temperature ( temp )
VALUES ('49-55');

INSERT INTO temperature ( temp )
VALUES ('50-60');

INSERT INTO temperature ( temp )
VALUES ('56-61');

INSERT INTO temperature ( temp )
VALUES ('62-68'); 

INSERT INTO temperature ( temp )
VALUES ('60-70'); 

-- insert food data into food table --


INSERT INTO food (name, food_category, category_type) 
VALUES ('Gouda', 'Cheese', 'Smoked'), ('Brie', 'Cheese', 'Soft'), ('Beef', 'Meat', 'Red Meat'), ('Tenderloin', 'Meat', 'Pork'), ('Chili', 'Herbs and Spices', 'Red Pepper'), ('Cinnamon', 'Herbs and Spices', 'Baking Spice'), ('Kale', 'Vegetable', 'Green Vegetable'), ('Carrot', 'Vegetable', 'Root Vegetable'),  ('Brown Rice', 'Starch', 'Whole Wheat Grain'), ('Sweet Potato', 'Starch', 'Sweet Starchy Vegetable'), ('Creme Brulee', 'Dessert', 'Sweet'),  ('Strawberry', 'Dessert', 'Fruit and Berry'), ('Habanero', 'Herb & Spices','Hot & Spicy'),('Turnip','Vegetable','Root Vegetable'),('Eggplant','Vegetable','Night Shade'),('Mushroom','Vegetable','Funghi'),('Chickpea','Vegetable','Beans'),('Anise','Herb & Spices', 'Exotic Spices'),('Bleu','Cheese','Pungent'),('Cheddar','Cheese','Hard Cheese'),('Shallot','Vegetable','Alliums'), ('Salami','Meat','Cured Meat'),('Duck','Meat','Poultry'),('Oyster','Meat','Mollusk'),('Tuna','Meat','Fish'),('Crab','Meat','Lobster'),('Peanut','Vegetable','Nuts & Seeds'),('Thyme','Herb & Spices','Herb'),('Quinoa','Starch','Whole Wheat Grains'),('Chocolate','Sweet','Chocolate & Coffee'), ('Lamb','Meat','Red Meat'),('Venison','Meat','Red Meat'),('Prosciutto','Meat','Cured Meat'),('Bresaola','Meat','Cured Meat'),('Bacon','Meat','Cured Meat'),('Roast','Meat','Pork'),('Pork Chop','Meat','Pork'),('Chicken','Meat','Poultry'),('Turkey','Meat','Poultry'),('Mussel','Meat','Mollusk'),('Clam','Meat','Mollusk'),('Cod','Meat','Fish'),('Trout','Meat','Fish'),('Bass','Meat','Fish'),('Prawn','Meat','Lobster'),('Langoustine','Meat','Lobster'),('Mascarpone','Cheese','Soft'),('Crémé Fraiche','Cheese','Soft'),('Gorgonzola','Cheese','Pungent'),('Stilton','Cheese','Pungent'),('Roquuefort','Cheese', 'Pungent'),('Pecorino','Cheese','Hard Cheese'),('Manchego','Cheese','Hard Cheese'),('Asiago','Cheese','Hard Cheese'),('Parmesan','Cheese','Hard Cheese'),('Onions','Vegetable','Alliums'),('Garlic','Vegetable','Alliums'),('Scallion','Vegetable','Alliums'),('Green Bean','Vegetable','Green Vegetable'),('Lettuce','Vegetable','Green Vegetable'),('Butternut','Vegetable','Root Vegetable'),('Pumpkin','Vegetable','Root Vegetable'),('Delicata','Vegetable','Root Vegetable'),('Tomato','Vegetable','Nightshade'),('Bell Pepper','Vegetable','Nightshade'),('Crimini','Vegetable','Funghi'),('Chanterelle','Vegetable','Funghi'),('Almond','Vegetable','Nuts & Seeds'),('Pecan','Vegetable','Nuts & Seeds'),('Sesame','Vegetable','Nuts & Seeds'),('Pinto Bean','Vegetable','Beans'),('Lentil','Vegetable','Beans'),('Black Pepper','Herb & Spices','Black Pepper'),('Ancho','Herb & Spices','Red Pepper'),('Aleppo','Herb & Spices','Red Pepper'),('Chipotle','Herb & Spices','Red Pepper'),('Hot Sauce','Herb & Spices','Hot & Spicy'),('Sichuan', 'Herb & Spices','Hot & Spicy'),('Oregano','Herb & Spices','Herbs'),('Basil','Herb & Spices','Herbs'),('Tarragon','Herb & Spices','Herbs'),('Clove','Herb & Spices','Baking Spice'),('Allspice','Herb & Spices','Baking Spice'),('Turmeric','Herb & Spices','Exotic Spices'),('Saffron','Herb & Spices','Exotic Spices'),('Fennel','Herb & Spices','Exotic Spices'),('Ginger','Herb & Spices','Exotic Spices'),('Farro','Starch','Whole Wheat Grain'),('Yucca','Starch','Sweet Starchy Vegetable'),('Taro','Starch','Sweet Starchy Vegetable'),('Orange','Sweet','Fruit & Berries'),('Apple','Sweet','Fruit & Berries'),('Peach','Sweet','Fruit & Berries'),('Ice Cream','Sweet','Vanilla & Caramel');



-- insert region data into region table -- 


INSERT INTO region (country_name)
VALUES ('Italy'), ('France'), ('Spain'), ('US'), ('Argentina'), ('Germany'), ('Australia'), ('Portugal'), ('Rest of World');


-- insert grape_varieties into variety table --

INSERT INTO grape_variety (grape_name)
VALUES ('Pinot Noir'), ('Grenache'), ('Merlot'), ('Sangiovese'), ('Cabernet Sauvignon'), ('Syrah'), ('Malbec'), ('Pinot Grigio'), ('Mourverde'), ('Riesling'), ('Sauvignon Blanc'), ('Muscat'), ('Chardonnay'), ('Glera'), ('Tinta Roriz'), ('Pinotage'), ('Durif'), ('Touriga Nacional'), ('Meritage'), ('Zinfandel'), ('Cabernet Franc'), ('Tempranillo'), ('Nebblolo'), ('Barbera'), ('Mourvedre'), ('Gamay');


-- insert wines into wine table --


INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Malbec', 'Bold Red', (SELECT id FROM region WHERE country_name = 'France') , (SELECT id FROM grape_variety WHERE grape_name = 'Malbec'), (SELECT id FROM temperature WHERE temp = '62-68')); 

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Merlot', 'Medium Red', (SELECT id FROM region WHERE country_name = 'France') , (SELECT id FROM grape_variety WHERE grape_name = 'Merlot'), (SELECT id FROM temperature WHERE temp = '56-61')); 

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Pinot Noir', 'Light Red', (SELECT id FROM region WHERE country_name = 'France') , (SELECT id FROM grape_variety WHERE grape_name = 'Pinot Noir'), (SELECT id FROM temperature WHERE temp = '56-61')); 


INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Provencal Rose', 'Rose', (SELECT id FROM region WHERE country_name = 'France') , (SELECT id FROM grape_variety WHERE grape_name = 'Mourverde'), (SELECT id FROM temperature WHERE temp = '41-48')); 

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Chardonnay', 'Rich White', (SELECT id FROM region WHERE country_name = 'France') , (SELECT id FROM grape_variety WHERE grape_name = 'Chardonnay'), (SELECT id FROM temperature WHERE temp = '41-48')); 

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Sauvignon Blanc', 'Light White', (SELECT id FROM region WHERE country_name = 'France') , (SELECT id FROM grape_variety WHERE grape_name = 'Sauvignon Blanc'), (SELECT id FROM temperature WHERE temp = '41-48')); 

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Prosecco', 'Sparkling', (SELECT id FROM region WHERE country_name = 'Italy') , (SELECT id FROM grape_variety WHERE grape_name = 'Glera'), (SELECT id FROM temperature WHERE temp = '41-48')); 


INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Moscato', 'Sweet White', (SELECT id FROM region WHERE country_name = 'Italy') , (SELECT id FROM grape_variety WHERE grape_name = 'Muscat'), (SELECT id FROM temperature WHERE temp = '41-48')); 

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Port', 'Dessert', (SELECT id FROM region WHERE country_name = 'Portugal') , (SELECT id FROM grape_variety WHERE grape_name = 'Tinta Roriz'), (SELECT id FROM temperature WHERE temp =  '56-61')); 

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Mourvédre', 'Bold Red', (SELECT id FROM region WHERE country_name = 'Spain') , (SELECT id FROM grape_variety WHERE grape_name = 'Mourvedre'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Pinotage', 'Bold Red', (SELECT id FROM region WHERE country_name = 'Rest of World') , (SELECT id FROM grape_variety WHERE grape_name = 'Pinotage'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Petite Sirah', 'Bold Red', (SELECT id FROM region WHERE country_name = 'US') , (SELECT id FROM grape_variety WHERE grape_name = 'Durif'), (SELECT id FROM temperature WHERE temp = '60-70'));


INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Touriga Nacional', 'Bold Red', (SELECT id FROM region WHERE country_name = 'Rest of World') , (SELECT id FROM grape_variety WHERE grape_name = 'Touriga Nacional'), (SELECT id FROM temperature WHERE temp = '60-70'));


INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Cabernet Sauvignon', 'Bold Red', (SELECT id FROM region WHERE country_name = 'Rest of World') , (SELECT id FROM grape_variety WHERE grape_name = 'Cabernet Sauvignon'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Meritage', 'Bold Red', (SELECT id FROM region WHERE country_name = 'US') , (SELECT id FROM grape_variety WHERE grape_name = 'Meritage'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Sangiovese', 'Medium Red', (SELECT id FROM region WHERE country_name = 'Italy') , (SELECT id FROM grape_variety WHERE grape_name = 'Sangiovese'), (SELECT id FROM temperature WHERE temp = '60-70'));


INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Zinfandel', 'Bold Red', (SELECT id FROM region WHERE country_name = 'US') , (SELECT id FROM grape_variety WHERE grape_name = 'Zinfandel'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Cabernet Franc', 'Bold Red', (SELECT id FROM region WHERE country_name = 'France') , (SELECT id FROM grape_variety WHERE grape_name = 'Cabernet Franc'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Tempranillo', 'Bold Red', (SELECT id FROM region WHERE country_name = 'Spain') , (SELECT id FROM grape_variety WHERE grape_name = 'Tempranillo'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Nebbiolo', 'Medium Red', (SELECT id FROM region WHERE country_name = 'Italy') , (SELECT id FROM grape_variety WHERE grape_name = 'Nebblolo'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Barbera', 'Medium Red', (SELECT id FROM region WHERE country_name = 'Italy') , (SELECT id FROM grape_variety WHERE grape_name = 'Barbera'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Mourvédre', 'Medium Red', (SELECT id FROM region WHERE country_name = 'Spain') , (SELECT id FROM grape_variety WHERE grape_name = 'Mourvedre'), (SELECT id FROM temperature WHERE temp = '60-70'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Grenache', 'Light Red', (SELECT id FROM region WHERE country_name = 'Rest of World') , (SELECT id FROM grape_variety WHERE grape_name = 'Grenache'), (SELECT id FROM temperature WHERE temp = '50-60'));

INSERT INTO wine (name, wine_type, region_id, variety_id, temp_id)
VALUES ('Gamay', 'Light Red', (SELECT id FROM region WHERE country_name = 'France') , (SELECT id FROM grape_variety WHERE grape_name = 'Gamay'), (SELECT id FROM temperature WHERE temp = '50-60'));


-- insert pairs into the pair relationship table --



INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Strawberry'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Strawberry'), (SELECT id FROM wine WHERE name = 'Prosecco'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Creme Brulee'), (SELECT id FROM wine WHERE name = 'Port'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Creme Brulee'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Sweet Potato'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Sweet Potato'), (SELECT id FROM wine WHERE name = 'Provencal Rose'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brown Rice'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brown Rice'), (SELECT id FROM wine WHERE name = 'Chardonnay'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brown Rice'), (SELECT id FROM wine WHERE name = 'Provencal Rose'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brown Rice'), (SELECT id FROM wine WHERE name = 'Pinot Noir'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Carrot'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Carrot'), (SELECT id FROM wine WHERE name = 'Chardonnay'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Carrot'), (SELECT id FROM wine WHERE name = 'Provencal Rose'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Kale'), (SELECT id FROM wine WHERE name = 'Prosecco'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Kale'), (SELECT id FROM wine WHERE name = 'Sauvignon Blanc'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Cinnamon'), (SELECT id FROM wine WHERE name = 'Port'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Cinnamon'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Cinnamon'), (SELECT id FROM wine WHERE name = 'Provencal Rose'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Cinnamon'), (SELECT id FROM wine WHERE name = 'Merlot'));

-- 
INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Chili'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Chili'), (SELECT id FROM wine WHERE name = 'Prosecco'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Chili'), (SELECT id FROM wine WHERE name = 'Sauvignon Blanc'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Chili'), (SELECT id FROM wine WHERE name = 'Provencal Rose'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Chili'), (SELECT id FROM wine WHERE name = 'Merlot'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Chili'), (SELECT id FROM wine WHERE name = 'Malbec'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Tenderloin'), (SELECT id FROM wine WHERE name = 'Prosecco'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Tenderloin'), (SELECT id FROM wine WHERE name = 'Provencal Rose'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Tenderloin'), (SELECT id FROM wine WHERE name = 'Merlot'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Beef'), (SELECT id FROM wine WHERE name = 'Malbec'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Beef'), (SELECT id FROM wine WHERE name = 'Merlot'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Gouda'), (SELECT id FROM wine WHERE name = 'Merlot'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Gouda'), (SELECT id FROM wine WHERE name = 'Malbec'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Gouda'), (SELECT id FROM wine WHERE name = 'Prosecco'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Gouda'), (SELECT id FROM wine WHERE name = 'Port'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brie'), (SELECT id FROM wine WHERE name = 'Port'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brie'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brie'), (SELECT id FROM wine WHERE name = 'Prosecco'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brie'), (SELECT id FROM wine WHERE name = 'Chardonnay'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Brie'), (SELECT id FROM wine WHERE name = 'Pinot Noir'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Turnip'), (SELECT id FROM wine WHERE name = 'Zinfandel'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Eggplant'), (SELECT id FROM wine WHERE name = 'Cabernet Franc'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Chickpea'), (SELECT id FROM wine WHERE name = 'Sauvignon Blanc'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Anise'), (SELECT id FROM wine WHERE name = 'Merlot'));
INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Bleu'), (SELECT id FROM wine WHERE name = 'Merlot'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Cheddar'), (SELECT id FROM wine WHERE name = 'Malbec'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Shallot'), (SELECT id FROM wine WHERE name = 'Zinfandel'));


INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Quinoa'), (SELECT id FROM wine WHERE name = 'Moscato'));

INSERT INTO pair (food_id, wine_id)
VALUES ((SELECT id FROM food WHERE name = 'Chocolate'), (SELECT id FROM wine WHERE name = 'Port'));



