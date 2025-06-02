FUNCTION assertNotEqual_DATE_AND_TIME : BOOL
VAR_INPUT
    act : DT; (* Variable to test *)
    xp : DT; (* Variable to test against *)
END_VAR

assertNotEqual_DATE_AND_TIME := act <> xp;
RETURN;

END_FUNCTION
