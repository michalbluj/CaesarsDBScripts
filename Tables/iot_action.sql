CREATE TABLE caesars.iot_action (
  id BIGSERIAL,
  c_offer_id VARCHAR(11),
  c_ucp_guest_id VARCHAR(14),
  c_delivery_mechanism VARCHAR(40),
  d_created_date TIMESTAMP WITH TIME ZONE DEFAULT now(),
  contact VARCHAR(18),
  CONSTRAINT iot_action_pkey PRIMARY KEY(id)
) 
WITH (oids = false);

CREATE OR REPLACE FUNCTION caesars.setup_contact() 
RETURNS TRIGGER 
AS
'
BEGIN
  NEW.contact = (SELECT dominant__c FROM salesforce.account WHERE ucpid__c = NEW.c_ucp_guest_id);
  RETURN NEW;
END
' 
LANGUAGE plpgsql;

CREATE TRIGGER set_contact
  BEFORE INSERT 
  ON caesars.iot_action
FOR EACH ROW 
  EXECUTE PROCEDURE caesars.setup_contact();

