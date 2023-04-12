package nlu.edu.vn.tour.services;

import lombok.extern.log4j.Log4j2;
import nlu.edu.vn.tour.models.Tour;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
@Log4j2
public class TourService {
    private static final TourService instance = new TourService();
    private Map<Long, Tour> tourMap;

    public TourService() {
        init();
    }

    private void init() {

        tourMap = new HashMap<>();


        Tour tour1 = new Tour(1,"Phu quoc", "Tham quan", "1 ngày 2 đêm", "Máy bay", "Hằng ngày", 1500000);
        Tour tour2 = new Tour(2,"Nha trang", "Tam bien", "2 ngày 1 đêm", "Xe khách", "Tối thứ 6 và CN", 1200000);
        tourMap.put(tour1.getId(), tour1);
        tourMap.put(tour2.getId(), tour2);



    }

    public Collection<Tour> getTours() {
        return tourMap.values();
    }



    public static TourService getInstance(){
        return instance;
    }

    public Tour getTourById(Long id) {
        log.error(tourMap.get(id));
        return tourMap.get(id);
    }
}
