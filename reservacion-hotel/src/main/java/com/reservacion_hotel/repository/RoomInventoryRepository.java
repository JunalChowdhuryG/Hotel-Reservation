package com.reservacion_hotel.repository;

import com.reservacion_hotel.model.RoomInventory;
import com.reservacion_hotel.model.RoomType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Repository
public interface RoomInventoryRepository extends JpaRepository<RoomInventory, UUID> {

    @Query("SELECT SUM(ri.availableRooms) FROM RoomInventory ri WHERE ri.roomTypeId = :roomTypeId AND ri.date BETWEEN :startDate AND :endDate")
    int getAvailableRooms(UUID roomTypeId, LocalDate startDate, LocalDate endDate);

    @Query("SELECT rt FROM RoomType rt JOIN Hotel h ON rt.hotelId = h.hotelId WHERE h.address LIKE %:location% AND rt.numBeds >= :numBeds AND rt.maxOccupancy >= :numGuests")
    List<RoomType> findAvailableRoomTypes(String location, int numBeds, int numGuests, LocalDate startDate, LocalDate endDate);
}

