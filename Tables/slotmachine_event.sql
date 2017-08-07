CREATE TABLE caesars.slotmachine_event (
  id BIGSERIAL,
  data JSONB,
  d_created_date TIMESTAMP WITH TIME ZONE DEFAULT now(),
  CONSTRAINT slotmachine_event_pkey PRIMARY KEY(id)
) 
WITH (oids = false);