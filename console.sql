CREATE TABLE member (id INTEGER, first_name TEXT,
                     last_name TEXT, grade INTEGER, personal_email TEXT,
                     school_email TEXT, phone_number INTEGER, gender TEXT, dues BOOLEAN,
                     event1_id INTEGER, event2_id INTEGER, event3_id INTEGER, t_shirt_size TEXT,
                     TL BOOLEAN, SLC BOOLEAN, officer BOOLEAN, CO BOOLEAN);
CREATE TABLE event ( id INTEGER, name TEXT,
                     TL1 INTEGER, TL2 INTEGER,TL3 INTEGER,
                     project BOOLEAN, members_id INTEGER[],
                     member_number INTEGER, meeting_number INTEGER,
                     code TEXT, slc BOOLEAN, reps_id INTEGER[] );
CREATE TABLE TL( id INTEGER, event1_ID INTEGER, event2_ID INTEGER,
                 event3_ID INTEGER);
CREATE TABLE SLC_reps( id INTEGER, event1_ID INTEGER, event2_ID INTEGER,
                 event3_ID INTEGER, hotel_room INTEGER);


INSERT INTO member VALUES(1, "Daniel", "Hwang", 12, "danielhwang1102@gmail.com", "daniel.hwang1111@g.gcpsk12.org",
                          6781234567, "M", TRUE, 1, 2, 3, "M", TRUE, TRUE, TRUE, TRUE);

SELECT * FROM member;

