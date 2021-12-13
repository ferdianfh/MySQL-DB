-- Membuat Tabel transaction_history

CREATE TABLE transaction_history (
    id INT(10) AUTO_INCREMENT NOT NULL,
    username_receiver VARCHAR(50) NOT NULL,
    phone_receiver INT(20) NOT NULL,
    nominal INT(15) NOT NULL,
    income BOOLEAN,
    expenses BOOLEAN,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

DESC transaction_history;