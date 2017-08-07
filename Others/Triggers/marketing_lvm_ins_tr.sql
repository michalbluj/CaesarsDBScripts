CREATE TRIGGER marketing_lvm_ins_tr
  AFTER INSERT 
  ON caesars.marketing_campaigns_lvm
  
FOR EACH STATEMENT 
  EXECUTE PROCEDURE caesars.tr_marketing_lvm_ins();