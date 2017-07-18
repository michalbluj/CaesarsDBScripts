CREATE TABLE caesars.offers_redeemed(
	id BIGSERIAL Primary key,
	i_gst_offer_nbr char(11),
	i_dmid char(11),
	c_offer_id char(10),
	c_collateral_id char(10),
	c_coupon_type char(10),
	c_coupon_id char(10),
	f_rdm_amount decimal,
	c_rdm_source char(1),
	c_rdm_channel char(10),
	c_valid_prop_cd char(10),
	i_pdb_trip_id integer,
	i_coupon_key integer,
	c_offer_status char(1),
	d_offer_status_dt date,
	d_rpt_period date,
	i_coupon_counter integer,
	c_logon varchar(255),
	d_purge_date date,
	c_purge_flag char(1),
	c_quality_cd char(1),
	d_timestamp timestamp, 
	d_pdb_timestamp timestamp, contact varchar(18)
);


CREATE INDEX idmid_offers_redeemed_idx ON caesars.offers_redeemed(i_dmid);