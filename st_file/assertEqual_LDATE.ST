FUNCTION assertEqual_LDATE : BOOL
VAR_INPUT
    act : LDATE; (* Variable to test *)
    xp : LDATE; (* Variable to test against *)
END_VAR

assertEqual_LDATE := act = xp;
RETURN;

END_FUNCTION
