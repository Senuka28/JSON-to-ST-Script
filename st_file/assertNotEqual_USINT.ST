FUNCTION assertNotEqual_USINT : BOOL
VAR_INPUT
    act : USINT; (* Variable to test *)
    xp : USINT; (* Variable to test against *)
END_VAR

assertNotEqual_USINT := act <> xp;
RETURN;

END_FUNCTION
