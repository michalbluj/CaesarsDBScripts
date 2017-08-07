CREATE TABLE caesars.preference_category (
  id BIGSERIAL,
  i_category_id INTEGER,
  i_parent_category_id INTEGER,
  i_depth INTEGER,
  i_response_rule INTEGER,
  i_rank_rule INTEGER,
  c_business_owner VARCHAR(255),
  c_authors VARCHAR(255),
  c_display_name VARCHAR(255),
  c_quality_cd VARCHAR(12),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  i_category_group INTEGER,
  CONSTRAINT preference_category_pkey PRIMARY KEY(id)
) 
WITH (oids = false);