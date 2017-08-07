CREATE TABLE caesars.hotel_event (
  id BIGSERIAL,
  data JSONB,
  d_created_date TIMESTAMP WITH TIME ZONE DEFAULT now(),
  CONSTRAINT hotel_event_pkey PRIMARY KEY(id)
) 
WITH (oids = false);