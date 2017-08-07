CREATE TABLE caesars.preference_type (
  id BIGSERIAL,
  i_preference_id INTEGER,
  i_category_id INTEGER,
  i_max_length INTEGER,
  i_default_response INTEGER,
  c_static_name VARCHAR(100),
  c_validation_instructions VARCHAR(100),
  c_description VARCHAR(255),
  c_key_words VARCHAR(255),
  c_legal_implications_flag VARCHAR(1),
  d_display_effective_date DATE,
  d_display_expiration_date DATE,
  c_display_name VARCHAR(255),
  c_quality_cd VARCHAR(12),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  c_prop_cd VARCHAR(3),
  account_c_prop_cd_fk VARCHAR(18),
  preference_category_fk BIGINT,
  CONSTRAINT preference_type_pkey PRIMARY KEY(id),
  CONSTRAINT preference_type_fk_preference_category FOREIGN KEY (preference_category_fk)
    REFERENCES caesars.preference_category(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    NOT DEFERRABLE
) 
WITH (oids = false);