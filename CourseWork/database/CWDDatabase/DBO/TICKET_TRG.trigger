CREATE TRIGGER TICKET_TRG 
BEFORE INSERT ON TICKET 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.CODE IS NULL THEN
      SELECT TICKET_SEQ.NEXTVAL INTO :NEW.CODE FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
