CREATE TRIGGER marketing_campaigns_ins_tr
  AFTER INSERT 
  ON caesars.marketing_campaigns
  
FOR EACH STATEMENT 
  EXECUTE PROCEDURE caesars.tr_marketing_campaigns_ins();