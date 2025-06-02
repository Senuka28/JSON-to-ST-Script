FUNCTION assertLess_LREAL : BOOL
VAR_INPUT
    act : LREAL; (* Variable to test *)
    xp : LREAL; (* Variable to test against *)
END_VAR

assertLess_LREAL := act < xp;
RETURN;

END_FUNCTION
