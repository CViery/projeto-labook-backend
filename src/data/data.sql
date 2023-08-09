-- Active: 1691620135156@@127.0.0.1@3306

CREATE TABLE users (
    id TEXT UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT NOT NULL,
    PRIMARY KEY(id)
);



CREATE TABLE posts (
    id TEXT UNIQUE NOT NULL,
    creator_id TEXT NOT NULL,
    content TEXT NOT NULL,
    likes INT NOT NULL,
    dislikes INT NOT NULL,
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL,
    PRIMARY KEY(id)
    FOREIGN KEY (creator_id) REFERENCES users (id)
    ON UPDATE CASCADE
	ON DELETE CASCADE       
);


CREATE TABLE likes_dislikes(
    user_id TEXT NOT NULL,
    post_id TEXT NOT NULL,
    like INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
    Foreign Key (post_id) REFERENCES post_id (id)
);