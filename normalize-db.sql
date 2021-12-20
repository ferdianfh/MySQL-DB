--  * CASE 2

-- ? Tabel category
CREATE TABLE category (
    id INT(10) AUTO_INCREMENT NOT NULL,
    name_category VARCHAR(64) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO category (name_category)
VALUES ('Mie Instan'), ('Soda'), ('Air Mineral');


-- ? Table products
CREATE TABLE products (
    id INT(11) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(64) NOT NULL,
    price INT(11) NOT NULL DEFAULT 0,
    id_category INT(10) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_product_category
        FOREIGN KEY (id_category) REFERENCES category (id)
);

INSERT INTO products (product_name, price, id_category)
VALUES ('Indomie', 2500, 1),
        ('Coca Cola', 5000, 2),
        ('Aqua', 5000, 3),
        ('Mie Sedaap', 2500, 1),
        ('Sprite', 5000, 2),
        ('Le Mineral', 5000, 3);


-- ? Table transaction
CREATE TABLE transaction (
    invoice VARCHAR(50) NOT NULL,
    date DATE NOT NULL,
    total INT(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (invoice)
);

INSERT INTO transaction (invoice, date, total)
VALUES ('INV-001', '2021-01-01', 120000),
        ('INV-002', '2021-01-02', 50000),
        ('INV-003', '2021-01-02', 10000),
        ('INV-004', '2021-01-03', 15000);


-- ? Tabel detail_transaction
CREATE TABLE detail_transaction (
    id INT(10) AUTO_INCREMENT NOT NULL,
    id_transaction VARCHAR(50) NOT NULL,
    id_product INT(11) NOT NULL,
    qty INT(11) NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_detail_product_transaction
        FOREIGN KEY (id_transaction) REFERENCES transaction (invoice),
        FOREIGN KEY (id_product) REFERENCES products (id)
);

INSERT INTO detail_transaction (id_transaction, id_product, qty)
VALUES ('INV-001', 1, 40),
        ('INV-001', 2, 2),
        ('INV-001', 3, 2),
        ('INV-002', 4, 10),
        ('INV-002', 1, 10),
        ('INV-003', 2, 1),
        ('INV-003', 5, 1),
        ('INV-004', 6, 1),
        ('INV-004', 4, 4);


-- JOIN Menampilkan sesuai table
SELECT detail_transaction.id,
        detail_transaction.id_transaction,
        transaction.date,
        transaction.total,
        products.product_name,
        products.price,
        detail_transaction.qty,
        category.name_category
FROM detail_transaction
JOIN transaction ON (transaction.invoice = detail_transaction.id_transaction)
JOIN products ON (products.id = detail_transaction.id_product)
JOIN category ON (category.id = products.id_category);