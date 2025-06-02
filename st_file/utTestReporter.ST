FUNCTIONBLOCK utTestReporter
VAR_INPUT
    Results : POINTER TO ARRAY[0..65535] OF utTestCaseSummary; (* Summaries of tests for each POU under test *)
    Size : UINT; (* Size of the array (number of indexes) *)
END_VAR
VAR_OUTPUT
    NrPousUnderTest : UINT; (* Total number of POUs under test *)
    NrOfTests : UINT; (* Total number of tests *)
    NrTestsPassed : UINT; (* Number of tests passed *)
    NrTestsFailed : UINT; (* Number of tests failed *)
    PassRate : REAL; (* Total pass rate *)
    TestsInProgress : BOOL; (* Indicates that one or more tests are in progress *)
    Error : BOOL; (* Indicates that one or more tests are in error state *)
END_VAR
VAR
    i : UINT; (* Iterator variable *)
END_VAR

(*Reset totals*)
NrPousUnderTest := 0;
NrOfTests := 0;
NrTestsPassed := 0;
NrTestsFailed := 0;
PassRate := 0;
TestsInProgress := FALSE;
Error := FALSE;

(*Count totals*)
FOR i:=0 TO Size DO
	IF Results[i].Id > 0 THEN
		(*Count existing POUs under test*)
		NrPousUnderTest := NrPousUnderTest + 1;
		(*Count the pass rate. Needs to be divided in the end by the number of total tests*)
		PassRate := PassRate + Results[i].PassRate;
		(*Count the number of tests*)
		NrOfTests := NrOfTests + Results[i].TotalTests;
		(*Count the number of tests passed*)
		NrTestsPassed := NrTestsPassed + Results[i].TestsPassed;
		(*Count the number of tests failed*)
		NrTestsFailed := NrTestsFailed + Results[i].TestsFailed;
		
		(*Indicators*)
		IF Results[i].TestsRunning THEN
			TestsInProgress := TRUE;
		END_IF
		IF Results[i].Error <> utErrors.ut_NO_ERROR THEN
			Error := TRUE;
		END_IF
	END_IF
END_FOR
PassRate := PassRate / NrPousUnderTest;
END_FUNCTIONBLOCK
