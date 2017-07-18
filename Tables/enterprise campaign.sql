create table caesars.enterprise_campaign (

	id BIGSERIAL Primary Key,
	i_dmid varchar(12),
	i_pdb_trips_all_mkts INTEGER,
	i_pdb_rated_trips_all_mkts  INTEGER,
	i_cms_rated_trips_all_mkts  INTEGER,
	i_all_days_all_mkts  INTEGER,
	i_rated_days_all_mkts  INTEGER,
	f_theo_all_all_mkts NUMERIC,
	f_actual_all_all_mkts NUMERIC,
	i_hotel_trips_all_mkts INTEGER,
	i_offer_trips_all_mkts INTEGER,
	i_minutes_all_mkts INTEGER,
	f_mdw_rated_all_mkts NUMERIC,
	f_mdw_all_all_mkts NUMERIC,
	contact varchar(18)

)