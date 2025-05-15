-- Inner join query to retrieve all bookings and their respective customers
-- assuming we have two tables: bookings and users
SELECT b.booking_id, b.booking_data, u.users
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id

-- Left join query to retrieve all properties and their reviews
-- assuming we have two tables: properties and reviews
SELECT p.property_id, p.property_name, r.review_text
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id

-- Write a query using a FULL OUTER JOIN to retrieve all users and all bookings
-- even if the user has no booking or a booking is not linked to a user

SELECT u.user_id, u.username, b.booking_id, b.booking_data
FROM users u
FULL OUTER JOIN bookings b ON u.user_id = b.user_id
WHERE u.user_id IS NOT NULL OR b.booking_id IS NOT NULL