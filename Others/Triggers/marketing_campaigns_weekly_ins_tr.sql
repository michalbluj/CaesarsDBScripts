CREATE TRIGGER marketing_campaigns_weekly_ins_tr
  AFTER INSERT 
  ON caesars.marketing_campaigns_weekly
  
FOR EACH STATEMENT 
  EXECUTE PROCEDURE caesars.tr_marketing_campaigns_weekly_ins();