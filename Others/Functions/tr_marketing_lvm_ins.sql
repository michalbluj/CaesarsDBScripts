CREATE OR REPLACE FUNCTION caesars.tr_marketing_lvm_ins (
)
RETURNS trigger AS
$body$
DECLARE

BEGIN

    UPDATE caesars.marketing_lvm m
    SET contact = c.sfid
    FROM salesforce.contact c
    WHERE m.contact IS NULL
    AND m.i_dmid = c.winet_id__c;
   
	RETURN NULL;
     
END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;