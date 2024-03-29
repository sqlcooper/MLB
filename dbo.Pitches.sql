CREATE TABLE dbo.Pitches
(
pitch_type VARCHAR(5),
game_date DATE,
release_speed NUMERIC(5,2),
release_pos_x NUMERIC(5,4),
release_pos_z NUMERIC(5,4),
player_name VARCHAR(500),
batter BIGINT,
pitcher BIGINT,
events VARCHAR(2000),
description VARCHAR(MAX),
zone TINYINT,
des VARCHAR(MAX),
game_type CHAR(1),
stand CHAR(1),
p_throws CHAR(1),
home_team VARCHAR(3),
away_team VARCHAR(3),
type CHAR(1),
hit_location TINYINT,
bb_type VARCHAR(100),
balls TINYINT,
strikes TINYINT,
game_year INT,
pfx_x NUMERIC(5,4),
pfx_z NUMERIC(5,4),
plate_x NUMERIC(5,4),
plate_z NUMERIC(5,4),
on_3b BIGINT,
on_2b BIGINT,
on_1b BIGINT,
outs_when_up TINYINT,
inning TINYINT,
inning_topbot CHAR(3),
hc_x NUMERIC(5,2),
hc_y NUMERIC(5,2),
fielder_2 BIGINT,
umpire BIGINT,
sv_id VARCHAR(100),
vx0 NUMERIC(6,4),
vy0 NUMERIC(6,4),
vz0 NUMERIC(6,4),
ax NUMERIC(6,4),
ay NUMERIC(6,4),
az NUMERIC(6,4),
sz_top NUMERIC(3,2),
sz_bot NUMERIC(3,2),
hit_distance_sc NUMERIC(4,1),
launch_speed NUMERIC(5,2),
launch_angle NUMERIC(3,1),
effective_speed NUMERIC(5,2),
release_spin_rate NUMERIC(5,1),
release_extension NUMERIC(4,2),
game_pk BIGINT NOT NULL,
pitcher_1 BIGINT,
fielder_2_1 BIGINT,
fielder_3 BIGINT,
fielder_4 BIGINT,
fielder_5 BIGINT,
fielder_6 BIGINT,
fielder_7 BIGINT,
fielder_8 BIGINT,
fielder_9 BIGINT,
release_pos_y NUMERIC(4,2),
estimated_ba_using_speedangle NUMERIC(3,3),
estimated_woba_using_speedangle NUMERIC(4,3),
woba_value NUMERIC(3,2),
woba_denom TINYINT,
babip_value TINYINT,
iso_value TINYINT,
launch_speed_angle TINYINT,
at_bat_number INT NOT NULL,
pitch_number INT NOT NULL,
pitch_name VARCHAR(100),
home_score TINYINT,
away_score TINYINT,
bat_score TINYINT,
fld_score TINYINT,
post_bat_score TINYINT,
post_fld_score TINYINT,
if_fielding_alignment VARCHAR(50),
of_fielding_alignment VARCHAR(50),
barrel TINYINT
)

GO

ALTER TABLE dbo.Pitches ADD CONSTRAINT PK_Pitches PRIMARY KEY CLUSTERED (game_pk,at_bat_number,pitch_number)