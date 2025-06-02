FUNCTION assertEqual_BOOL : BOOL
VAR_INPUT
    act : BOOL; (* Variable to test *)
    xp : BOOL; (* Variable to test against *)
END_VAR

assertEqual_BOOL := act = xp;
RETURN;

END_FUNCTION
