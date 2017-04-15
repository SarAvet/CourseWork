CREATE TRIGGER CARRIAGE_TYPE_TRG 
BEFORE INSERT ON CARRIAGE_TYPE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.CODE IS NULL THEN
      SELECT CARRIAGE_TYPE_SEQ.NEXTVAL INTO :NEW.CODE FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
