FUNCTION assertLess_DWORD : BOOL
VAR_INPUT
    act : DWORD; (* Variable to test *)
    xp : DWORD; (* Variable to test against *)
END_VAR

assertLess_DWORD := act < xp;
RETURN;

END_FUNCTION
