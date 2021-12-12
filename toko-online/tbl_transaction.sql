--  * CASE 2

-- Membuat Table Transaction
CREATE TABLE transaction (
    invoice VARCHAR(50) NOT NULL,
    date DATE NOT NULL,
    total INT(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (invoice)
);

-- Menampilkan Table Transaction
DESC transaction;

-- Memasukkan Data ke Dalam Table Transaction
INSERT INTO transaction (invoice, date, total)
VALUES ('INV-001', '2021-01-01', 120000),
        ('INV-002', '2021-01-02', 50000),
        ('INV-003', '2021-01-02', 10000),
        ('INV-004', '2021-01-03', 15000);

-- Menampilkan Semua Data pada Table transaction
SELECT * FROM transaction;