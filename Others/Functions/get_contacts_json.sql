CREATE OR REPLACE FUNCTION caesars.get_contacts_json (
)
RETURNS json AS
$body$
DECLARE
	result_v JSON;
BEGIN

	SELECT 
    json_agg(	
        json_build_object(
          	'UCPID', a.ucpid__c,
            'WinetId', c.winet_id__c,           
            'Enterprise_Worth', ec.f_mdw_rated_all_mkts,
            'Market_Worth', mc.f_worth,
            'Property_Worth', mcp.f_worth,
            'Tier_Code', t.name
        )  
	) 
    INTO result_v   
	FROM salesforce.account a
    LEFT JOIN (	SELECT DISTINCT ON (i_dmid) i_dmid, f_mdw_rated_all_mkts
    
    			FROM caesars.marketing_campaigns_enterprise
                ORDER BY i_dmid, id) ec
    	ON a.winet_id__c = ec.i_dmid
    LEFT JOIN (	SELECT DISTINCT ON (i_dmid) i_dmid, c_worth_break, f_worth, f_tier_score_ah, c_tierscore_desc
    			FROM caesars.marketing_campaigns 
                ORDER BY i_dmid, id) mc
    	ON a.winet_id__c = mc.i_dmid
    LEFT JOIN (	SELECT DISTINCT ON (i_dmid) i_dmid, c_worth_break, f_worth, d_last_activity_dt_prop, c_tierscore_desc,
    				f_tier_score_ah
    			FROM caesars.marketing_campaigns_properties 
                ORDER BY i_dmid, id) mcp
    	ON a.winet_id__c = mcp.i_dmid    
    LEFT JOIN salesforce.contact c
    	ON a.dominant__c = c.sfid
    LEFT JOIN salesforce.tier_code__c t
    	ON c.c_tier_cd__c = t.sfid   
    LEFT JOIN salesforce.account a2
		ON a2.sfid = c.dominant_property__c
        AND a2.recordtypename__c = 'Property'                     
    WHERE a.recordtypename__c = 'UCP'  ;

     
	RETURN result_v;
END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;