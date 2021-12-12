-- * CASE 1

-- Menampilkan Semua Tables di Database toko_online
SHOW TABLES;

-- Membuat Table Baru tbl_products
CREATE TABLE tbl_products
(
    id INT(11) AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    price INT(11) NOT NULL,
    description TEXT,
    stock INT(11) NOT NULL,
    PRIMARY KEY (id)
);

-- Menampilkan Struktur Table
DESC tbl_products;