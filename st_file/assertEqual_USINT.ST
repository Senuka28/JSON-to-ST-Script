FUNCTION assertEqual_USINT : BOOL
VAR_INPUT
    act : USINT; (* Variable to test *)
    xp : USINT; (* Variable to test against *)
END_VAR

assertEqual_USINT := act = xp;
RETURN;

END_FUNCTION
