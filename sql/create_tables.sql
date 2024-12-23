-- Creación del esquema para un sistema de reservación de hoteles
\c test_db

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    user_id UUID PRIMARY KEY,
    user_type VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla: hotels
DROP TABLE IF EXISTS hotels;
CREATE TABLE hotels (
    hotel_id UUID PRIMARY KEY,
    manager_id UUID NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    address VARCHAR(200) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla: amenities
DROP TABLE IF EXISTS amenities;
CREATE TABLE amenities (
    amenity_id UUID PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Tabla intermedia: hotel_amenities
DROP TABLE IF EXISTS hotel_amenities;
CREATE TABLE hotel_amenities (
    amenity_id UUID REFERENCES amenities(amenity_id) ON DELETE CASCADE,
    hotel_id UUID REFERENCES hotels(hotel_id) ON DELETE CASCADE,
    PRIMARY KEY (amenity_id, hotel_id)
);

-- Tabla: room_types
DROP TABLE IF EXISTS room_types;
CREATE TABLE room_types (
    room_type_id UUID PRIMARY KEY,
    hotel_id UUID REFERENCES hotels(hotel_id) ON DELETE CASCADE,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    num_beds INTEGER NOT NULL,
    bed_type VARCHAR(50),
    max_occupancy INTEGER NOT NULL,
    base_price DECIMAL(10, 2) NOT NULL
);

-- Tabla intermedia: room_type_amenities
DROP TABLE IF EXISTS room_type_amenities;
CREATE TABLE room_type_amenities (
    amenity_id UUID REFERENCES amenities(amenity_id) ON DELETE CASCADE,
    room_type_id UUID REFERENCES room_types(room_type_id) ON DELETE CASCADE,
    PRIMARY KEY (amenity_id, room_type_id)
);

-- Tabla: room_inventory
DROP TABLE IF EXISTS room_inventory;
CREATE TABLE room_inventory (
    room_type_id UUID REFERENCES room_types(room_type_id) ON DELETE CASCADE,
    date DATE NOT NULL,
    available_rooms INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (room_type_id, date)
);

-- Tabla: room_pricing
DROP TABLE IF EXISTS room_pricing;
CREATE TABLE room_pricing (
    room_type_id UUID REFERENCES room_types(room_type_id) ON DELETE CASCADE,
    date DATE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (room_type_id, date)
);

-- Tabla: rooms
DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms (
    room_id UUID PRIMARY KEY,
    room_type_id UUID REFERENCES room_types(room_type_id) ON DELETE CASCADE,
    room_number VARCHAR(20) NOT NULL
);

-- Tabla: reservations
DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations (
    reservation_id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(user_id) ON DELETE CASCADE,
    hotel_id UUID REFERENCES hotels(hotel_id) ON DELETE CASCADE,
    room_type_id UUID REFERENCES room_types(room_type_id) ON DELETE CASCADE,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla: notifications
DROP TABLE IF EXISTS notifications;
CREATE TABLE notifications (
    notification_id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(user_id) ON DELETE CASCADE,
    reservation_id UUID REFERENCES reservations(reservation_id) ON DELETE CASCADE,
    message VARCHAR(255) NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
