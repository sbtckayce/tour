package nlu.edu.vn.tour.controllers;

import nlu.edu.vn.tour.models.Tour;
import nlu.edu.vn.tour.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class    TourDetailController {
    @Autowired
    private TourService tourService;

    @GetMapping("/tour-detail")
    public String showTourDetail(@RequestParam("id") Long id, Model model) {
        Tour tour = tourService.getTourById(id);
        model.addAttribute("tour", tour);
        return "tourDetails";
    }
}
