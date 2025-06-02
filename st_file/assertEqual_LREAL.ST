FUNCTION assertEqual_LREAL : BOOL
VAR_INPUT
    act : LREAL; (* Variable to test *)
    xp : LREAL; (* Variable to test against *)
END_VAR

assertEqual_LREAL := act = xp;
RETURN;

END_FUNCTION
