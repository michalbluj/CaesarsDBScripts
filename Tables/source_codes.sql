create table caesars.source_code (
	id bigserial Primary Key,
	c_source_cd varchar(2),
	c_source_group varchar(2),
	c_prop_cd varchar(3),
	c_prop_cd_fk varchar(18),
	c_source_cd_desc varchar(40),
	c_quality_cd varchar(1),
	d_timestamp timestamp
)