CREATE OR REPLACE FUNCTION caesars.setup_contact (
)
RETURNS trigger AS
$body$
BEGIN
  NEW.contact = (SELECT dominant__c FROM salesforce.account WHERE ucpid__c = NEW.c_ucp_guest_id);
  RETURN NEW;

END
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;