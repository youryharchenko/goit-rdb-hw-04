CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `genre_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `publication_year` int  NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_author_FK` (`author_id`),
  KEY `books_genre_FK` (`genre_id`),
  CONSTRAINT `books_author_FK` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `books_genre_FK` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;