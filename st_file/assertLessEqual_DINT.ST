FUNCTION assertLessEqual_DINT : BOOL
VAR_INPUT
    act : DINT; (* Variable to test *)
    xp : DINT; (* Variable to test against *)
END_VAR

assertLessEqual_DINT := act <= xp;
RETURN;

END_FUNCTION
