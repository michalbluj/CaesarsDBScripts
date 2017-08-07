CREATE TABLE caesars.source_code (
  id BIGSERIAL,
  c_source_cd VARCHAR(2),
  c_source_group VARCHAR(2),
  c_prop_cd VARCHAR(3),
  c_prop_cd_fk VARCHAR(18),
  c_source_cd_desc VARCHAR(40),
  c_quality_cd VARCHAR(1),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  CONSTRAINT source_code_pkey PRIMARY KEY(id)
) 
WITH (oids = false);

CREATE UNIQUE INDEX source_code__prop__sourcce__idx ON caesars.source_code
  USING btree (c_prop_cd COLLATE pg_catalog."default", c_source_cd COLLATE pg_catalog."default");