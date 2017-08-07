CREATE TABLE caesars.hotel_act_status_code (
  id BIGSERIAL,
  c_activity_status VARCHAR(1),
  c_prop_cd VARCHAR(3),
  c_prop_cd_fk VARCHAR(18),
  d_start_dt DATE,
  d_end_dt DATE,
  c_activity_desc VARCHAR(40),
  c_quality_cd VARCHAR(1),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  CONSTRAINT hotel_act_status_code_pkey PRIMARY KEY(id)
) 
WITH (oids = false);

CREATE INDEX hotel_act_status_code__end_dt___idx ON caesars.hotel_act_status_code
  USING btree (d_end_dt);

CREATE UNIQUE INDEX hotel_act_status_code__prop__activity___uidx ON caesars.hotel_act_status_code
  USING btree (c_prop_cd COLLATE pg_catalog."default", c_activity_status COLLATE pg_catalog."default", d_start_dt);

CREATE INDEX hotel_act_status_code__start_dt__idx ON caesars.hotel_act_status_code
  USING btree (d_start_dt);