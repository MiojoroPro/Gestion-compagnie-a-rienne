INSERT INTO Aeroport (nom, ville, pays, code_iata, code_icao) VALUES
('Ivato International Airport', 'Antananarivo', 'Madagascar', 'TNR', 'FMMI'),
('Fascene Airport', 'Nosy Be', 'Madagascar', 'NOS', 'FMNN'),
('Charles de Gaulle', 'Paris', 'France', 'CDG', 'LFPG'),
('Frankfurt Airport', 'Frankfurt', 'Germany', 'FRA', 'EDDF'),
('Dubai International Airport', 'Dubai', 'UAE', 'DXB', 'OMDB');

INSERT INTO Vol (
    id_avion,
    id_aeroport_depart,
    id_aeroport_arrivee,
    date_depart,
    date_arrivee,
    statut
) VALUES
-- Madagascar
(1, 1, 2, '2026-01-15 08:00', '2026-01-15 09:00', 'prévu'),

-- International
(2, 3, 1, '2026-01-20 22:00', '2026-01-21 08:00', 'prévu'),
(3, 4, 3, '2026-01-18 14:00', '2026-01-18 16:00', 'prévu'),
(4, 5, 4, '2026-01-25 09:00', '2026-01-25 13:00', 'prévu');

INSERT INTO PrixVol (id_vol, id_compagnie, classe, prix) VALUES
-- Vol TNR → NOS
(5, 1, 'Economique', 250000),
(5, 1, 'Business', 400000),

-- Paris → Tana
(6, 1, 'Economique', 1800000),
(6, 1, 'Business', 3000000),

-- Frankfurt → Paris
(7, 2, 'Economique', 900000),
(7, 2, 'Business', 1500000),

-- Dubai → Frankfurt
(8, 3, 'Economique', 2000000),
(8, 3, 'Business', 3500000);


INSERT INTO Passager (nom, prenom, date_naissance, email) VALUES
('Rakoto', 'Jean', '1995-06-12', 'jean.rakoto@email.com'),
('Rabe', 'Claire', '1998-02-23', 'claire.rabe@email.com'),
('Dupont', 'Marc', '1985-11-02', 'marc.dupont@email.com'),
('Muller', 'Anna', '1990-04-17', 'anna.muller@email.com');

INSERT INTO Reservation (
    id_passager,
    id_prix_vol,
    date_reservation,
    siege,
    statut
) VALUES
(1, 9, '2026-01-10 10:30', '12A', 'confirmée'),
(2, 10, '2026-01-11 14:00', '02B', 'confirmée'),
(3, 11, '2026-01-09 09:15', '18C', 'en attente'),
(4, 12, '2026-01-12 16:45', '05A', 'confirmée');
