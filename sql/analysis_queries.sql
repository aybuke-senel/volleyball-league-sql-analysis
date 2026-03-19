-- =====================================
-- PLAYER PERFORMANCE ANALYSIS
-- =====================================

-- 1. Top players by maximum spike count (peak performance)
SELECT 
    p.player_name,
    MAX(md.spike_count) AS max_spike
FROM match_details md
JOIN players p ON md.player_id = p.player_id
GROUP BY p.player_name
ORDER BY max_spike DESC;


-- 2. Total spikes per player (overall performance)
SELECT 
    p.player_name,
    SUM(md.spike_count) AS total_spikes
FROM match_details md
JOIN players p ON md.player_id = p.player_id
GROUP BY p.player_name
ORDER BY total_spikes DESC;


-- =====================================
-- TEAM PERFORMANCE ANALYSIS
-- =====================================

-- 3. Total spikes by team (team offensive strength)
SELECT 
    t.team_name,
    SUM(md.spike_count) AS total_spike
FROM match_details md
JOIN players p ON md.player_id = p.player_id
JOIN teams t ON p.team_id = t.team_id
GROUP BY t.team_name
ORDER BY total_spike DESC;


-- =====================================
-- MATCH ANALYSIS
-- =====================================

-- 4. Matches with highest total sets played
SELECT 
    match_id,
    (home_team_sets + away_team_sets) AS total_sets
FROM matches
ORDER BY total_sets DESC;


-- =====================================
-- REFEREE ANALYSIS
-- =====================================

-- 5. Number of matches officiated by each referee
SELECT 
    r.referee_name,
    COUNT(ra.match_id) AS match_count
FROM referee_assignments ra
JOIN referees r ON ra.referee_id = r.referee_id
GROUP BY r.referee_name
ORDER BY match_count DESC;
