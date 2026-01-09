package com.aerienne.gestion.controller.reservations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.aerienne.gestion.model.compagnies.Compagnie;
import com.aerienne.gestion.model.reservations.Reservation;
import com.aerienne.gestion.service.reservations.ReservationService;

import java.util.List;


@Controller
public class ReservationController {
    @Autowired
    private ReservationService reservationService;


    @GetMapping("/reservations")
    public String listReservations(Model model) {
        List<Reservation> reservations = reservationService.findAll();
        model.addAttribute("reservations", reservations);
        return "views/reservation/ListeReservation";
    }


    @GetMapping("/demande/reservation")
    public String demandeReservation(Model model){
        return "views/reservation/Reservation";
    }

}
