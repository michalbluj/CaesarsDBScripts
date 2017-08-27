CREATE TABLE caesars.retention_policies
(
  id serial NOT NULL,
  event_type character varying,
  hours integer,
  CONSTRAINT retention_policies_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);