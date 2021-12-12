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

-- Memasukkan Data ke Dalam Table tbl_products
INSERT INTO tbl_products(id, name, price, description, stock)
VALUES (1, 'Sandal Xpert', 9000, 'Sandal Xpert Limited Edition', 2);

INSERT INTO tbl_products(name, price, description, stock)
VALUES ('Sorumi Soto', 3000, 'Mi Instan Rasa Soto Babat', 200),
        ('Sorumi Ayam kampung', 2500, 'Mi Instan Rasa Ayam Kampung', 250),
        ('Sandal Zwallow', 9500, 'Sandal Kualitas Zuper', 20),
        ('Fintu', 10500, 'Minuman Soda Rasa Keju', 120),
        ('Koka Kola', 15500, 'Minuman Soda Rasa Beer', 200),
        ('TV Xiaoguo', 1500000, 'Smart TV Made in China', 205),
        ('TV Polystrong', 2300000, 'Smart TV Super Kuat', 124),
        ('Sorumi DenDeng Biawak', 3500, 'Mi Instan Rasa Dendeng Biawak', 250),
        ('Chiki Dora', 5500, 'Makanan Ringan Rasa Petualangan', 300),
        ('Chiki Bools', 5500, 'Makanan Ringan Rasa Keju', 320),
        ('Kompor Kurenai', 135000, 'Kompor Gas Teruji Klinis', 135),
        ('Kompor HOCK', 250000, 'Kompor Gas Terbaik sejak 1779', 120),
        ('Kulkas Smart Solar', 3500000, 'Kulkas Bertenaga Matahari', 90),
        ('Kulkas Panas Dalam', 4500000, 'Kulkas Penahan Panas Dalam', 70),
        ('Xiaoguo', 2950000, 'Smartphone Terbaik di Pasaran', 270),
        ('Vivivar', 3400900, 'Smartphone Dengan Lensa Terbaik', 190),
        ('OPPOR', 3750500, 'Smartphone Lokal Rasa Internasional', 230),
        ('Talenan Stein Cock War', 125500, 'Talenan Marmer Buatan Jerman', 270),
        ('Blender Yakuza', 475000, 'Blender Kuat Seperti Yakuza', 137),
        ('Mie Seraap Goreng', 3500, 'Mi Instan Paling Nikmat', 350),
        ('Mie Seraap Kuah Sayur', 3500, 'Mi Instan Rasa Kuah Sop Prasmanan', 320),
        ('Mie Seraap Susu', 4000, 'Mi Instan Rasa Susu Kudanil', 250),
        ('Aquatic', 6500, 'Air Mineral Dari Gunung', 400),
        ('Le Mingkem', 6000, 'Air Mineral Ada Manisnya', 420),
        ('Neskleng', 9000, 'Air Mineral Jernih dan Sehat', 200),
        ('Tirta Kemuning', 3500, 'Air Mineral Dari Sungai Kemuning', 550),
        ('Mesin Cuci Sumsang', 3570000, 'Mesin Cuci Otomatis', 80),
        ('Mesin CUci Daiya', 2950000, 'Mesin Cuci Daya Tahan Kuat', 70),
        ('Kompor Wadimor', 390000, 'Kompor Gas Halal', 75),
        ('Kompor Minyak', 150600, 'Kompor Isi Ulang', 30),
        ('Kompor Aispon', 256700, 'Kompor Tanam Terbaik di Pasaran', 120),
        ('Sumsang P123', 9799000, 'Smartphone Sejuta Umat Series P-123', 99),
        ('Sumsang P125', 12999000, 'Smartphone Sejuta Umat Series P-125', 99),
        ('Sumsang Note 102', 18799000, 'Smartphone Sejuta Umat Series Note', 90),
        ('Chiki Kentung', 5500, 'Makanan Ringan Rasa Kentang', 200),
        ('Chiki Cengek', 6500, 'Makanan Ringan Rasa Cabai Rawit', 210),
        ('Surprise', 9500, 'Minuman Soda Rasa Lemon', 250),
        ('Kuku Bumi', 8500, 'Minuman Soda Rasa Roso', 250),
        ('Kulkas Sarap', 4750000, 'Kulkas Kualitas Sarap', 120),
        ('TV Sumsang', 7899000, 'Smart TV dengan Banyak Channel', 50),
        ('TV Sonay', 5790000, 'Smart TV Berbahan Karet', 50),
        ('Baterai Aljabar', 9500, 'Baterai Aljabar Serbaguna', 210),
        ('Baterai XYZ', 16950, 'Baterai Tipe C Tahan Lama', 100),
        ('Dinamo Tamiya', 57000, 'Dinamo Mainan Legendaris Rare Items', 1),
        ('Hair Dryer', 345000, 'Pengering Rambut Alami', 40),
        ('Mesin Cuci Polystrong', 3500700, 'Mesin Cuci Paling Strong', 86),
        ('Mesin Cuci Sarap', 2576000, 'Mesin Cuci Tenaga Sarap', 73),
        ('Kipas Angin Daisuki', 670000, 'Kipas Angin Paling Digemari', 250),
        ('Mesin Cuci Aquatic', 4300000, 'Mesin Cuci Hemat Air', 19),
        ('Samjang Toekbokki', 24500, 'Mi Instan Korean Rasa Toekbokki', 300),
        ('Samjang Petai', 22500, 'Mi Instan Korea Rasa Petai', 450),
        ('Samjang Babi Panggang', 23500, 'Mi Instan Korean Rasa Babi Panggang', 500),
        ('Kopi Kapal Selam', 5000, 'Kopi Sachet Paling Hitam', 145),
        ('Kopi Setarbucek', 4500, 'Kopi Sachet Kekinian', 670),
        ('Kulkas Kansen', 4350000, 'Kulkas Sebesar Kapal Pesiar', 92),
        ('Kulkas Sumsang', 4500000, 'Kulkas Bisa Twitter-an', 30),
        ('Frying Pan Stein Cock War', 700899, 'Penggorengan Berbahan Marmer', 345),
        ('Pisau Stein Cock War', 430000, 'Pisan Tajam Berbahan Marmer', 243),
        ('Chopper Mitu Chibi', 657000, 'Chopper Tajam Penggiling Makanan', 240),
        ('Kipas Angin Kosmik', 329000, 'Bisa Nempel Dimana-mana', 450),
        ('Kipas Angin Mini', 35000, 'Kipas Angin Portable', 900),
        ('Kipas Angin Modesta', 500000, 'Kipas Angin Tinggi', 130),
        ('TV Flat Smart', 550000, 'Smart TV Kekinian', 200),
        ('Kipas Angin Doraemen', 40000, 'Kipas Angin Portable Doraemen', 790),
        ('Ipun F4', 27997000, 'Smartphone Pineapple Series F4', 59),
        ('Ipun F4 Pro Max', 29899000, 'Smartphone Pineapple Series F4 Pro Max', 50),
        ('Ipun F5 Pro Buruh', 20900000, 'Smartphone Pineapple Paling Murah', 70),
        ('Ipun F8', 35679990, 'Smartphone Pineapple Flagship', 32),
        ('Kopi Susu XYZ', 4000, 'Kopi Sachet Rasa Susu', 340),
        ('Kopi Durian', 3500, 'Kopi Sachet Rasa Durian', 300),
        ('Roti Tawar', 10500, 'Roti Rasa Tawar', 30),
        ('Roti Abon', 15000, 'Roti Isi Abon', 40),
        ('Roti Yeas', 9000, 'Roti Rasa Cokelat Yes', 35),
        ('Roti Belanda', 25000, 'Roti Panjang Seperti Belanda', 20),
        ('Sandal Mars', 45000, 'Sandal Untuk di Planet Mars', 30),
        ('Handuk Zyagendh', 76900, 'Handuk Kecil Lembut', 60),
        ('Handuk Bweezigendh', 135000, 'Handuk Besar Lembut', 50),
        ('Wireless Mouse KP', 112000, 'Mouse Tanpa Kabel', 110),
        ('Wireless Keyboard', 430000, 'Keyboard Tanpa Kabel', 62),
        ('Fahrenheit', 56000, 'Celana Dalam Pria', 200),
        ('Furgoso', 45000, 'Celana Dalam Pria', 150),
        ('Turbin PLTA', 345000, 'Turbin Pembangkit Listrik', 4),
        ('Susu Murni Kuda Liar', 21000, 'Susu Dari Alam Liar', 150),
        ('Susu Inomilk', 33500, 'Susu Rasa Vanilla', 230),
        ('Susu Kedelai', 12000, 'Susu Rasa Keledai', 100),
        ('Susu Biawak', 50000, 'Susu Dari Biawak', 100),
        ('Sarang Wallet', 345000, 'Sarang Wallet Murni', 10),
        ('Oxford', 245000, 'T-Shirt Pria Kualitas Super', 80),
        ('Hogwarts', 378000, 'Celana Jeans Pria Kualitas Super', 80),
        ('Teh Sirik Gula Batu', 11000, 'Teh Rasa Gula Batu', 370),
        ('Teh Gentong', 15000, 'Teh Aroma Melati', 350),
        ('Teh Thailand', 14600, 'Teh Rasa Susu Thailand', 200),
        ('Teh Bunga Rosella', 15000, 'Teh Aroma Bunga Rosella', 170),
        ('Chiki Kipas', 6500, 'Makanan Ringan Berbentuk Kipas', 240),
        ('Samjang Ikan Peda', 30500, 'Mi Instan Korea Rasa Ikan Peda', 280),
        ('Sorumi Ayam Tiren', 3000, 'Mi Instan Rasa Ayam Tiren', 100),
        ('Kecap Monyet', 22700, 'Kecap Dari Kedelai Hitam', 150),
        ('Saus Tomat XYZ', 34000, 'Saus Dari Tomat Pilihan', 200),
        ('Saus Teriyaki', 24000, 'Saus Rasa Teriyaki', 130);

-- Menampilkan Data Dari Table tbl_products
SELECT * FROM tbl_products;

SELECT * FROM tbl_products
WHERE price < 10000 OR stock < 20;

SELECT * FROM tbl_products
WHERE price > 20000 AND price < 100000;


-- Menghapus Data Dari Table tbl_products
DELETE FROM tbl_products
WHERE id = 100;

-- Mengurutkan Data pada Table tbl_products
SELECT * FROM tbl_products
ORDER BY price ASC;

SELECT * FROM tbl_products
ORDER BY stock DESC;