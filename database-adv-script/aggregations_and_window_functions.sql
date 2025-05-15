-- Query to find the total number of bookings made by each user
SELECT 
    u.user_id, 
    u.username, 
    COUNT(b.booking_id) AS total_bookings
FROM 
    users u
JOIN 
    bookings b ON u.user_id = b.user_id
GROUP BY 
    u.user_id, u.username
ORDER BY 
    total_bookings DESC;

-- Use a window function (RANK) to rank properties based on total bookings
SELECT 
    property_id, 
    property_name, 
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank
FROM (
    SELECT 
        p.property_id, 
        p.property_name, 
        COUNT(b.booking_id) AS total_bookings
    FROM 
        properties p
    LEFT JOIN 
        bookings b ON p.property_id = b.property_id
    GROUP BY 
        p.property_id, p.property_name
) AS property_bookings;

-- Use a window function (ROW_NUMBER) to assign a unique row number to properties by bookings
SELECT 
    property_id, 
    property_name, 
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number
FROM (
    SELECT 
        p.property_id, 
        p.property_name, 
        COUNT(b.booking_id) AS total_bookings
    FROM 
        properties p
    LEFT JOIN 
        bookings b ON p.property_id = b.property_id
    GROUP BY 
        p.property_id, p.property_name
) AS property_bookings;
