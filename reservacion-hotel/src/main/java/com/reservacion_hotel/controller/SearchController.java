package com.reservacion_hotel.controller;

import com.reservacion_hotel.model.SearchResult;
import com.reservacion_hotel.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class SearchController {

    @Autowired
    private SearchService searchService;

    @GetMapping("/search")
    public ResponseEntity<List<SearchResult>> searchHotels(
            @RequestParam("location") String location,
            @RequestParam("check_in_date") LocalDate checkInDate,
            @RequestParam("check_out_date") LocalDate checkOutDate,
            @RequestParam("num_guests") int numGuests,
            @RequestParam("num_beds") int numBeds) {

        List<SearchResult> results = searchService.search(location, checkInDate, checkOutDate, numGuests, numBeds);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
}
