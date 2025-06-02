FUNCTION assertGreater_TIME : BOOL
VAR_INPUT
    act : TIME; (* Variable to test *)
    xp : TIME; (* Variable to test against *)
END_VAR

assertGreater_TIME := act > xp;
RETURN;

END_FUNCTION
