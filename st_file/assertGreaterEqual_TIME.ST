FUNCTION assertGreaterEqual_TIME : BOOL
VAR_INPUT
    act : TIME; (* Variable to test *)
    xp : TIME; (* Variable to test against *)
END_VAR

assertGreaterEqual_TIME := act >= xp;
RETURN;

END_FUNCTION
