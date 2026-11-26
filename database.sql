CREATE TABLE authors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    biography TEXT
);

CREATE TABLE genres(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE books(
    id INT AUTO_INCREMENT PRIMARY  KEY,
    title VARCHAR(100) NOT NULL,
    summary TEXT,
    publication_date DATE,
    cover_image VARCHAR(255),
    available BOOLEAN DEFAULT 1,
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

