CREATE TRIGGER set_contact
  BEFORE INSERT 
  ON caesars.iot_action
  
FOR EACH ROW 
  EXECUTE PROCEDURE caesars.setup_contact();