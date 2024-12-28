package com.reservacion_hotel.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class HotelAmenity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID hotelAmenityId;

    private UUID hotelId;
    private UUID amenityId;
}
