-- Membuat Tabel auth

CREATE TABLE auth (
    id INT(10) AUTO_INCREMENT NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    pin_auth INT(6) NOT NULL,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

DESC auth;