package com.aerienne.gestion.model.reservations;

import com.aerienne.gestion.model.passagers.Passager;
import com.aerienne.gestion.model.prix.PrixVol;
import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "reservation")
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idReservation;

    @ManyToOne
    @JoinColumn(name = "id_passager", nullable = false)
    private Passager passager;

    @ManyToOne
    @JoinColumn(name = "id_prix_vol", nullable = false)
    private PrixVol prixVol;

    private LocalDateTime dateReservation;
    private String siege;
    private String statut;

    public Long getIdReservation() {
        return idReservation;
    }

    public Passager getPassager() {
        return passager;
    }

    public LocalDateTime getDateReservation() {
        return dateReservation;
    }

    public String getStatut() {
        return statut;
    }

    public String getSiege() {
        return siege;
    }
}