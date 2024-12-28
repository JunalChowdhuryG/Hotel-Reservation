package com.reservacion_hotel.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class RoomType {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID roomTypeId;
    private UUID hotelId;
    private String name;
    private String description;
    private int numBeds;
    private String bedType;
    private int maxOccupancy;
    private BigDecimal basePrice;
    private LocalDateTime createdAt;
}

