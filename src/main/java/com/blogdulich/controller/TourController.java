package com.blogdulich.controller;

import com.blogdulich.entity.Tour;
import com.blogdulich.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class TourController {

    @Autowired
    private TourService tourService;

    @GetMapping("/tours")
    public String listTours(Model model) {
        List<Tour> tours = tourService.getAllTours();
        model.addAttribute("tours", tours);
        return "Tour/list"; 
    }
}