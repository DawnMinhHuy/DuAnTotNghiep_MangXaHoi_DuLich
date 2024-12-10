package com.blogdulich.REST;


import com.blogdulich.entity.Travelers;
import com.blogdulich.Service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/REST/travellers")
public class TravellerREST {

    @Autowired
    private TravellerService travellerService;

    @GetMapping
    public List<Travelers> getAllTravellerss() {
        return travellerService.findAll();
    }

    @GetMapping("/{id}")
    public Travelers getTravellersById(@PathVariable("id") Integer id) {
        return travellerService.findById(id);
    }

    @PostMapping
    public Travelers createTravellers(@RequestBody Travelers travelers) {
        return travellerService.save(travelers);
    }
    
    @PutMapping("/{id}")
    public Travelers updateTravellersById(@PathVariable("id") String id, @RequestBody Travelers travelers) {
    	return travellerService.save(travelers);
    }

    @DeleteMapping("/{id}")
    public void deleteTravellers(@PathVariable("id") Integer id) {
    	travellerService.deleteById(id);
    }
}