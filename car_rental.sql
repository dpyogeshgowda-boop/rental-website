-- Create Users table
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    phone TEXT,
    password TEXT
);

-- Create Cars table
CREATE TABLE cars (
    car_id INTEGER PRIMARY KEY AUTOINCREMENT,
    car_name TEXT NOT NULL,
    price_per_day INTEGER,
    image TEXT,
    status TEXT
);

-- Create Bookings table
CREATE TABLE bookings (
    booking_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    car_id INTEGER,
    booking_date TEXT,
    days INTEGER,
    total_amount INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

-- Create Services table
CREATE TABLE services (
    service_id INTEGER PRIMARY KEY AUTOINCREMENT,
    service_name TEXT,
    description TEXT
);

-- Insert sample user
INSERT INTO users (name, email, phone, password)
VALUES ('vignesh', 'vigneshsuvarna07@gmail.com', '7760590578', 'vignesh@123');
INSERT INTO users (name, email, phone, password)
VALUES ('yogesh', 'dp.yogeshgowda@gmail.com', '9876543210', 'yogesh@123');

-- Insert cars (from your website)
INSERT INTO cars (car_name, price_per_day, image, status)s
VALUES 
('BMW Series 5', 15000, '"C:\programs\rwd_codes\20002.jpg"', 'Available'),
('Koenigsegg', 40000, 'c:\programs\rwd_codes\20003.jpg', 'Available'),
('Pagani Huayra', 50000, '"C:\programs\rwd_codes\20009.jpg"', 'Available');

-- Insert services
INSERT INTO services (service_name, description)
VALUES
('Daily & Monthly Rentals', 'Flexible rental plans designed for all travel needs'),
('Car Maintenance', 'Periodic servicing and full inspection facilities'),
('Airport Pickup', 'Fast and reliable pick and drop facility');

-- Insert booking
INSERT INTO bookings (user_id, car_id, booking_date, days, total_amount)
VALUES (1, 1, '2025-12-17', 2, 30000);

-- Show execution
SELECT * FROM users;
SELECT * FROM cars;
SELECT * FROM bookings;
SELECT * FROM services;