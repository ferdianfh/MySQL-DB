--  * CASE 2

-- Tabel Kategori
CREATE TABLE product_category (
    id_category INT(10) AUTO_INCREMENT NOT NULL,
    product_code INT(11) NOT NULL,
    PRIMARY KEY (id_category),
    CONSTRAINT fk_category_product
    FOREIGN KEY (product_code) REFERENCES products (id)
);

DESC product_category;

INSERT INTO product_category(product_code)
VALUES (1), (2), (3);


-- Join tabel products dan category
SELECT * FROM product_category
JOIN products ON (products.id = product_category.product_code);