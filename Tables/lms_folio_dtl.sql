CREATE TABLE caesars.lms_folio_dtl (
  id BIGSERIAL,
  f_ticket_id VARCHAR(12),
  f_folio_id VARCHAR(12),
  c_prop_cd VARCHAR(3),
  i_seq_nbr INTEGER,
  d_create_ts TIMESTAMP WITHOUT TIME ZONE,
  d_trans_dt DATE,
  c_rev_center_cd VARCHAR(3),
  c_bill_cd VARCHAR(12),
  c_bill_cd_desc TEXT,
  c_compor_first_name TEXT,
  c_compor_last_name TEXT,
  c_compor_dept VARCHAR(12),
  c_compor_gl_cd VARCHAR(24),
  c_cashier_id VARCHAR(3),
  c_cashier_first_name TEXT,
  c_cashier_last_name TEXT,
  i_cashier_emp_id VARCHAR(12),
  c_cashier_user_profile VARCHAR(12),
  i_covers INTEGER,
  c_comments TEXT,
  c_external_ticket_nbr TEXT,
  c_meal_period_cd VARCHAR(12),
  c_meal_period_desc TEXT,
  c_ticket_type_cd VARCHAR(12),
  c_server_nbr TEXT,
  c_split_ticket_flag VARCHAR(3),
  c_settle_method_cd VARCHAR(3),
  c_settle_method_type VARCHAR(3),
  c_settle_method_short_desc TEXT,
  c_cc_lead_digit_type VARCHAR(3),
  c_account NUMERIC(10,2),
  f_tax_amt NUMERIC(10,2),
  f_tip_amt NUMERIC(10,2),
  f_ticket_amt NUMERIC(10,2),
  i_invoice_number INTEGER,
  c_quality_cd VARCHAR(12),
  d_timestamp TIMESTAMP WITHOUT TIME ZONE,
  c_prop_cd_fk VARCHAR(18),
  lms_folio_hdr_fk BIGINT,
  CONSTRAINT lms_folio_dtl_pkey PRIMARY KEY(id),
  CONSTRAINT lms_folio_dtl_lms_folio_hdr_fk FOREIGN KEY (lms_folio_hdr_fk)
    REFERENCES caesars.lms_folio_hdr(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    NOT DEFERRABLE
) 
WITH (oids = false);

CREATE UNIQUE INDEX lms_folio_dtl__prop__folio__ticket__seq__uidx ON caesars.lms_folio_dtl
  USING btree (c_prop_cd COLLATE pg_catalog."default", f_folio_id COLLATE pg_catalog."default", f_ticket_id COLLATE pg_catalog."default", i_seq_nbr);