CREATE TABLE caesars.lms_folio_hdr (
  id BIGSERIAL,
  f_folio_id VARCHAR(12),
  c_prop_cd VARCHAR(3),
  f_reserve_id VARCHAR(12),
  i_folio_type_id INTEGER,
  c_bill_cd VARCHAR(12),
  c_compor_first_name VARCHAR(64),
  c_compor_last_name VARCHAR(64),
  c_compor_dept VARCHAR(3),
  c_compor_gl_cd VARCHAR(32),
  c_convention_cd VARCHAR(12),
  d_folio_effective_dt DATE,
  d_folio_expire_dt DATE,
  c_folio_creator_id VARCHAR(32),
  d_folio_create_timestamp TIMESTAMP WITHOUT TIME ZONE,
  c_quality_cd VARCHAR(32),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  c_prop_cd_fk VARCHAR(18),
  lms_hotel_activity_fk BIGINT,
  CONSTRAINT lms_folio_hdr_pkey PRIMARY KEY(id),
  CONSTRAINT lms_folio_hdr_fk FOREIGN KEY (lms_hotel_activity_fk)
    REFERENCES caesars.lms_hotel_activity(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    NOT DEFERRABLE
) 
WITH (oids = false);

CREATE UNIQUE INDEX lms_folio_hdr__prop__folio_id_uidx ON caesars.lms_folio_hdr
  USING btree (c_prop_cd COLLATE pg_catalog."default", f_folio_id COLLATE pg_catalog."default");