package com.reservacion_hotel.repository;

import com.reservacion_hotel.model.Hotel;
import com.reservacion_hotel.model.Notification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, UUID> {
}
