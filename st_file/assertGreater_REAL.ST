FUNCTION assertGreater_REAL : BOOL
VAR_INPUT
    act : REAL; (* Variable to test *)
    xp : REAL; (* Variable to test against *)
END_VAR

assertGreater_REAL := act > xp;
RETURN;

END_FUNCTION
