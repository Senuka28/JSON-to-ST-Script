FUNCTION assertEqual_STRING : BOOL
VAR_INPUT
    act : STRING; (* Variable to test *)
    xp : STRING; (* Variable to test against *)
END_VAR

assertEqual_STRING := act = xp;
RETURN;

END_FUNCTION
