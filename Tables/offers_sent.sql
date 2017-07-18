CREATE TABLE caesars.offers_sent(
	id BIGSERIAL Primary Key,
	i_gst_offer_nbr char(11),
	i_dmid char(11),
	i_prospect_id integer,
	c_offer_id char(10),
	c_recp_grp_id char(10),
	c_offer_status char(1),
	d_offer_status_dt date,
	d_send_date date,
	i_nbr_coup_redeem integer,
	i_paradb_list_id integer,
	i_mail_id integer,
	d_rpt_period date,
	i_offer_counter integer,
	c_quality_cd char(1),
	d_purge_date date,
	c_purge_flag char(1),
	d_timestamp timestamp, contact varchar(18)
);


CREATE INDEX idmid_offers_sent_idx ON caesars.offers_sent(i_dmid);