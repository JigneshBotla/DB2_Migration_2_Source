-- fn_customer_fullname.sql  (IBM DB2 LUW, SQL scalar function)
-- Statement terminator is ';'. If scai reports parse errors on routines, try '@' instead.

CREATE FUNCTION FN_CUSTOMER_FULLNAME (P_FNAME VARCHAR(20), P_LNAME VARCHAR(30))
  RETURNS VARCHAR(51)
  LANGUAGE SQL
  DETERMINISTIC
  NO EXTERNAL ACTION
  CONTAINS SQL
  RETURN RTRIM(P_FNAME) || ' ' || RTRIM(P_LNAME);
