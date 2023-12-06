/*CREATE DATABASE tsa;

CREATE TABLE member (id INTEGER, first_name TEXT, last_name TEXT,
					phone_number TEXT, grade INTEGER, dues INTEGER,
                    eventa_id INTEGER, eventb_id INTEGER, eventc_id INTEGER,
                    t_shirt_size TEXT, TL BOOLEAN, officer BOOLEAN, 
                    CO BOOLEAN, PRIMARY KEY (id));
CREATE TABLE event (id INTEGER, name TEXT, TLA INTEGER, TLB INTEGER,
                    TLC INTEGER, project BOOLEAN, member_number INTEGER, 
                    status TEXT, PRIMARY KEY (id));

/*
INSERT INTO member VALUES(1, "Daniel", "Hwang", 12, 
                        "danielhwang1102@gmail.com", 
                        "daniel.hwang1111@g.gcpsk12.org",
                          "6781234567", "M", TRUE, 1, 2, 3,
                          "M", TRUE, TRUE, TRUE, TRUE);
                          '''
                          */

USE tsa;

LOAD DATA INFILE 'event.csv' INTO TABLE event
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA INFILE 'member.csv' INTO TABLE member
FIELDS TERMINATED BY ','
IGNORE 1 ROWS; 

SELECT * FROM member LIMIT 10;

SELECT * FROM event LIMIT 10;
