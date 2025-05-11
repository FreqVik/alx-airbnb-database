-- Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('f3c9b270-7e2f-4c47-9c17-cc2c6cfa345d', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pwd1', '1234567890', 'guest'),
('a81b8f1e-02d7-4dc5-a11f-02a6d3a918c5', 'Bob', 'Smith', 'bob@example.com', 'hashed_pwd2', '2345678901', 'host'),
('dfd68f91-5972-4c3d-8f79-2cb9e16e6f42', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pwd3', NULL, 'admin');

-- Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('e093b65d-07f2-4b35-bdf4-412b6f9d4ea2', 'a81b8f1e-02d7-4dc5-a11f-02a6d3a918c5', 'Cozy Cottage', 'A small, charming cottage in the hills.', 'Asheville, NC', 120.00),
('73c05432-8129-45ae-b1c7-9ccaa0192e58', 'a81b8f1e-02d7-4dc5-a11f-02a6d3a918c5', 'Modern Loft', 'Urban loft with skyline view.', 'New York, NY', 250.00);

-- Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('1d9226d3-dc13-4d96-9f66-fc5dced6b4b6', 'e093b65d-07f2-4b35-bdf4-412b6f9d4ea2', 'f3c9b270-7e2f-4c47-9c17-cc2c6cfa345d', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
('41b5e40c-0e62-4d3c-9851-64ffb7f4e6ae', '73c05432-8129-45ae-b1c7-9ccaa0192e58', 'f3c9b270-7e2f-4c47-9c17-cc2c6cfa345d', '2025-07-10', '2025-07-15', 1250.00, 'pending');

-- Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('8cc64d45-35ee-4ed9-a2c4-58edce701f8e', '1d9226d3-dc13-4d96-9f66-fc5dced6b4b6', 480.00, 'credit_card'),
('7bc71a3c-6fbe-4c5f-a0a0-b991d41e1ee4', '41b5e40c-0e62-4d3c-9851-64ffb7f4e6ae', 1250.00, 'paypal');

-- Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('aac34b7d-6a6e-4a0f-82b4-ff03d57f3c1f', 'e093b65d-07f2-4b35-bdf4-412b6f9d4ea2', 'f3c9b270-7e2f-4c47-9c17-cc2c6cfa345d', 5, 'Absolutely loved it! Clean, cozy, and peaceful.'),
('efb42d72-2a09-41ac-b24f-47065de26d99', '73c05432-8129-45ae-b1c7-9ccaa0192e58', 'f3c9b270-7e2f-4c47-9c17-cc2c6cfa345d', 4, 'Great place, but a bit noisy at night.');

-- Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('30e7bde4-62f6-4904-b8b2-f7e27351916a', 'f3c9b270-7e2f-4c47-9c17-cc2c6cfa345d', 'a81b8f1e-02d7-4dc5-a11f-02a6d3a918c5', 'Hi, is the loft available for late check-in?'),
('52d3aa06-e1b9-4f55-bf4f-8c4b5c6a7bb0', 'a81b8f1e-02d7-4dc5-a11f-02a6d3a918c5', 'f3c9b270-7e2f-4c47-9c17-cc2c6cfa345d', 'Yes, that should be no problem.');
