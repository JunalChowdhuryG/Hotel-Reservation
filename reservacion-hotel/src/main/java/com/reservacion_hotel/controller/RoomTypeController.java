package com.reservacion_hotel.controller;

import com.reservacion_hotel.model.RoomType;
import com.reservacion_hotel.service.RoomTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api")
public class RoomTypeController {

    @Autowired
    private RoomTypeService roomTypeService;

    @PostMapping("/{hotel_id}/room-types")
    public ResponseEntity<RoomType> addRoomType(
            @PathVariable("hotel_id") UUID hotelId,
            @RequestBody RoomType roomType) {
        RoomType savedRoomType = roomTypeService.addRoomType(hotelId, roomType);
        return new ResponseEntity<>(savedRoomType, HttpStatus.CREATED);
    }
}
