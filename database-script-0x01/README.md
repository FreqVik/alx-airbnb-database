# Airbnb Database Schema

This project defines the SQL schema for an Airbnb-style booking platform using **MySQL syntax** and normalized to **3rd Normal Form (3NF)**.

## 📐 Tables

### 1. `users`
Stores account information for guests, hosts, and admins.
- Uses `UUID` as primary key
- Enforces email uniqueness
- Includes an indexed email column for fast lookups

### 2. `properties`
Represents listings created by hosts.
- Foreign key: `host_id → users(user_id)`
- Includes indexing on `property_id`

### 3. `bookings`
Tracks reservation details by guests for specific properties.
- Foreign keys:
  - `user_id → users(user_id)`
  - `property_id → properties(property_id)`
- Includes indexes on `user_id` and `property_id`

### 4. `payments`
Records payments made for bookings.
- Foreign key: `booking_id → bookings(booking_id)`
- Includes ENUM for `payment_method` (e.g., credit_card, paypal)

### 5. `reviews`
Stores user feedback for properties.
- Foreign keys:
  - `property_id → properties(property_id)`
  - `user_id → users(user_id)`
- Rating is an integer between 1 and 5

### 6. `messages`
Handles communication between users.
- Foreign keys:
  - `sender_id → users(user_id)`
  - `recipient_id → users(user_id)`

## ✅ Constraints
- All necessary `NOT NULL`, `UNIQUE`, and `CHECK` constraints applied.
- All foreign keys enforce referential integrity.
- Proper indexing for query performance.

## ⚙️ Usage

```bash
mysql -u your_user -p your_database < schema.sql
