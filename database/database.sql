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

CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY  KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'user',
    reset_token VARCHAR(255),
    reset_expires DATETIME
);

CREATE TABLE reservations(
    id INT AUTO_INCREMENT PRIMARY  KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    reservation_date DATETIME,
    return_date DATE,
    status VARCHAR(20) DEFAULT 'reserved', 
    lecture BOOLEAN DEFAULT 0,
    book_club BOOLEAN DEFAULT 0,
    audiobook BOOLEAN DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

CREATE TABLE reviews(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    comment TEXT NOT NULL,
    approved BOOLEAN DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)    
);