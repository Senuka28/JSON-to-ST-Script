FUNCTION assertNotEqual_DWORD : BOOL
VAR_INPUT
    act : DWORD; (* Variable to test *)
    xp : DWORD; (* Variable to test against *)
END_VAR

assertNotEqual_DWORD := act <> xp;
RETURN;

END_FUNCTION
