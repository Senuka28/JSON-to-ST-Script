FUNCTION assertGreaterEqual_BYTE : BOOL
VAR_INPUT
    act : BYTE; (* Variable to test *)
    xp : BYTE; (* Variable to test against *)
END_VAR

assertGreaterEqual_BYTE := act >= xp;
RETURN;

END_FUNCTION
