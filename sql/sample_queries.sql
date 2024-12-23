-- VISTAS

-- Vista de disponibilidad de habitaciones
CREATE OR REPLACE VIEW vw_room_availability AS
SELECT 
    h.name as hotel_name,
    rt.name as room_type,
    ri.date,
    ri.available_rooms,
    rp.price as current_price
FROM room_inventory ri
JOIN room_types rt ON ri.room_type_id = rt.room_type_id
JOIN hotels h ON rt.hotel_id = h.hotel_id
LEFT JOIN room_pricing rp ON ri.room_type_id = rp.room_type_id AND ri.date = rp.date
WHERE ri.date >= CURRENT_DATE;

-- Vista de ocupación actual
CREATE OR REPLACE VIEW vw_current_occupancy AS
SELECT 
    h.name as hotel_name,
    COUNT(DISTINCT r.reservation_id) as active_reservations,
    ROUND(COUNT(DISTINCT r.reservation_id)::DECIMAL / COUNT(DISTINCT rm.room_id) * 100, 2) as occupancy_rate
FROM hotels h
LEFT JOIN reservations r ON h.hotel_id = r.hotel_id 
    AND r.status = 'confirmed' 
    AND CURRENT_DATE BETWEEN r.check_in_date AND r.check_out_date
JOIN room_types rt ON h.hotel_id = rt.hotel_id
JOIN rooms rm ON rt.room_type_id = rm.room_type_id
GROUP BY h.hotel_id, h.name;

-- Vista de ingresos por hotel
CREATE OR REPLACE VIEW vw_hotel_revenue AS
SELECT 
    h.name as hotel_name,
    DATE_TRUNC('month', r.check_in_date) as month,
    COUNT(r.reservation_id) as total_reservations,
    SUM(r.total_price) as total_revenue
FROM hotels h
LEFT JOIN reservations r ON h.hotel_id = r.hotel_id
WHERE r.status = 'confirmed'
GROUP BY h.hotel_id, h.name, DATE_TRUNC('month', r.check_in_date);

-- CONSULTAS ÚTILES

-- Reporte de reservas por cliente
/*
SELECT 
    u.name as client_name,
    COUNT(r.reservation_id) as total_reservations,
    SUM(r.total_price) as total_spent,
    MAX(r.check_in_date) as last_stay
FROM users u
LEFT JOIN reservations r ON u.user_id = r.user_id
WHERE u.user_type = 'customer'
GROUP BY u.user_id, u.name
ORDER BY total_spent DESC;
*/

-- Análisis de ocupación por temporada
/*
SELECT 
    h.name as hotel_name,
    EXTRACT(MONTH FROM r.check_in_date) as month,
    COUNT(r.reservation_id) as bookings,
    ROUND(AVG(r.total_price), 2) as avg_booking_price
FROM hotels h
LEFT JOIN reservations r ON h.hotel_id = r.hotel_id
WHERE r.status = 'confirmed'
    AND EXTRACT(YEAR FROM r.check_in_date) = EXTRACT(YEAR FROM CURRENT_DATE)
GROUP BY h.name, EXTRACT(MONTH FROM r.check_in_date)
ORDER BY h.name, month;
*/

-- Índice de cancelaciones
/*
CREATE OR REPLACE VIEW vw_cancellation_rate AS
SELECT 
    h.name as hotel_name,
    COUNT(CASE WHEN r.status = 'cancelled' THEN 1 END) as cancelled_bookings,
    COUNT(*) as total_bookings,
    ROUND(COUNT(CASE WHEN r.status = 'cancelled' THEN 1 END)::DECIMAL / COUNT(*) * 100, 2) as cancellation_rate
FROM hotels h
LEFT JOIN reservations r ON h.hotel_id = r.hotel_id
GROUP BY h.name;
*/

-- Notificaciones pendientes por usuario
/*
CREATE OR REPLACE VIEW vw_pending_notifications AS
SELECT 
    u.name as user_name,
    n.message,
    n.created_at,
    r.check_in_date
FROM notifications n
JOIN users u ON n.user_id = u.user_id
LEFT JOIN reservations r ON n.reservation_id = r.reservation_id
WHERE n.is_read = FALSE
ORDER BY n.created_at DESC;
*/

-- Índices recomendados para optimizar las consultas
CREATE INDEX idx_reservations_dates ON reservations(check_in_date, check_out_date);
CREATE INDEX idx_reservations_status ON reservations(status);
CREATE INDEX idx_room_inventory_date ON room_inventory(date);
CREATE INDEX idx_notifications_is_read ON notifications(is_read);