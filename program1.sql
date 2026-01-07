-- Drop table if it already exists
DROP TABLE IF EXISTS users;

-- Create users table
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

-- Insert sample users
INSERT INTO users (username, password)
VALUES ('admin', 'admin123');

INSERT INTO users (username, password)
VALUES ('rahul', 'rahul123');

-- Show execution
SELECT * FROM users;