SELECT 
    b.booking_id,
    b.booking_date,

    -- User Details
    u.user_id,
    u.username,
    u.email,

    -- Property Details
    p.property_id,
    p.property_name,
    p.location,

    -- Payment Details
    pay.payment_id,
    pay.amount,
    pay.payment_date

FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.user_id
JOIN 
    properties p ON b.property_id = p.property_id
LEFT JOIN 
    payments pay ON b.booking_id = pay.booking_id;
