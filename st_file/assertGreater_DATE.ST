FUNCTION assertGreater_DATE : BOOL
VAR_INPUT
    act : DATE; (* Variable to test *)
    xp : DATE; (* Variable to test against *)
END_VAR

assertGreater_DATE := act > xp;
RETURN;

END_FUNCTION
