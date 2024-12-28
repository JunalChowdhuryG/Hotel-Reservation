package com.reservacion_hotel.model;

import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.UUID;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SearchResult {
    private UUID hotelId;
    private UUID roomTypeId;
    private String hotelName;
    private String roomTypeName;
    private BigDecimal pricePerNight;
    private int availableRooms;
}

