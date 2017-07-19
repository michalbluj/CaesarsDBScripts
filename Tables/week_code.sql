CREATE TABLE caesars.week_code
(
  id bigserial NOT NULL,
  c_week_cd character varying(1),
  c_week_cd_desc character varying(20),
  c_quality_cd character varying(12),
  d_timestamp timestamp without time zone,
  CONSTRAINT week_code_pkey PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);