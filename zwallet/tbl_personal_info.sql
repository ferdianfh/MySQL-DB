-- Membuat Tabel personal_info

CREATE TABLE personal_info (
    id INT(10) AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone INT(20) NOT NULL,
    PRIMARY KEY (id)
);

DESC personal_info;