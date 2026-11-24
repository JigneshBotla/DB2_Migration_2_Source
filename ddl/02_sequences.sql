-- 02_sequences.sql  (IBM DB2 LUW)
-- Invoice numbers in the seed data run up to 062357, so the sequence starts at 62358.

CREATE SEQUENCE SEQ_INVOICE_NO
       AS INTEGER
       START WITH 62358
       INCREMENT BY 1
       NO MAXVALUE
       NO CYCLE
       CACHE 20;

CREATE SEQUENCE SEQ_AUDIT_BATCH
       AS BIGINT
       START WITH 1
       INCREMENT BY 1
       MINVALUE 1
       MAXVALUE 999999
       CYCLE
       ORDER;
