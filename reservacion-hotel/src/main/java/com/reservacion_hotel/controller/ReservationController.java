package com.reservacion_hotel.controller;

import com.reservacion_hotel.model.Reservation;
import com.reservacion_hotel.model.ReservationRequest;
import com.reservacion_hotel.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/reservations")
public class ReservationController {

    @Autowired
    private ReservationService reservationService;

    @PostMapping
    public ResponseEntity<Reservation> createReservation(@RequestBody ReservationRequest reservationRequest) {
        Reservation savedReservation = reservationService.createReservation(reservationRequest);
        return new ResponseEntity<>(savedReservation, HttpStatus.CREATED);
    }
}
