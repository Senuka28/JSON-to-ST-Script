FUNCTION assertLessEqual_LDATE : BOOL
VAR_INPUT
    act : LDATE; (* Variable to test *)
    xp : LDATE; (* Variable to test against *)
END_VAR

assertLessEqual_LDATE := act <= xp;
RETURN;

END_FUNCTION
