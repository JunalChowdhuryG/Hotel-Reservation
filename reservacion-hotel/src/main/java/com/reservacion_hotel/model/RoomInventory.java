package com.reservacion_hotel.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class RoomInventory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID roomInventoryId;
    private UUID roomTypeId;
    private LocalDate date;
    private int availableRooms;
    private LocalDateTime createdAt;
}

