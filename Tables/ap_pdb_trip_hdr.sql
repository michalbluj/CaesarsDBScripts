-- DROP TABLE caesars.ap_pdb_trip_hdr;

CREATE TABLE caesars.ap_pdb_trip_hdr
(
  id bigserial NOT NULL,
  i_ap_pdb_trip_id character varying(11),
  i_dmid character varying(11),
  contact_fk character varying(18),
  i_prop_market_type_id integer,
  c_prop_market_cd character varying(3),
  d_start_dt date,
  d_end_dt date,
  d_rpt_per date,
  i_nbr_days integer,
  c_casino_flag character varying(1),
  c_hotel_flag character varying(1),
  c_curr_flag character varying(1),
  c_w2g_flag character varying(1),
  c_as_brand_flag character varying(1),
  c_as_cms_flag character varying(1),
  c_first_prop_visit character varying(1),
  c_home_prop_cd character varying(3),
  c_week_cd character varying(1),
  c_rated_trip character varying(1),
  i_nbr_offers_red integer,
  i_nbr_offers_unred integer,
  i_events integer,
  i_trip_nbr integer,
  i_brand_trip_nbr integer,
  c_quality_cd character varying(12),
  d_timestamp timestamp without time zone,
  week_code_fk bigint,
  account_c_home_prop_cd_fk character varying(18),
  market_fk character varying(18),
  CONSTRAINT ap_pdb_trip_hdr_pkey PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);

-- ALTER TABLE caesars.ap_pdb_trip_hdr DROP CONSTRAINT pdb_trip_fk_week_code;
ALTER TABLE caesars.ap_pdb_trip_hdr
  ADD CONSTRAINT ap_pdb_trip_hdr_fk_week_code FOREIGN KEY (week_code_fk)
REFERENCES caesars.week_code (id) MATCH SIMPLE
ON UPDATE NO ACTION ON DELETE NO ACTION;

-- UPDATE caesars.ap_pdb_trip_hdr SET contact_fk = (SELECT c.sfid FROM salesforce.contact c WHERE c.winet_id__c = caesars.ap_pdb_trip_hdr.i_dmid ORDER BY id ASC LIMIT 1 );

-- UPDATE caesars.ap_pdb_trip_hdr SET week_code_fk = (SELECT wc.id FROM caesars.week_code wc WHERE wc.c_week_cd = caesars.ap_pdb_trip_hdr.c_week_cd);

-- UPDATE caesars.ap_pdb_trip_hdr SET account_c_home_prop_cd_fk = (SELECT c.sfid FROM salesforce.account c
-- WHERE ((c.property_code__c = caesars.ap_pdb_trip_hdr.c_home_prop_cd AND caesars.ap_pdb_trip_hdr.c_home_prop_cd != 'CAC') OR ( caesars.ap_pdb_trip_hdr.c_home_prop_cd = 'CAC' AND c.sfid = '0010v000004IsA7AAK' ) ));

-- UPDATE caesars.ap_pdb_trip_hdr SET market_fk = (SELECT c.sfid FROM salesforce.market__c c WHERE c.name = caesars.ap_pdb_trip_hdr.c_prop_market_cd);