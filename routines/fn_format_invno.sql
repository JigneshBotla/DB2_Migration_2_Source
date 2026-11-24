-- fn_format_invno.sql  (IBM DB2 LUW, SQL scalar function)
-- Kept in its own file because DIGITS() is DB2-specific; a failure here stays isolated.

CREATE FUNCTION FN_FORMAT_INVNO (P_NUM INTEGER)
  RETURNS CHAR(6)
  LANGUAGE SQL
  DETERMINISTIC
  NO EXTERNAL ACTION
  CONTAINS SQL
  RETURN RIGHT(DIGITS(P_NUM), 6);
