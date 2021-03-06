CREATE TRIGGER SEAT_TRG 
BEFORE INSERT ON SEAT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.CODE IS NULL THEN
      SELECT SEAT_SEQ.NEXTVAL INTO :NEW.CODE FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
