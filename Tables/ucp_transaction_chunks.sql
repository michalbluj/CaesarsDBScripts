CREATE TABLE caesars.ucp_transaction_chunks (
  id SERIAL,
  chunk_limit INTEGER NOT NULL,
  chunk_offset INTEGER NOT NULL,
  transaction_id VARCHAR(30) NOT NULL,
  status VARCHAR(10) DEFAULT 'new'::character varying NOT NULL,
  run_counter INTEGER DEFAULT 0,
  created_on TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  CONSTRAINT ucp_transaction_chunks_pkey PRIMARY KEY(id)
) 
WITH (oids = false);