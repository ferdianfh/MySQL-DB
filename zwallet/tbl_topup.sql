-- Membuat Table topup

CREATE TABLE topup (
    id INT(10) AUTO_INCREMENT NOT NULL,
    email VARCHAR(50) NOT NULL,
    no_rek INT(20) NOT NULL,
    bank_code VARCHAR(10) NOT NULL,
    total_topup INT(20) NOT NULL,
    balance_before INT(20) NOT NULL,
    balance_after INT(20) NOT NULL,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

DESC topup;