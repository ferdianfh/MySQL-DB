--  * CASE 2

-- Membuat Tabel detail_transaction
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

-- Menampilkan Tabel detail_transaction
DESC detail_transaction;

-- Memasukkan Data ke dalam Tabel detail_transaction
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


-- JOIN Tabel detail_transaction dengan products dan transaction
SELECT * FROM detail_transaction
JOIN transaction ON (transaction.invoice = detail_transaction.id_transaction)
JOIN products ON (products.id = detail_transaction.id_product);

-- Menampilkan sesuai table
SELECT detail_transaction.id,
        detail_transaction.id_transaction,
        transaction.date,
        transaction.total,
        products.product_name,
        products.price,
        detail_transaction.qty,
        products.category
FROM detail_transaction
JOIN transaction ON (transaction.invoice = detail_transaction.id_transaction)
JOIN products ON (products.id = detail_transaction.id_product);