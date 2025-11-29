INSERT INTO authors (name ) VALUES ('Толкін Дж.Р.Р.');
INSERT INTO authors (name ) VALUES ('Ролінґ Дж. К.');

INSERT INTO users (name, email) VALUES ('John', 'john@example.com');
INSERT INTO users (name, email) VALUES ('Jane', 'jane@example.com');

INSERT INTO genres (name) VALUES ('фентезі');
INSERT INTO genres (name) VALUES ('пригодницький');

INSERT INTO books (title , publication_year, author_id, genre_id) VALUES ('Володар Перснів. Братство Персня', 2020, 1, 1);
INSERT INTO books (title , publication_year, author_id, genre_id) VALUES ('Гаррi Поттер i фiлософський камiнь', 2002, 2, 1);

INSERT INTO borrowed_books (borrow_date, return_date, book_id, user_id) VALUES (CURDATE(), DATE_ADD(CURDATE(), INTERVAL 30 DAY), 1, 1);
INSERT INTO borrowed_books (borrow_date, return_date, book_id, user_id) VALUES (CURDATE(), DATE_ADD(CURDATE(), INTERVAL 30 DAY), 2, 2);