FUNCTION assertEqual_LWORD : BOOL
VAR_INPUT
    act : LWORD; (* Variable to test *)
    xp : LWORD; (* Variable to test against *)
END_VAR

assertEqual_LWORD := act = xp;
RETURN;

END_FUNCTION
