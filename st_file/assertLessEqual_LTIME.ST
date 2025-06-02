FUNCTION assertLessEqual_LTIME : BOOL
VAR_INPUT
    act : LTIME; (* Variable to test *)
    xp : LTIME; (* Variable to test against *)
END_VAR

assertLessEqual_LTIME := act <= xp;
RETURN;

END_FUNCTION
