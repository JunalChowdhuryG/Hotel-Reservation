-- Insert users
INSERT INTO users (user_id, user_type, name, email, created_at) VALUES
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'manager', 'John Smith', 'john.smith@grandhotel.com', '2024-01-01 10:00:00'),
    ('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'manager', 'Ana López', 'ana.lopez@seasideresort.com', '2024-01-02 11:30:00'),
    ('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'manager', 'Michel Dubois', 'michel.dubois@mountainlodge.com', '2024-01-03 09:15:00'),
    ('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'customer', 'Maria Garcia', 'maria.garcia@email.com', '2024-01-04 14:20:00'),
    ('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'customer', 'Robert Johnson', 'robert.j@email.com', '2024-01-05 16:45:00'),
    ('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'customer', 'Emma Wilson', 'emma.w@email.com', '2024-01-06 12:30:00'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'customer', 'Carlos Ruiz', 'carlos.r@email.com', '2024-01-07 10:15:00'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'customer', 'Sophie Martin', 'sophie.m@email.com', '2024-01-08 09:20:00'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'customer', 'David Chen', 'david.c@email.com', '2024-01-09 11:40:00'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 'customer', 'Linda Kim', 'linda.k@email.com', '2024-01-10 13:50:00');

-- Insert hotels
INSERT INTO hotels (hotel_id, manager_id, name, description, address, created_at) VALUES
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Grand Hotel Plaza', 'Luxury hotel in city center', 'Calle Principal 123, Madrid', '2024-01-01 12:00:00'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Seaside Resort & Spa', 'Beachfront resort with full spa services', 'Playa Dorada 456, Barcelona', '2024-01-02 14:30:00'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Mountain Lodge', 'Scenic mountain retreat', 'Sierra Nevada 789, Granada', '2024-01-03 16:45:00');

-- Insert amenities
INSERT INTO amenities (amenity_id, name, description) VALUES
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'WiFi', 'High-speed wireless internet'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'Pool', 'Outdoor swimming pool'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'Gym', '24/7 fitness center'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 'Spa', 'Full-service spa'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 'Restaurant', 'Fine dining restaurant'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', 'Bar', 'Cocktail bar and lounge'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a30', 'Room Service', '24-hour room service'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 'Parking', 'Underground parking'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 'Business Center', 'Full-service business center'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 'Conference Rooms', 'Meeting facilities'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a34', 'Beach Access', 'Private beach access'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a35', 'Ski Storage', 'Ski equipment storage'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a36', 'Kids Club', 'Supervised children activities');

-- Link amenities to hotels (5 per hotel)
INSERT INTO hotel_amenities (hotel_id, amenity_id) VALUES
    -- Grand Hotel Plaza amenities
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a26'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a28'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a30'),
    -- Seaside Resort amenities
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a27'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a34'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a36'),
    -- Mountain Lodge amenities
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a28'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a29'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a31'),
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a35');

-- Insert room types for each hotel
INSERT INTO room_types (room_type_id, hotel_id, name, description, num_beds, bed_type, max_occupancy, base_price) VALUES
    -- Grand Hotel Plaza room types
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a37', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'Standard', 'Comfortable standard room', 1, 'Queen', 2, 100.00),
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a38', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'Deluxe', 'Spacious deluxe room', 2, 'Queen', 4, 180.00),
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a39', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'Suite', 'Luxury suite', 1, 'King', 2, 300.00),
    -- Seaside Resort room types
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a40', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'Garden View', 'Room with garden views', 1, 'Queen', 2, 120.00),
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a41', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'Ocean View', 'Room with ocean views', 2, 'Queen', 4, 200.00),
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a42', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'Beach Suite', 'Luxury beachfront suite', 1, 'King', 2, 350.00),
    -- Mountain Lodge room types
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a43', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'Mountain View', 'Room with mountain views', 1, 'Queen', 2, 150.00),
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a44', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'Family Room', 'Spacious family room', 2, 'Queen', 4, 250.00),
    ('ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a45', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'Luxury Cabin', 'Private mountain cabin', 2, 'King', 4, 400.00);

-- Insert rooms (10 per hotel)
INSERT INTO rooms (room_id, room_type_id, room_number) VALUES
    -- Grand Hotel Plaza rooms
    ('ba0ebc99-9c0b-4ef8-bb6d-6bb9bd380a46', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a37', '101'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a47', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a37', '102'),
    ('bc0ebc99-9c0b-4ef8-bb6d-6bb9bd380a48', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a37', '103'),
    ('bd0ebc99-9c0b-4ef8-bb6d-6bb9bd380a49', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a38', '201'),
    ('be0ebc99-9c0b-4ef8-bb6d-6bb9bd380a50', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a38', '202'),
    ('bf0ebc99-9c0b-4ef8-bb6d-6bb9bd380a51', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a38', '203'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a52', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a39', '301'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a53', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a39', '302'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a54', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a39', '303'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a55', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a39', '304'),
    -- Seaside Resort rooms
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a56', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a40', '101'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a57', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a40', '102'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a58', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a40', '103'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a59', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a41', '201'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a60', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a41', '202'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a61', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a41', '203'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a62', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a42', '301'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a63', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a42', '302'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a64', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a42', '303'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a65', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a42', '304'),
    -- Mountain Lodge rooms
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a66', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a43', '101'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a67', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a43', '102'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a68', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a43', '103'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a69', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a44', '201'),
    ('bb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a70', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a44', '202'),
    ('ca0ebc99-9c0b-4ef8-bb6d-6bb9bd380a71', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a44', '203'),
    ('cb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a72', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a45', '301'),
    ('cc0ebc99-9c0b-4ef8-bb6d-6bb9bd380a73', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a45', '302'),
    ('cd0ebc99-9c0b-4ef8-bb6d-6bb9bd380a74', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a45', '303');

-- Insert reservations
INSERT INTO reservations (reservation_id, user_id, hotel_id, room_type_id, check_in_date, check_out_date, total_price, status, created_at) VALUES
    ('da0ebc99-9c0b-4ef8-bb6d-6bb9bd380a75', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a37', '2024-12-23', '2024-12-25', 240.00, 'confirmed', '2024-12-20 15:30:00'),
    ('db0ebc99-9c0b-4ef8-bb6d-6bb9bd380a76', 'e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a41', '2024-12-24', '2024-12-26', 480.00, 'confirmed', '2024-12-20 16:45:00'),
    ('dc0ebc99-9c0b-4ef8-bb6d-6bb9bd380a77', 'f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a45', '2024-12-24', '2024-12-27', 1200.00, 'pending', '2024-12-21 09:15:00'),
    ('dd0ebc99-9c0b-4ef8-bb6d-6bb9bd380a78', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a39', '2024-12-25', '2024-12-28', 900.00, 'confirmed', '2024-12-21 10:30:00'),
    ('de0ebc99-9c0b-4ef8-bb6d-6bb9bd380a79', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a42', '2024-12-26', '2024-12-29', 1050.00, 'confirmed', '2024-12-22 11:20:00'),
    ('df0ebc99-9c0b-4ef8-bb6d-6bb9bd380a80', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'ab0ebc99-9c0b-4ef8-bb6d-6bb9bd380a43', '2024-12-27', '2024-12-30', 450.00, 'pending', '2024-12-22 14:45:00');

-- Insert notifications
INSERT INTO notifications (notification_id, user_id, reservation_id, message, is_read, created_at) VALUES
    ('ea0ebc99-9c0b-4ef8-bb6d-6bb9bd380a81', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'da0ebc99-9c0b-4ef8-bb6d-6bb9bd380a75', 'Su reserva ha sido confirmada', FALSE, '2024-12-20 15:31:00'),
    ('eb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a82', 'e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'db0ebc99-9c0b-4ef8-bb6d-6bb9bd380a76', 'Confirmación de reserva exitosa', FALSE, '2024-12-20 16:46:00'),
    ('ec0ebc99-9c0b-4ef8-bb6d-6bb9bd380a83', 'f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'dc0ebc99-9c0b-4ef8-bb6d-6bb9bd380a77', 'Por favor complete el pago', FALSE, '2024-12-21 09:16:00'),
    ('ed0ebc99-9c0b-4ef8-bb6d-6bb9bd380a84', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'dd0ebc99-9c0b-4ef8-bb6d-6bb9bd380a78', 'Reserva confirmada - ¡Bienvenido!', FALSE, '2024-12-21 10:31:00'),
    ('ee0ebc99-9c0b-4ef8-bb6d-6bb9bd380a85', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'de0ebc99-9c0b-4ef8-bb6d-6bb9bd380a79', 'Preparando su habitación para su llegada', FALSE, '2024-12-22 11:21:00'),
    ('ef0ebc99-9c0b-4ef8-bb6d-6bb9bd380a86', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'df0ebc99-9c0b-4ef8-bb6d-6bb9bd380a80', 'Pago pendiente para confirmar reserva', FALSE, '2024-12-22 14:46:00'),
    ('eb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a87', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'da0ebc99-9c0b-4ef8-bb6d-6bb9bd380a75', 'Su check-in está programado para mañana', FALSE, '2024-12-22 10:00:00'),
    ('eb0ebc99-9c0b-4ef8-bb6d-6bb9bd380a88', 'e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'db0ebc99-9c0b-4ef8-bb6d-6bb9bd380a76', 'Recordatorio de check-in mañana', FALSE, '2024-12-23 09:00:00');