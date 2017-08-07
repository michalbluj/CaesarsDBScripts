CREATE TRIGGER marketing_campaigns_properties_ins_tr
  AFTER INSERT 
  ON caesars.marketing_campaigns_properties
  
FOR EACH STATEMENT 
  EXECUTE PROCEDURE caesars.tr_marketing_campaigns_properties_ins();