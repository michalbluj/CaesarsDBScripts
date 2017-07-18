create table caesars.customer_control_segments (
	id bigserial Primary Key,
	i_customer_segment integer,
	c_prop_cd varchar(3),c_prop_cd_fk varchar(18),
	d_start_dt date,
	d_end_dt date,
	i_control_segment integer,
	c_customer_segment_short_desc varchar(10),
	c_customer_segment_desc varchar(40),
	c_control_segment_desc varchar(40),
	i_control_segment_min integer,
	i_control_segment_max integer,
	c_control_segment_lvl  varchar(40),
	c_known_status varchar(40),
	c_incented_status varchar(40),
	c_quality_cd varchar(1),
	d_timestamp timestamp
)