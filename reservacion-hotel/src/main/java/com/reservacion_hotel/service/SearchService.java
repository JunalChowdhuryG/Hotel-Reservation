package com.reservacion_hotel.service;

import com.reservacion_hotel.model.RoomType;
import com.reservacion_hotel.model.SearchResult;
import com.reservacion_hotel.repository.HotelRepository;
import com.reservacion_hotel.repository.RoomInventoryRepository;
import com.reservacion_hotel.repository.RoomTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class SearchService {

    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private RoomTypeRepository roomTypeRepository;

    @Autowired
    private RoomInventoryRepository roomInventoryRepository;

    public List<SearchResult> search(String location, LocalDate checkInDate, LocalDate checkOutDate, int numGuests, int numBeds) {
        // Filter hotels and room types based on the parameters
        List<RoomType> roomTypes = roomTypeRepository.findAvailableRoomTypes(location, numBeds, numGuests, checkInDate, checkOutDate);

        return roomTypes.stream().map(roomType -> {
            int availableRooms = roomInventoryRepository.getAvailableRooms(roomType.getRoomTypeId(), checkInDate, checkOutDate);
            BigDecimal pricePerNight = roomType.getBasePrice();

            return new SearchResult(
                    roomType.getHotelId(),
                    roomType.getRoomTypeId(),
                    roomType.getName(),
                    roomType.getDescription(),
                    pricePerNight,
                    availableRooms
            );
        }).collect(Collectors.toList());
    }
}

