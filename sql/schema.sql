-- =========================
-- TEAMS TABLE
-- =========================
CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    coach VARCHAR(100),
    sponsor VARCHAR(100)
);

-- =========================
-- PLAYERS TABLE
-- =========================
CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    date_of_birth DATE,
    nationality VARCHAR(100),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- =========================
-- MATCHES TABLE
-- =========================
CREATE TABLE matches (
    match_id SERIAL PRIMARY KEY,
    home_team_id INT,
    away_team_id INT,
    match_date DATE,
    home_team_sets INT,
    away_team_sets INT,
    venue VARCHAR(100),
    FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES teams(team_id)
);

-- =========================
-- MATCH DETAILS TABLE (FACT TABLE)
-- =========================
CREATE TABLE match_details (
    match_detail_id SERIAL PRIMARY KEY,
    match_id INT,
    player_id INT,
    set_count INT,
    spike_count INT,
    block_count INT,
    ace_count INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

-- =========================
-- REFEREES TABLE
-- =========================
CREATE TABLE referees (
    referee_id SERIAL PRIMARY KEY,
    referee_name VARCHAR(100) NOT NULL,
    license_number VARCHAR(50),
    experience_years INT,
    age INT
);

-- =========================
-- REFEREE ASSIGNMENTS TABLE
-- =========================
CREATE TABLE referee_assignments (
    assignment_id SERIAL PRIMARY KEY,
    match_id INT,
    referee_id INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (referee_id) REFERENCES referees(referee_id)
);
