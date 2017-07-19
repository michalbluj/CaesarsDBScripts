create table caesars.prop_comp (
	id bigserial not null
	constraint prop_comp_pkey
			primary key,
	c_prop_cd varchar(255),
	c_comp_grp varchar(255),
	c_comp_type varchar(255),
	c_outlet_cd varchar(255),
	c_comp_desc varchar(255),
	c_logon varchar(255),
	c_current_flag boolean,
	d_effective_start_dt date,
	d_effective_end_dt date,
	d_timestamp timestamp,
	c_quality_cd varchar(255),
	account_c_prop_cd_fk varchar(18)
	constraint prop_comp_fk_account
			references account (sfid)
);
