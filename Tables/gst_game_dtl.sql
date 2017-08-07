CREATE TABLE caesars.gst_game_dtl (
  id BIGSERIAL,
  i_dmid VARCHAR(12),
  c_prop_cd VARCHAR(3),
  c_game_type VARCHAR(12),
  c_game_cd VARCHAR(12),
  f_slot_denom NUMERIC(10,2),
  d_date DATE,
  d_rpt_period DATE,
  f_actual_win NUMERIC(10,2),
  f_avg_bet NUMERIC(10,2),
  i_avgbet_div INTEGER,
  f_cash_play NUMERIC(10,2),
  f_marker_play NUMERIC(10,2),
  i_len_of_play INTEGER,
  f_theoretical NUMERIC(10,2),
  c_quality_cd VARCHAR(12),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  c_purge_flag VARCHAR(3),
  d_purge_date DATE,
  contact VARCHAR(18),
  CONSTRAINT gst_game_dtl_pkey PRIMARY KEY(id)
) 
WITH (oids = false);