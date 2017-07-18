create table caesars.gst_cons_xref (
	id bigserial primary key,
	i_dmid varchar(12),
    i_xref_dmid varchar(12),
    c_quality_cd varchar(1),
	d_timestamp timestamp
)