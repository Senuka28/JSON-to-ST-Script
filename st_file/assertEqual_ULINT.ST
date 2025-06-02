FUNCTION assertEqual_ULINT : BOOL
VAR_INPUT
    act : ULINT; (* Variable to test *)
    xp : ULINT; (* Variable to test against *)
END_VAR

assertEqual_ULINT := act = xp;
RETURN;

END_FUNCTION
