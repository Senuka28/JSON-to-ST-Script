FUNCTION assertLessEqual_LTIME_OF_DAY : BOOL
VAR_INPUT
    act : LTIME_OF_DAY; (* Variable to test *)
    xp : LTIME_OF_DAY; (* Variable to test against *)
END_VAR

assertLessEqual_LTIME_OF_DAY := act <= xp;
RETURN;

END_FUNCTION
