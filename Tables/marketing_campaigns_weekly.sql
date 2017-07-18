CREATE TABLE caesars.marketing_campaigns_weekly (
  id				BIGSERIAL,
  i_dmid                        varchar(11),
  c_campaign_type_fk            varchar(18),
  c_campaign_type               varchar(3),
  c_campaign_type_desc          varchar(40),
  c_campaign_cd_fk              varchar(18),
  c_campaign_cd                 varchar(5),
  c_campaign_desc               varchar(40),
  d_campaign_score_dt           date,
  c_version_cd                  varchar(40),
  c_acct_type_cd_fk             varchar(18),
  c_acct_type_cd                varchar(3),
  c_prop_market_cd_fk           varchar(18),
  c_prop_market_cd              varchar(3),
  c_dom_pref_prop_cd            varchar(40),
  c_tier_cd_fk                  varchar(18),
  c_tier_cd                     varchar(3),
  c_marketing_state_cd          varchar(40),
  c_regulatory_state_cd         varchar(40),
  i_random_1                    integer,
  i_random_2                    integer,
  i_random_static_yr            integer,
  c_main_ethnic_type            varchar(40),
  c_ethnic_group1               varchar(40),
  c_preferred_written_language  varchar(40),
  d_min_est_dt                  date,
  c_prop_mail_cd                varchar(40),
  c_emailable                   varchar(1),
  c_mailable                    varchar(1),
  c_channel_pref                varchar(40),
  c_uk_res_supress              varchar(40),
  c_id_verified                 varchar(40),
  c_age_18_plus                 varchar(1),
  c_age_19_plus                 varchar(1),
  c_age_21_plus                 varchar(1),
  c_ucl_supp_flag               varchar(1),
  c_uci_supp_flag               varchar(1),
  c_game_pref                   varchar(40),
  c_video_poker_pref            varchar(40),
  c_baccarat_pref               varchar(40),
  i_profitable_pct              integer,
  c_convienence_cd              varchar(40),
  c_drive_distance_cluster      varchar(40),
  c_frequency                   varchar(40),
  d_last_activity_dt            date,
  i_lodging_pct                 integer,
  f_worth                       numeric,
  c_worth_break                 varchar(40),
  c_channel_rec                 varchar(40),
  c_dom_market_cd               varchar(40),
  c_gst_prop_dm_optout_flag     varchar(40),
  c_tdc_supp_flag               varchar(40),
  c_prop_cd_1_fk                varchar(18),
  c_prop_cd_1                   varchar(3),
  i_prop_pct_worth_1            integer,
  c_prop_cd_2_fk                varchar(18),
  c_prop_cd_2                   varchar(3),
  i_prop_pct_worth_2            integer,
  c_pref_prop_host_cd           varchar(40),
  c_host_type                   varchar(40),
  i_age                         integer,
  c_gender                      varchar(40),
  c_dom_cd_prop                 varchar(40),
  c_pref_prop_cd                varchar(40),
  c_geo_dm_zone                 varchar(40),
  c_geo_rpt_zone                varchar(40),
  c_distance_cluster            varchar(40),
  c_msa_cd                      varchar(40),
  c_msa                         varchar(40),
  c_zip_7_pdb                   varchar(7),
  d_create_dt_mkt               date,
  d_create_dt_ent               date,
  f_act_all_ap_pdb_12mn_plus    numeric,
  f_theo_all_ap_pdb_12mn_plus   numeric,
  i_days_rtd_ap_pdb_12mn_plus   integer,
  i_trp_rtd_ap_pdb_12mn_plus    integer,
  f_daily_theo_ap_pdb_12mnplus  numeric,
  f_daily_act_ap_pdb_12mn_plus  numeric,
  f_daily_wrth_ap_pdb_12mnplus  numeric,
  f_resp_rate_ap_pdb_12mn_plus  numeric,
  f_ofr_trp_pct_ap_pdb12mnplus  numeric,
  f_htlsty_pct_ap_pdb_12mnplus  numeric,
  f_slot_pct_ap_pdb_12mn_plus   numeric,
  f_trp_all_adj_sc_pdb_12mn     numeric,
  f_trp_rtd_adj_sc_pdb_12mn     numeric,
  f_act_all_ap_pdb_24mn_plus    numeric,
  f_theo_all_ap_pdb_24mn_plus   numeric,
  i_days_rtd_ap_pdb_24mn_plus   integer,
  i_trp_rtd_ap_pdb_24mn_plus    integer,
  f_daily_theo_ap_pdb_24mnplus  numeric,
  f_daily_act_ap_pdb_24mn_plus  numeric,
  f_daily_wrth_ap_pdb_24mnplus  numeric,
  f_resp_rate_ap_pdb_24mn_plus  numeric,
  f_ofr_trp_pct_ap_pdb24mnplus  numeric,
  f_htlsty_pct_ap_pdb_24mnplus  numeric,
  f_slot_pct_ap_pdb_24mn_plus   numeric,
  f_trp_all_adj_sc_pdb_24mn     numeric,
  f_trp_rtd_adj_sc_pdb_24mn     numeric,
  f_trp_all_adj_sc_pdb_36mn     numeric,
  f_trp_rtd_adj_sc_pdb_36mn     numeric,
  f_profit_pct_ent              numeric,
  c_profit_flag_ent             varchar(40),
  f_profit_pct_mkt              numeric,
  c_profit_flag_mkt             varchar(40),
  i_age_adj_ah                  integer,
  i_dob_mn_adj_ah               integer,
  i_dob_yr_adj_ah               integer,
  c_country_cd_ah               varchar(40),
  c_credit_status_flag          varchar(40),
  c_mkt_host_cd_adj_ah          varchar(40),
  c_dom_prop_host_cd_adj_ah     varchar(40),
  c_prop_cd_1_host_cd_adj_ah    varchar(40),
  c_zip_7_ah                    varchar(7),
  f_tier_score_ah               numeric,
  f_lodging_pct_mkt_adj_ah      numeric,
  f_pct_bacarrat_mkt_ah         numeric,
  f_pct_blackjack_mkt_ah        numeric,
  f_pct_craps_mkt_ah            numeric,
  f_pct_other_mkt_ah            numeric,
  f_pct_paigow_mkt_ah           numeric,
  f_pct_roulette_mkt_ah         numeric,
  f_pct_video_poker_mkt_ah      numeric,
  c_future_res_flag_mkt_ah      varchar(1),
  f_worth_1mn_ap_ah             numeric,
  f_worth_3mn_ap_ah             numeric,
  f_worth_6mn_ap_ah             numeric,
  f_worth_12mn_ap_ah            numeric,
  f_worth_all_ytd_ap_ah         numeric,
  f_theo_all_1mn_ap_ah          numeric,
  f_theo_all_3mn_ap_ah          numeric,
  f_theo_all_6mn_ap_ah          numeric,
  f_theo_all_12mn_ap_ah         numeric,
  f_theo_all_ytd_ap_ah          numeric,
  f_theo_slot_1mn_ap_ah         numeric,
  f_theo_slot_3mn_ap_ah         numeric,
  f_theo_slot_6mn_ap_ah         numeric,
  f_theo_slot_12mn_ap_ah        numeric,
  f_theo_table_1mn_ap_ah        numeric,
  f_theo_table_3mn_ap_ah        numeric,
  f_theo_table_6mn_ap_ah        numeric,
  f_theo_table_12mn_ap_ah       numeric,
  f_act_all_1mn_ap_ah           numeric,
  f_act_all_3mn_ap_ah           numeric,
  f_act_all_6mn_ap_ah           numeric,
  f_act_all_12mn_ap_ah          numeric,
  f_actual_all_ytd_ap_ah        numeric,
  f_avgbet_game_1mn_ap_ah       numeric,
  f_avgbet_game_3mn_ap_ah       numeric,
  f_avgbet_game_6mn_ap_ah       numeric,
  f_avgbet_game_12mn_ap_ah      numeric,
  i_lop_game_1mn_ap_ah          integer,
  i_lop_game_3mn_ap_ah          integer,
  i_lop_game_6mn_ap_ah          integer,
  i_lop_game_12mn_ap_ah         integer,
  i_trp_all_cms_1mn_ap_ah       integer,
  i_trp_all_cms_3mn_ap_ah       integer,
  i_trp_all_cms_6mn_ap_ah       integer,
  i_trp_all_cms_12mn_ap_ah      integer,
  i_trp_rtd_1mn_ap_ah           integer,
  i_trp_rtd_3mn_ap_ah           integer,
  i_trp_rtd_6mn_ap_ah           integer,
  i_trp_rtd_12mn_ap_ah          integer,
  i_days_rtd_1mn_ap_ah          integer,
  i_days_rtd_3mn_ap_ah          integer,
  i_days_rtd_6mn_ap_ah          integer,
  i_days_rtd_12mn_ap_ah         integer,
  d_last_rated_dt_mkt_ah        date,
  f_rc_earned_1mn_mkt_ah        numeric,
  f_rc_earned_3mn_mkt_ah        numeric,
  f_rc_earned_6mn_mkt_ah        numeric,
  f_rc_earned_12mn_mkt_ah       numeric,
  d_first_gaming_dt_mkt_ah      date,
  d_first_gaming_dt_ent_ah      date,
  d_first_dt_played_mkt_ah      date,
  f_act_all_cms_first_hr_m_ah   numeric,
  f_act_all_cms_first_day_m_ah  numeric,
  f_act_all_cms_first_trp_m_ah  numeric,
  i_lop_first_hr_mkt_ah         integer,
  i_lop_first_day_mkt_ah        integer,
  i_lop_first_trp_mkt_ah        integer,
  c_convienence_cd_new          varchar(40),
  contact			varchar(18)
) WITH OIDS;
 ALTER TABLE caesars.marketing_campaigns_weekly ADD PRIMARY KEY (id);

 CREATE INDEX contact_mcw_idx ON caesars.marketing_campaigns_weekly(contact);
 CREATE INDEX idmid_mcw_idx ON caesars.marketing_campaigns_weekly(i_dmid);