FUNCTION assertLess_WORD : BOOL
VAR_INPUT
    act : WORD; (* Variable to test *)
    xp : WORD; (* Variable to test against *)
END_VAR

assertLess_WORD := act < xp;
RETURN;

END_FUNCTION
