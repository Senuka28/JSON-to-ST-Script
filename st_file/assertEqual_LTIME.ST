FUNCTION assertEqual_LTIME : BOOL
VAR_INPUT
    act : LTIME; (* Variable to test *)
    xp : LTIME; (* Variable to test against *)
END_VAR

assertEqual_LTIME := act = xp;
RETURN;

END_FUNCTION
