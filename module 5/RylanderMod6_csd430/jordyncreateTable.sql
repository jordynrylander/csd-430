-- Makes My Novel Diary's book tracking(Library) for CSD 430.--
CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

CREATE TABLE IF NOT EXISTS jordyn_librarydata (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(120) NOT NULL,
    author_name VARCHAR(100) NOT NULL,
    genre VARCHAR(60) NOT NULL,
    writing_status VARCHAR(30) NOT NULL,
    current_word_count INT NOT NULL DEFAULT 0,
    target_word_count INT NOT NULL DEFAULT 0,
    PRIMARY KEY (book_id)
);