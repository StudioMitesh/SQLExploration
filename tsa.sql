CREATE TABLE member (id INTEGER, first_name TEXT,
                     last_name TEXT, grade INTEGER, personal_email TEXT,
                     school_email TEXT, phone_number TEXT, gender TEXT, dues BOOLEAN,
                     event1_id INTEGER, event2_id INTEGER, event3_id INTEGER, 
                     t_shirt_size TEXT, TL BOOLEAN, SLC BOOLEAN, officer BOOLEAN, CO BOOLEAN, PRIMARY KEY (id));
CREATE TABLE event ( id INTEGER, name TEXT, TL1 INTEGER, TL2 INTEGER,TL3 INTEGER, project BOOLEAN, member_number INTEGER, status TEXT, PRIMARY KEY (id));


INSERT INTO member VALUES(1, "Daniel", "Hwang", 12, "danielhwang1102@gmail.com", "daniel.hwang1111@g.gcpsk12.org",
                          "6781234567", "M", TRUE, 1, 2, 3, "M", TRUE, TRUE, TRUE, TRUE);

LOAD DATA INFILE 'event.csv'
INTO TABLE event
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

SELECT * FROM member LIMIT 10;

SELECT * FROM event LIMIT 10;

