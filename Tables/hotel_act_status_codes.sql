create table caesars.hotel_act_status_code (
	id bigserial Primary Key,
	c_activity_status varchar(1),
	c_prop_cd varchar(3),
	c_prop_cd_fk varchar(18),
	d_start_dt date,
	d_end_dt date,
	c_activity_desc varchar(40),
	c_quality_cd varchar(1),
	d_timestamp timestamp
)