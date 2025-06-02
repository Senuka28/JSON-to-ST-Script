FUNCTION assertNotEqual_LDATE_AND_TIME : BOOL
VAR_INPUT
    act : LDATE_AND_TIME; (* Variable to test *)
    xp : LDATE_AND_TIME; (* Variable to test against *)
END_VAR

assertNotEqual_LDATE_AND_TIME := act <> xp;
RETURN;

END_FUNCTION
