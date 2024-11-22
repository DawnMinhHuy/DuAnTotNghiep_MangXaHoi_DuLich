package com.blogdulich.REST;

import java.net.URI;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import com.blogdulich.Service.ScheduleService;
import com.blogdulich.entity.Schedule;
import jakarta.validation.Valid;

@RestController
@RequestMapping("/REST/schedule")
@CrossOrigin(origins = "http://your-frontend-domain.com") // FIX 1: Restrict CORS
public class ScheduleREST {
    @Autowired
    private ScheduleService scheduleservice;

    @GetMapping
    public List<Schedule> getAllSchedules() {
        return scheduleservice.findAll();
    }

    @GetMapping("/{id}")
    public Schedule getScheduleById(@PathVariable("id") Long scheduleId) {
        // FIX 2: Handle the case where the schedule doesn't exist
        // Throw a ResponseStatusException with a 404 error if no schedule is found
        return scheduleservice.findById(scheduleId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Schedule not found"));
    }

    @PostMapping
    public ResponseEntity<Schedule> createSchedule(@Valid @RequestBody Schedule schedule) {
        // FIX 3: Added validation with @Valid to ensure the input data is correct
        Schedule createdSchedule = scheduleservice.save(schedule);

        // FIX 4: Return the location of the newly created resource
        // Use URI to include the URL of the created resource in the response
        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdSchedule.getScheduleId())
                .toUri();

        // Return 201 Created status with the resource location
        return ResponseEntity.created(location).body(createdSchedule);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteSchedule(@PathVariable("id") Long scheduleId) {
        // FIX 5: Explicitly return 204 No Content when deletion is successful
        scheduleservice.deleteById(scheduleId);
        return ResponseEntity.noContent().build();
    }
}
