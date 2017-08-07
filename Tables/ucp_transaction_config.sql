CREATE TABLE caesars.ucp_transaction_config (
  id SERIAL,
  transaction_id VARCHAR(30) NOT NULL,
  chunk_count INTEGER,
  ucp_count INTEGER,
  ucp_id_max INTEGER,
  errors INTEGER,
  created_on TIMESTAMP WITH TIME ZONE DEFAULT now(),
  ended_on TIMESTAMP WITH TIME ZONE
) 
WITH (oids = false);