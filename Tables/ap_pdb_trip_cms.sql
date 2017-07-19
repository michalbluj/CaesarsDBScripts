-- DROP TABLE caesars.ap_pdb_trip_cms;

CREATE TABLE caesars.ap_pdb_trip_cms
(
  id bigserial NOT NULL,
  i_ap_pdb_trip_id character varying(11),
  i_dmid character varying(11),
  contact_fk character varying(18),
  i_prop_market_type_id integer,
  c_prop_market_cd character varying(3),
  d_start_dt date,
  d_end_dt date,
  i_rated_days integer,
  i_nbr_trip_game integer,
  i_nbr_trip_slot integer,
  i_nbr_trip_oth integer,
  i_rated_trips integer,
  i_comped_trip integer,
  f_theo_all numeric,
  f_theo_game numeric,
  f_theo_slot numeric,
  f_theo_oth numeric,
  f_actual_all numeric,
  f_actual_game numeric,
  f_actual_slot numeric,
  f_actual_oth numeric,
  f_comp_worth numeric,
  c_quality_cd character varying(12),
  d_timestamp timestamp without time zone,
  ap_pdb_trip_hdr_fk bigint,
  market_fk character varying(18),
  CONSTRAINT ap_pdb_trip_cms_pkey PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);

-- ALTER TABLE caesars.ap_pdb_trip_cms DROP CONSTRAINT ap_pdb_trip_cms_fk_ap_pdb_trip_hdr;
ALTER TABLE caesars.ap_pdb_trip_cms
  ADD CONSTRAINT ap_pdb_trip_cms_fk_ap_pdb_trip_hdr FOREIGN KEY (ap_pdb_trip_hdr_fk)
REFERENCES caesars.ap_pdb_trip_hdr (id) MATCH SIMPLE
ON UPDATE NO ACTION ON DELETE NO ACTION;

-- UPDATE caesars.ap_pdb_trip_cms SET contact_fk = (SELECT c.sfid FROM salesforce.contact c WHERE c.winet_id__c = caesars.ap_pdb_trip_cms.i_dmid ORDER BY id ASC LIMIT 1 );

-- UPDATE caesars.ap_pdb_trip_cms SET ap_pdb_trip_hdr_fk = (SELECT wc.id FROM caesars.ap_pdb_trip_hdr wc
-- WHERE wc.i_ap_pdb_trip_id = caesars.ap_pdb_trip_cms.i_ap_pdb_trip_id AND wc.i_prop_market_type_id = caesars.ap_pdb_trip_cms.i_prop_market_type_id AND wc.c_prop_market_cd = caesars.ap_pdb_trip_cms.c_prop_market_cd);

-- UPDATE caesars.ap_pdb_trip_cms SET market_fk = (SELECT c.sfid FROM salesforce.market__c c WHERE c.name = caesars.ap_pdb_trip_cms.c_prop_market_cd);