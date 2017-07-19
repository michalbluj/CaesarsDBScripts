-- DROP TABLE caesars.pdb_trip_info;

CREATE TABLE caesars.pdb_trip_info
(
  id bigserial NOT NULL,
  i_dmid character varying(11),
  c_prop_cd character varying(3),
  i_pdb_trip_id character varying(11),
  d_start_dt date,
  d_end_dt date,
  f_cash_cost numeric,
  f_hotel_cost numeric,
  f_other_cost numeric,
  f_total_cost numeric,
  i_cash_coup integer,
  i_hotel_coup integer,
  i_other_coup integer,
  i_total_coup integer,
  i_offers integer,
  f_cashless_cost numeric,
  i_cashless_coup integer,
  f_other_cost1 numeric,
  f_other_cost2 numeric,
  f_other_cost3 numeric,
  f_other_cost4 numeric,
  f_other_cost5 numeric,
  f_trip_value1 numeric,
  f_trip_value2 numeric,
  f_trip_value3 numeric,
  f_trip_value4 numeric,
  f_trip_value5 numeric,
  c_user_flag_1 character varying(1),
  c_user_flag_2 character varying(1),
  c_user_flag_3 character varying(1),
  c_user_flag_4 character varying(11),
  i_user_score_1 integer,
  i_user_score_2 integer,
  i_user_score_3 integer,
  i_user_score_4 integer,
  i_user_score_5 integer,
  i_user_score_6 integer,
  i_user_score_7 integer,
  i_user_score_8 integer,
  i_user_score_9 integer,
  i_user_score_10 integer,
  f_user_amt_1 numeric,
  f_user_amt_2 numeric,
  f_user_amt_3 numeric,
  f_user_amt_4 numeric,
  f_user_amt_5 numeric,
  f_user_amt_6 numeric,
  f_user_amt_7 numeric,
  f_user_amt_8 numeric,
  f_user_amt_9 numeric,
  f_user_amt_10 numeric,
  f_cash_value numeric,
  f_hotel_value numeric,
  f_other_value numeric,
  f_cashless_value numeric,
  i_exl_from_profitb_coup integer,
  f_exl_from_profitb_value numeric,
  i_pdb_trip_id_fk bigint,
  contact_fk character varying(18),
  account_c_prop_cd_fk character varying(18),
  CONSTRAINT pdb_trip_info_pkey PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);

-- ALTER TABLE caesars.pdb_trip_info DROP CONSTRAINT pdb_trip_info_fk_tirp_info;
ALTER TABLE caesars.pdb_trip_info
  ADD CONSTRAINT pdb_trip_info_fk_tirp_info FOREIGN KEY (i_pdb_trip_id_fk)
REFERENCES caesars.pdb_trip (id) MATCH SIMPLE
ON UPDATE NO ACTION ON DELETE NO ACTION;

-- UPDATE caesars.pdb_trip_info SET contact_fk = (SELECT c.sfid FROM salesforce.contact c WHERE c.winet_id__c = caesars.pdb_trip_info.i_dmid LIMIT 1);
-- UPDATE caesars.pdb_trip_info SET i_pdb_trip_id_fk = (SELECT wc.id FROM caesars.pdb_trip wc WHERE wc.i_pdb_trip_id = caesars.pdb_trip_info.i_pdb_trip_id);

-- UPDATE caesars.pdb_trip_info SET account_c_prop_cd_fk = (SELECT c.sfid FROM salesforce.account c
-- WHERE ((c.property_code__c = caesars.pdb_trip_info.c_prop_cd AND caesars.pdb_trip_info.c_prop_cd != 'CAC') OR ( caesars.pdb_trip_info.c_prop_cd = 'CAC' AND c.sfid = '0010v000004IsA7AAK' ) ));
