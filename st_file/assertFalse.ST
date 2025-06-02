FUNCTION assertFalse : BOOL
VAR_INPUT
    condition : BOOL; (* Variable to test *)
END_VAR

assertFalse := NOT condition;
RETURN;

END_FUNCTION
