package nlu.edu.vn.tour.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.Date;


public class Booking {
    private long id;
    Customer customer;
    private String departureDate; //ngày khỏi hành
    private int noAdults;
    private int noChildren;
    private Tour tour;

    public Booking() {
    }

    public Booking(long id, Customer customer, String departureDate, int noAdults, int noChildren, Tour tour) {
        this.id = id;
        this.customer = customer;
        this.departureDate = departureDate;
        this.noAdults = noAdults;
        this.noChildren = noChildren;
        this.tour = tour;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    public int getNoAdults() {
        return noAdults;
    }

    public void setNoAdults(int noAdults) {
        this.noAdults = noAdults;
    }

    public int getNoChildren() {
        return noChildren;
    }

    public void setNoChildren(int noChildren) {
        this.noChildren = noChildren;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }
}
