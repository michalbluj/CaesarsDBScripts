CREATE TABLE caesars.customer_control_segments (
  id BIGSERIAL,
  i_customer_segment INTEGER,
  c_prop_cd VARCHAR(3),
  c_prop_cd_fk VARCHAR(18),
  d_start_dt DATE,
  d_end_dt DATE,
  i_control_segment INTEGER,
  c_customer_segment_short_desc VARCHAR(10),
  c_customer_segment_desc VARCHAR(40),
  c_control_segment_desc VARCHAR(40),
  i_control_segment_min INTEGER,
  i_control_segment_max INTEGER,
  c_control_segment_lvl VARCHAR(40),
  c_known_status VARCHAR(40),
  c_incented_status VARCHAR(40),
  c_quality_cd VARCHAR(1),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  CONSTRAINT customer_control_segments_pkey PRIMARY KEY(id)
) 
WITH (oids = false);

CREATE UNIQUE INDEX customer_control_segments__prop__sgmt__idx ON caesars.customer_control_segments
  USING btree (c_prop_cd COLLATE pg_catalog."default", i_customer_segment, d_start_dt);