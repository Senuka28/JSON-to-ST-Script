FUNCTION assertGreater_TIME_OF_DAY : BOOL
VAR_INPUT
    act : TOD; (* Variable to test *)
    xp : TOD; (* Variable to test against *)
END_VAR

assertGreater_TIME_OF_DAY := act > xp;
RETURN;

END_FUNCTION
