
---

### 🧪 `README-SAMPLE-DATA.md`

```markdown
# Airbnb Sample Data

This file provides example data to populate the Airbnb-style database schema. All UUIDs are realistic and consistent with the schema’s format.

## 👤 Users
3 users:
- Alice (guest)
- Bob (host)
- Charlie (admin)

## 🏠 Properties
2 properties created by Bob:
- Cozy Cottage in Asheville
- Modern Loft in NYC

## 📆 Bookings
2 bookings by Alice:
- One confirmed, one pending
- Covers different properties and date ranges

## 💳 Payments
Each booking has a payment:
- One paid with credit card
- One paid with PayPal

## ✍️ Reviews
2 reviews submitted by Alice for both properties:
- Star ratings and relevant comments included

## 💬 Messages
Example conversation between Alice and Bob:
- Alice inquires about late check-in
- Bob confirms availability

## 🚀 Usage

To load the data:

```bash
mysql -u your_user -p your_database < sample_data.sql
