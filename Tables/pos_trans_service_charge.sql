CREATE TABLE caesars.pos_trans_service_charge (
  id BIGSERIAL,
  c_prop_cd VARCHAR(3),
  c_pos_trans_id VARCHAR(50),
  i_trans_service_charge_seq_id INTEGER,
  c_pos_rev_center_cd VARCHAR(12),
  d_pos_trans_dt DATE,
  i_check_nbr INTEGER,
  d_pos_trans_start_time TIMESTAMP WITHOUT TIME ZONE,
  d_pos_trans_end_time TIMESTAMP WITHOUT TIME ZONE,
  c_trans_type_cd VARCHAR(1),
  i_xref_dmid VARCHAR(12),
  c_service_charge_type_desc TEXT,
  f_service_charge_amt NUMERIC(10,2),
  c_quality_cd VARCHAR(12),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  c_file_prop_cd VARCHAR(3),
  CONSTRAINT pos_trans_service_charge_pkey PRIMARY KEY(id)
) 
WITH (oids = false);