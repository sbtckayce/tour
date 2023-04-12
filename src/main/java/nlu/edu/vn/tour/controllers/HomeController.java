package nlu.edu.vn.tour.controllers;

import nlu.edu.vn.tour.models.Tour;
import nlu.edu.vn.tour.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

@Controller
public class HomeController {
    @Autowired
    private TourService tourService;

    @GetMapping("/")
    public String index(HttpServletRequest request){
        Collection<Tour> tours = tourService.getTours();
        request.setAttribute("tours", tours);
        return "listTours";
    }
}
