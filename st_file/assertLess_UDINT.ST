FUNCTION assertLess_UDINT : BOOL
VAR_INPUT
    act : UDINT; (* Variable to test *)
    xp : UDINT; (* Variable to test against *)
END_VAR

assertLess_UDINT := act < xp;
RETURN;

END_FUNCTION
