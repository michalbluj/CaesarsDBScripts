create table caesars.prop_desc_multi (
	id bigserial not null
	constraint prop_desc_multi_pkey
			primary key,
	c_prop_cd varchar(255),
	c_prop_desc varchar(255),
	c_prop_market_cd varchar(255),
	i_prop_market_type_id numeric,
	c_prop_market_desc varchar(255),
	i_prop_sort numeric,
	c_prop_alt_cd varchar(255),
	c_prop_alt2_cd varchar(255),
	c_division_cd varchar(255),
	c_division_desc varchar(255),
	i_division_sort numeric,
	c_brand_cd varchar(255),
	c_brand_desc varchar(255),
	c_brand_sort varchar(255),
	c_user_flag_1 varchar(255),
	c_user_flag_2 varchar(255),
	c_user_flag_3 varchar(255),
	c_user_flag_4 varchar(255),
	i_user_score_1 numeric,
	i_user_score_2 numeric,
	i_user_score_3 numeric,
	i_user_score_4 numeric,
	f_user_amt_1 numeric,
	f_user_amt_2 numeric,
	f_user_amt_3 numeric,
	f_user_amt_4 numeric,
	c_quality_cd varchar(255),
	d_timestamp timestamp,
	account_c_prop_cd_fk varchar(18)
	constraint prop_desc_multi_fk_account
			references account (sfid)
);
