create table caesars.hotel_wing_code (
	id bigserial Primary Key,
	c_wing_cd varchar(6),
	c_prop_cd varchar(3),
	c_prop_cd_fk varchar(18),
	d_start_dt date,
	d_end_dt date,
	c_wing_desc varchar(40),
	c_quality_cd varchar(1),
	d_timestamp timestamp
)