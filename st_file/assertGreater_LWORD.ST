FUNCTION assertGreater_LWORD : BOOL
VAR_INPUT
    act : LWORD; (* Variable to test *)
    xp : LWORD; (* Variable to test against *)
END_VAR

assertGreater_LWORD := act > xp;
RETURN;

END_FUNCTION
