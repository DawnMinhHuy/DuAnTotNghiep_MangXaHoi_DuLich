package com.blogdulich.REST;

import com.blogdulich.entity.Places;

import com.blogdulich.Service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/REST/places")
public class PlacesREST {

    @Autowired
    private PlacesService placesService;

    @GetMapping
    public List<Places> getAllPlaces() {
        return placesService.findAll();
    }

    @GetMapping("/{id}")
    public Places getPlacesById(@PathVariable("id") Integer id) {
        return placesService.findById(id);
    }

    @PostMapping
    public Places createPlaces(@RequestBody Places places) {
        return placesService.save(places);
    }
    
    @PutMapping("/{id}")
    public Places updatePlacesById(@PathVariable("id") Integer id, @RequestBody Places places) {
    	return placesService.save(places);
    }

    @DeleteMapping("/{id}")
    public void deletePlaces(@PathVariable("id") Integer id) {
    	placesService.deleteById(id);
    }
}