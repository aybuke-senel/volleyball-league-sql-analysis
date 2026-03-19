-- =========================
-- SAMPLE DATA INSERTS
-- =========================

-- TEAMS
INSERT INTO teams (team_name, city, coach, sponsor) VALUES
('Fenerbahçe', 'Istanbul', 'Stefano Lavarini', 'Opet'),
('Vakıfbank', 'Istanbul', 'Giovanni Guidetti', 'Vakifbank'),
('Eczacıbaşı', 'Istanbul', 'Ferhat Akbas', 'Eczacibasi'),
('Galatasaray', 'Istanbul', 'Ataman Guneyligil', 'NEF'),
('THY', 'Istanbul', 'Marcello Abbondanza', 'Turkish Airlines'),
('Nilüfer Belediye', 'Bursa', 'Mustafa Cengiz', 'Nilufer Belediyesi'),
('Aydın BBSK', 'Aydın', 'Alper Hamurcu', 'Aydin Belediyesi'),
('Kuzeyboru', 'Aksaray', 'Mehmet Bedestenlioglu', 'Kuzeyboru');

-- PLAYERS
INSERT INTO players (player_name, position, date_of_birth, nationality, team_id) VALUES
('Eda Erdem', 'Middle Blocker', '1987-06-22', 'Turkey', 1),
('Arina Fedorovtseva', 'Outside Hitter', '2004-01-19', 'Russia', 1),
('Melissa Vargas', 'Opposite', '1999-10-16', 'Turkey', 1),
('Gabi Guimaraes', 'Outside Hitter', '1994-05-19', 'Brazil', 2),
('Paola Egonu', 'Opposite', '1998-12-18', 'Italy', 2),
('Tijana Boskovic', 'Opposite', '1997-03-08', 'Serbia', 3),
('Hande Baladin', 'Outside Hitter', '1997-09-01', 'Turkey', 3),
('Ilkin Aydin', 'Outside Hitter', '2000-12-05', 'Turkey', 4),
('Meryem Boz', 'Opposite', '1988-02-03', 'Turkey', 5),
('Buse Unal', 'Setter', '1997-04-25', 'Turkey', 6);

-- MATCHES
INSERT INTO matches (home_team_id, away_team_id, match_date, home_team_sets, away_team_sets, venue) VALUES
(1, 2, '2024-01-10', 3, 2, 'Istanbul'),
(3, 1, '2024-01-12', 1, 3, 'Istanbul'),
(2, 3, '2024-01-15', 3, 1, 'Istanbul'),
(4, 5, '2024-01-18', 2, 3, 'Istanbul'),
(6, 7, '2024-01-20', 3, 0, 'Bursa');

-- MATCH DETAILS
INSERT INTO match_details (match_id, player_id, set_count, spike_count, block_count, ace_count) VALUES
(1, 1, 5, 12, 3, 1),
(1, 2, 5, 18, 2, 2),
(1, 4, 5, 20, 1, 3),
(2, 1, 4, 10, 4, 1),
(2, 3, 4, 22, 2, 3),
(3, 4, 4, 25, 2, 4),
(3, 6, 4, 28, 3, 2),
(4, 8, 5, 15, 1, 1),
(4, 9, 5, 19, 2, 2),
(5, 10, 3, 14, 1, 0);

-- REFEREES
INSERT INTO referees (referee_name, license_number, experience_years, age) VALUES
('Ahmet Yilmaz', 'REF001', 10, 45),
('Mehmet Kaya', 'REF002', 8, 40),
('Ayse Demir', 'REF003', 12, 50);

-- REFEREE ASSIGNMENTS
INSERT INTO referee_assignments (match_id, referee_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 1),
(5, 2);
