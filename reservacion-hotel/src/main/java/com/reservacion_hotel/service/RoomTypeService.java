package com.reservacion_hotel.service;

import com.reservacion_hotel.model.Hotel;
import com.reservacion_hotel.model.RoomType;
import com.reservacion_hotel.repository.HotelRepository;
import com.reservacion_hotel.repository.RoomTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.UUID;

@Service
public class RoomTypeService {

    @Autowired
    private RoomTypeRepository roomTypeRepository;

    @Autowired
    private HotelRepository hotelRepository;

    public RoomType addRoomType(UUID hotelId, RoomType roomType) {
        Optional<Hotel> hotel = hotelRepository.findById(hotelId);
        if (hotel.isEmpty()) {
            //throw new ResourceNotFoundException("Hotel not found with ID: " + hotelId);
        }
        roomType.setHotelId(hotelId);
        roomType.setCreatedAt(LocalDateTime.now());
        return roomTypeRepository.save(roomType);
    }
}

