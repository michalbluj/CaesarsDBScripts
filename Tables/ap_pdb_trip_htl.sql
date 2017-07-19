-- DROP TABLE caesars.ap_pdb_trip_htl;

CREATE TABLE caesars.ap_pdb_trip_htl
(
  id bigserial NOT NULL,
  i_ap_pdb_trip_id character varying(11),
  i_dmid character varying(11),
  contact_fk character varying(18),
  i_prop_market_type_id integer,
  c_prop_market_cd character varying(3),
  d_start_dt date,
  d_end_dt date,
  i_stay integer,
  i_rm_night integer,
  f_room_rev numeric,
  f_fb_rev numeric,
  f_comp_rev numeric,
  f_other_rev numeric,
  i_nbr_rooms integer,
  i_nbr_occupants integer,
  c_quality_cd character varying(12),
  d_timestamp timestamp without time zone,
  ap_pdb_trip_hdr_fk bigint,
  market_fk character varying(18),
  CONSTRAINT ap_pdb_trip_htl_pkey PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);

-- ALTER TABLE caesars.ap_pdb_trip_htl DROP CONSTRAINT ap_pdb_trip_htl_fk_ap_pdb_trip_hdr;
ALTER TABLE caesars.ap_pdb_trip_htl
  ADD CONSTRAINT ap_pdb_trip_htl_fk_ap_pdb_trip_hdr FOREIGN KEY (ap_pdb_trip_hdr_fk)
REFERENCES caesars.ap_pdb_trip_hdr (id) MATCH SIMPLE
ON UPDATE NO ACTION ON DELETE NO ACTION;

-- UPDATE caesars.ap_pdb_trip_htl SET contact_fk = (SELECT c.sfid FROM salesforce.contact c WHERE c.winet_id__c = caesars.ap_pdb_trip_htl.i_dmid ORDER BY id ASC LIMIT 1 );

-- UPDATE caesars.ap_pdb_trip_htl SET ap_pdb_trip_hdr_fk = (SELECT wc.id FROM caesars.ap_pdb_trip_hdr wc
-- WHERE wc.i_ap_pdb_trip_id = caesars.ap_pdb_trip_htl.i_ap_pdb_trip_id AND wc.i_prop_market_type_id = caesars.ap_pdb_trip_htl.i_prop_market_type_id AND wc.c_prop_market_cd = caesars.ap_pdb_trip_htl.c_prop_market_cd);

-- UPDATE caesars.ap_pdb_trip_htl SET market_fk = (SELECT c.sfid FROM salesforce.market__c c WHERE c.name = caesars.ap_pdb_trip_htl.c_prop_market_cd);