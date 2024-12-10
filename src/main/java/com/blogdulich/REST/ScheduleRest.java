package com.blogdulich.REST;


import com.blogdulich.entity.Schedule;
import com.blogdulich.entity.Travelers;
import com.blogdulich.Service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Schedules;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/REST/schedule")
public class ScheduleRest {

    @Autowired
    private ScheduleService scheduleService ;

    @GetMapping
    public List<Schedule> getAllschedule() {
        return scheduleService.findAll();
    }

    @GetMapping("/{id}")
    public Schedule getscheduleById(@PathVariable("id") Integer id) {
        return scheduleService.findById(id);
    }

    @PostMapping
    public Schedule createschedule(@RequestBody Schedule schedule) {
        return scheduleService.save(schedule);
    }
    
    @PutMapping("/{id}")
    public Schedule updatescheduleById(@PathVariable("id") String id, @RequestBody Schedule schedule) {
    	return scheduleService.save(schedule);
    }

    @DeleteMapping("/{id}")
    public void deleteschedule(@PathVariable("id") Integer id) {
    	scheduleService.deleteById(id);
    }
}