package nlu.edu.vn.tour.controllers;

import nlu.edu.vn.tour.models.Booking;
import nlu.edu.vn.tour.models.Customer;
import nlu.edu.vn.tour.models.Tour;
import nlu.edu.vn.tour.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
public class BookTourController {
    @Autowired
    private TourService tourService;
    private List<Booking> bookings = new ArrayList<>();

    @GetMapping("/book-tour")
    public String bookTour(@RequestParam("id") Long id, Model model) {
        Tour tour = tourService.getTourById(id);
        model.addAttribute("tour", tour);
        return "bookingTour";
    }
    @PostMapping("/book-tour")
    public String saveBooking(@RequestParam("tourId") Long tourId,
                              @RequestParam("fullName") String fullName,
                              @RequestParam("address") String address,
                              @RequestParam("email") String email,
                              @RequestParam("phone") String phone,
                              @RequestParam("departureDate") String departureDate,
                              @RequestParam("noAdults") Integer noAdults,
                              @RequestParam("noChildren") Integer noChildren, HttpSession session) {


        Customer customer = new Customer();
        customer.setName(fullName);
        customer.setAddress(address);
        customer.setEmail(email);
        customer.setPhone(phone);

        Booking booking = new Booking();
        booking.setCustomer(customer);
        booking.setDepartureDate(departureDate);
        booking.setNoAdults(noAdults);
        booking.setNoChildren(noChildren);


        Tour tour = tourService.getTourById(tourId);
        booking.setTour(tour);


        session.setAttribute("booking", booking);

        return "redirect:/booking-success";
    }

    @GetMapping("/booking-success")
    public String bookingSuccess(Model model, HttpSession session) {
        Booking booking = (Booking) session.getAttribute("booking");
        if (booking == null) {
            return "redirect:/";
        }

        model.addAttribute("booking", booking);
        return "bookingSuccess";
    }

}
