package com.aerienne.gestion.service.reservations;

import com.aerienne.gestion.model.reservations.Reservation;
import com.aerienne.gestion.repository.reservations.ReservationRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationService {

    private final ReservationRepository reservationRepository;

    public ReservationService(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    public List<Reservation> findAll() {
        return reservationRepository.findAll();
    }
}
