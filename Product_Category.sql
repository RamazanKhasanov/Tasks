-- Отношение "многие ко многим"

-- Таблица продуктов
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    name VARCHAR(30)
);

INSERT INTO product VALUES (1, 'Сметана'), (2, 'Говядина'), (3, 'Форель'), (4, 'Творог'), (5, 'Кофе');

-- Таблица категорий
CREATE TABLE category (
    category_id INT PRIMARY KEY,
    name VARCHAR(30)
);

INSERT INTO category VALUES (1, 'Молочное'), (2, 'Мясо'), (3, 'Рыба');

-- Смежная таблица
CREATE TABLE product_category (
    product_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product (product_id)
    FOREIGN KEY (category_id) REFERENCES category (category_id)
);

INSERT INTO product_category VALUES (1, 1), (2, 2), (3, 2), (3, 3), (4, 1);

-- Выборка по условию задания
SELECT product.name, category.name 
FROM product LEFT JOIN product_category ON product.product_id = product_category.product_id
             LEFT JOIN category ON category.category_id = product_category.category_id;