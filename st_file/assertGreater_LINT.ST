FUNCTION assertGreater_LINT : BOOL
VAR_INPUT
    act : LINT; (* Variable to test *)
    xp : LINT; (* Variable to test against *)
END_VAR

assertGreater_LINT := act > xp;
RETURN;

END_FUNCTION
