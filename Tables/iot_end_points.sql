CREATE TABLE caesars.iot_end_points (
  id SERIAL,
  event_type VARCHAR(1300),
  end_point VARCHAR(1300),
  auth_token VARCHAR(1300),
  CONSTRAINT iot_end_points_pkey PRIMARY KEY(id)
) 
WITH (oids = false);