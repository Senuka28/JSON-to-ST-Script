FUNCTION assertArrayEqual_ULINT : BOOL
VAR_INPUT
    act : POINTER TO ARRAY[0..32000] OF ULINT; (* Variable to test *)
    xp : POINTER TO ARRAY[0..32000] OF ULINT; (* Variable to test against *)
    size : UINT; (* Size of the array (ADR(act)) *)
END_VAR
VAR
    i : UINT; (* Iterator variable *)
    vStop : UINT; (* Size of the array / End of iteration *)
    pt1 : POINTER TO ULINT; (* Pointer to the element of the array act *)
    pt2 : POINTER TO ULINT; (* Pointer to the element of the array xp *)
END_VAR

vStop := (size / SIZEOF(act^[0])) - 1;

FOR i:=0 TO vStop DO
	pt1 := ADR(act^[i]);
	pt2 := ADR(xp^[i]);
	IF pt1^ <> pt2^ THEN
		assertArrayEqual_ULINT := FALSE;
		RETURN;
	END_IF
END_FOR
(*If we reach here, all elements are equal*)
assertArrayEqual_ULINT := TRUE;
RETURN;

END_FUNCTION
