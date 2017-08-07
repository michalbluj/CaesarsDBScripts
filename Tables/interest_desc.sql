CREATE TABLE caesars.interest_desc (
  id BIGSERIAL,
  c_interest_cd VARCHAR(10),
  c_interest_type VARCHAR(2),
  c_interest_desc VARCHAR(255),
  c_quality_cd VARCHAR(12),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  CONSTRAINT interest_desc_pkey PRIMARY KEY(id)
) 
WITH (oids = false);