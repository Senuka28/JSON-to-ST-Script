FUNCTION assertNotEqual_WSTRING : BOOL
VAR_INPUT
    act : WSTRING; (* Variable to test *)
    xp : WSTRING; (* Variable to test against *)
END_VAR

assertNotEqual_WSTRING := act <> xp;
RETURN;

END_FUNCTION
