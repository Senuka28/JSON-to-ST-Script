FUNCTION assertEqual_DATE : BOOL
VAR_INPUT
    act : DATE; (* Variable to test *)
    xp : DATE; (* Variable to test against *)
END_VAR

assertEqual_DATE := act = xp;
RETURN;

END_FUNCTION
