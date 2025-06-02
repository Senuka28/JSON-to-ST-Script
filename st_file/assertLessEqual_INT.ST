FUNCTION assertLessEqual_INT : BOOL
VAR_INPUT
    act : INT; (* Variable to test *)
    xp : INT; (* Variable to test against *)
END_VAR

assertLessEqual_INT := act <= xp;
RETURN;

END_FUNCTION
