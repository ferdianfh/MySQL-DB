-- Membuat Tabel transfer

CREATE TABLE transfer (
    id INT(10) AUTO_INCREMENT NOT NULL,
    username VARCHAR(50) NOT NULL,
    phone INT(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    amount_transfer INT(20) NOT NULL,
    balance_info INT(15) NOT NULL,
    username_receiver VARCHAR(50) NOT NULL,
    phone_receiver INT(20) NOT NULL,
    email_receiver VARCHAR(50) NOT NULL,
    notes TEXT,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

DESC transfer;