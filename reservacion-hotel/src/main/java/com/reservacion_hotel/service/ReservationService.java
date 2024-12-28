package com.reservacion_hotel.service;

import com.reservacion_hotel.model.Reservation;
import com.reservacion_hotel.model.ReservationRequest;
import com.reservacion_hotel.repository.ReservationRepository;
import com.reservacion_hotel.repository.RoomInventoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class ReservationService {

    @Autowired
    private ReservationRepository reservationRepository;

    @Autowired
    private RoomInventoryRepository roomInventoryRepository;

    public Reservation createReservation(ReservationRequest request) {
        // Validate availability
        int availableRooms = roomInventoryRepository.getAvailableRooms(request.getRoomTypeId(), request.getCheckInDate(), request.getCheckOutDate());
        if (availableRooms <= 0) {
            throw new IllegalStateException("No rooms available for the selected dates.");
        }

        // Create and save reservation
        Reservation reservation = new Reservation();
        reservation.setHotelId(request.getHotelId());
        reservation.setRoomTypeId(request.getRoomTypeId());
        reservation.setCheckInDate(request.getCheckInDate());
        reservation.setCheckOutDate(request.getCheckOutDate());
        reservation.setStatus("CONFIRMED");
        reservation.setCreatedAt(LocalDateTime.now());

        return reservationRepository.save(reservation);
    }
}

