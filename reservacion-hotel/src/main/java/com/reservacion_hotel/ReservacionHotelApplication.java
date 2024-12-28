package com.reservacion_hotel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ReservacionHotelApplication {

	public static void main(String[] args) {
		SpringApplication.run(ReservacionHotelApplication.class, args);
		System.out.println("Spring Boot funciona en Docker");
	}

}
