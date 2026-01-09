package com.aerienne.gestion.repository.reservations;

import com.aerienne.gestion.model.reservations.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long> {

    //Optional<Reservation> findByPassager_IdPassagerAndPrixVol_IdPrixVol(
            //Long idPassager,
            //Long idPrixVol
    //);
}
