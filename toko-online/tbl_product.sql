--  * CASE 2

-- Membuat Table product
CREATE TABLE products (
    id INT(11) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(64) NOT NULL,
    price INT(11) NOT NULL DEFAULT 0,
    category ENUM ('Mie Instan', 'Soda', 'Air Mineral') NOT NULL,
    PRIMARY KEY (id)
);

-- Menampilkan Table product
DESC products;

-- Memasukkan Data ke Table products
INSERT INTO products (product_name, price, category)
VALUES ('Indomie', 2500, 'Mie Instan'),
        ('Coca Cola', 5000, 'Soda'),
        ('Aqua', 5000, 'Air Mineral'),
        ('Mie Sedaap', 2500, 'Mie Instan'),
        ('Sprite', 5000, 'Soda'),
        ('Le Mineral', 5000, 'Air Mineral');

-- Menampilkan Data pada Table products
SELECT * FROM products;


