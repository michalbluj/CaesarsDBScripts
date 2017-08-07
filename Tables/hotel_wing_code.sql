CREATE TABLE caesars.hotel_wing_code (
  id BIGSERIAL,
  c_wing_cd VARCHAR(6),
  c_prop_cd VARCHAR(3),
  c_prop_cd_fk VARCHAR(18),
  d_start_dt DATE,
  d_end_dt DATE,
  c_wing_desc VARCHAR(40),
  c_quality_cd VARCHAR(1),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  CONSTRAINT hotel_wing_code_pkey PRIMARY KEY(id)
) 
WITH (oids = false);

CREATE INDEX hotel_wing_code__end_dt_idx ON caesars.hotel_wing_code
  USING btree (d_end_dt);

CREATE INDEX hotel_wing_code__prop__wing_idx ON caesars.hotel_wing_code
  USING btree (c_prop_cd COLLATE pg_catalog."default", c_wing_cd COLLATE pg_catalog."default", d_start_dt);

CREATE INDEX hotel_wing_code_start_dt_idx ON caesars.hotel_wing_code
  USING btree (d_start_dt);