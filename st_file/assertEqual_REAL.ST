FUNCTION assertEqual_REAL : BOOL
VAR_INPUT
    act : REAL; (* Variable to test *)
    xp : REAL; (* Variable to test against *)
END_VAR

assertEqual_REAL := act = xp;
RETURN;

END_FUNCTION
