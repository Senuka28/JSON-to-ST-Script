FUNCTION assertEqual_SINT : BOOL
VAR_INPUT
    act : SINT; (* Variable to test *)
    xp : SINT; (* Variable to test against *)
END_VAR

assertEqual_SINT := act = xp;
RETURN;

END_FUNCTION
