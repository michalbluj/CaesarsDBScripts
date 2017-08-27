create table caesars.iot_events(
  id bigserial, 
  event_type varchar,
  d_created_date timestamp,
  ucp_guest_id varchar(14),
  retention_policy integer,
  event_payload JSONB
)