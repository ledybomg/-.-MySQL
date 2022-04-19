

INSERT INTO users VALUES (DEFAULT, 'Petya', 'Petukhov', 'petya@mail.com', '89212223334', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Vasya', 'Vasilkov', 'vasya@mail.com', '89212023332', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Kolya', 'Rolyn', 'kolya@mail.com', '89212223335', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Ulya', 'Vasilkova', 'yula@mail.com', '89212023336', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Sonia', 'Petukhova', 'sonia@mail.com', '89212223337', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Galya', 'Muhina', 'muha@mail.com', '89212023338', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Tania', 'Gotova', 'got@mail.com', '89212223339', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Olya', 'Oleva', 'ola@mail.com', '89212023341', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Tolya', 'Tolev', 'tol@mail.com', '89212223342', NULL, DEFAULT);

INSERT INTO users VALUES (DEFAULT, 'Polya', 'Poleva', 'pol@mail.com', '89212023343', NULL, DEFAULT);


SELECT * FROM users;

DESCRIBE users;

SHOW CREATE TABLE users;

INSERT INTO profiles VALUES (1, 'm', '1997-12-01', NULL, 'Moscow', 'Russia'); 

INSERT INTO profiles VALUES (2, 'f', '1988-11-02', NULL, 'Moscow', 'Russia'); 

INSERT INTO profiles VALUES (3, 'm', '1910-01-22', NULL, 'Saratov', 'Russia'); 

INSERT INTO profiles VALUES (4, 'm', '1978-07-14', NULL, 'Samara', 'Russia'); 

INSERT INTO profiles VALUES (5, 'm', '1982-09-08', NULL, 'Balashov', 'Russia'); 

INSERT INTO profiles VALUES (6, 'f', '1914-11-23', NULL, 'Samara', 'Russia'); 

INSERT INTO profiles VALUES (7, 'f', '1991-05-06', NULL, 'Balakovo', 'Russia'); 

INSERT INTO profiles VALUES (8, 'f', '1993-02-02', NULL, 'Saratov', 'Russia'); 

INSERT INTO profiles VALUES (9, 'f', '1993-12-07', NULL, 'Moscow', 'Russia'); 

INSERT INTO profiles VALUES (10, 'f', '1988-08-05', NULL, 'Moscow', 'Russia'); 


SELECT * FROM profiles;


INSERT INTO photo VALUES (DEFAULT, 1, 1, 'im.jpg', 100, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 1, 6, 'im1.png', 78, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 2, 3, 'doc.docx', 1024, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 9, 4, 'im.jpg', 100, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 7, 5, 'im1.png', 78, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 10, 3, 'doc.docx', 1024, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 6, 9, 'im.jpg', 100, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 3, 8, 'im1.png', 78, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 5, 2, 'doc.docx', 1024, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 4, 7, 'im.jpg', 100, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 8, 1, 'im1.png', 78, DEFAULT);

INSERT INTO photo VALUES (DEFAULT, 6, 7, 'doc.docx', 1024, DEFAULT);


SELECT * FROM photo;


INSERT INTO messages VALUES (DEFAULT, 1, 2, 'Hi!', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 3, 2, 'Vasya!', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 5, 1, 'Hi, Petya', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 1, 5, 'Hi, Sonia!', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 7, 3, 'Go?', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 3, 7, 'No', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 6, 4, 'What?', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 4, 6, 'Look aut!', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 9, 5, 'It is a good idea', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 5, 9, 'I donI dont саге', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 8, 3, 'Be careful', 1, DEFAULT, DEFAULT); 

INSERT INTO messages VALUES (DEFAULT, 2, 1, 'Look here', 1, DEFAULT, DEFAULT); 


SELECT * FROM messages;


INSERT INTO media_types VALUES (DEFAULT, 'изображение');

INSERT INTO media_types VALUES (DEFAULT, 'гиф');

INSERT INTO media_types VALUES (DEFAULT, 'документ');


SELECT * FROM media_types;


INSERT INTO media VALUES (DEFAULT, 1, 1, 'im.jpg', 100, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 1, 6, 'im1.png', 78, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 2, 3, 'doc.docx', 1024, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 9, 4, 'im.jpg', 100, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 7, 5, 'im1.png', 78, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 10, 3, 'doc.docx', 1024, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 6, 9, 'im.jpg', 100, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 3, 8, 'im1.png', 78, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 5, 2, 'doc.docx', 1024, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 4, 7, 'im.jpg', 100, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 8, 1, 'im1.png', 78, DEFAULT);

INSERT INTO media VALUES (DEFAULT, 6, 7, 'doc.docx', 1024, DEFAULT);


SELECT * FROM media;




INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (2, 1);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (3, 1);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (4, 1);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (5, 9);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (6, 3);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (7, 1);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (8, 5);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (9, 1);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (2, 3);

INSERT INTO friend_requests (from_user_id, to_user_id) VALUES (10, 4);


SELECT * FROM friend_requests;


INSERT INTO communities VALUES (DEFAULT, 'Number1', 'I am number one', 10);

INSERT INTO communities VALUES (DEFAULT, 'Number2', 'I am number two', 9);

INSERT INTO communities VALUES (DEFAULT, 'Number3', 'I am number three', 8);

INSERT INTO communities VALUES (DEFAULT, 'Number4', 'I am number four', 7);

INSERT INTO communities VALUES (DEFAULT, 'Number5', 'I am number five', 6);

INSERT INTO communities VALUES (DEFAULT, 'Number6', 'I am number six', 5);

INSERT INTO communities VALUES (DEFAULT, 'Number7', 'I am number seven', 4);

INSERT INTO communities VALUES (DEFAULT, 'Number8', 'I am number eight', 3);

INSERT INTO communities VALUES (DEFAULT, 'Number9', 'I am number nine', 2);

INSERT INTO communities VALUES (DEFAULT, 'Number10', 'I am number ten', 1);


SELECT * FROM communities;


INSERT INTO communities_users VALUES (1, 4, DEFAULT);

INSERT INTO communities_users VALUES (2, 7, DEFAULT);

INSERT INTO communities_users VALUES (3, 9, DEFAULT);

INSERT INTO communities_users VALUES (4, 10, DEFAULT);

INSERT INTO communities_users VALUES (5, 1, DEFAULT);

INSERT INTO communities_users VALUES (6, 2, DEFAULT);

INSERT INTO communities_users VALUES (7, 3, DEFAULT);

INSERT INTO communities_users VALUES (8, 5, DEFAULT);

INSERT INTO communities_users VALUES (9, 6, DEFAULT);

INSERT INTO communities_users VALUES (10, 8, DEFAULT);



SELECT * FROM communities_users;


INSERT INTO ads_types VALUES (DEFAULT, 'изображение');

INSERT INTO ads_types VALUES (DEFAULT, 'музыка');

INSERT INTO ads_types VALUES (DEFAULT, 'документ');


SELECT * FROM ads_types;


INSERT INTO ads VALUES (DEFAULT, 1, 1, 'im.jpg', 100, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 1, 6, 'im1.png', 78, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 2, 3, 'doc.docx', 1024, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 9, 4, 'im.jpg', 100, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 7, 5, 'im1.png', 78, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 10, 3, 'doc.docx', 1024, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 6, 9, 'im.jpg', 100, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 3, 8, 'im1.png', 78, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 5, 2, 'doc.docx', 1024, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 4, 7, 'im.jpg', 100, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 8, 1, 'im1.png', 78, DEFAULT);

INSERT INTO ads VALUES (DEFAULT, 6, 7, 'doc.docx', 1024, DEFAULT);


SELECT * FROM ads;


SELECT DISTINCT last_name, first_name FROM users ORDER BY first_name ASC;
























