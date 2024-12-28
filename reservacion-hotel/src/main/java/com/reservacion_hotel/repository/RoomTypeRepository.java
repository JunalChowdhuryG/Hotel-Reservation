package com.reservacion_hotel.repository;

import com.reservacion_hotel.model.RoomType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Repository
public interface RoomTypeRepository extends JpaRepository<RoomType, UUID> {
    public List<RoomType> findByRoomTypeId(UUID roomTypeId);
    public List<RoomType> findByRoomTypeName(String roomTypeName);
    public List<RoomType> findByRoomTypeCode(String roomTypeCode);
    public List<RoomType> findAvailableRoomTypes(String location, int numBeds, int numGuests, LocalDate checkInDate,LocalDate checkOutDate);
}
