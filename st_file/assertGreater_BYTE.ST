FUNCTION assertGreater_BYTE : BOOL
VAR_INPUT
    act : BYTE; (* Variable to test *)
    xp : BYTE; (* Variable to test against *)
END_VAR

assertGreater_BYTE := act > xp;
RETURN;

END_FUNCTION
