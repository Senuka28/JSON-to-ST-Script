FUNCTION assertNotEqual_UINT : BOOL
VAR_INPUT
    act : UINT; (* Variable to test *)
    xp : UINT; (* Variable to test against *)
END_VAR

assertNotEqual_UINT := act <> xp;
RETURN;

END_FUNCTION
