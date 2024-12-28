package com.reservacion_hotel.service;

import com.reservacion_hotel.model.Hotel;
import com.reservacion_hotel.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class HotelService {

    @Autowired
    private HotelRepository hotelRepository;

    public Hotel addHotel(Hotel hotel) {
        hotel.setCreatedAt(LocalDateTime.now());
        return hotelRepository.save(hotel);
    }
}
