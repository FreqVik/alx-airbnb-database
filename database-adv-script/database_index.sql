-- Users table indexes
CREATE INDEX idx_users_user_id ON users(user_id);
CREATE INDEX idx_users_username ON users(username);

-- Bookings table indexes
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_booking_id ON bookings(booking_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Properties table indexes
CREATE INDEX idx_properties_property_id ON properties(property_id);
CREATE INDEX idx_properties_property_name ON properties(property_name);
