[IEC_IEC_NORM]
TYPE
	utTestCaseStates :
    (
        ut_SETUP, (**)
        ut_RUNNING, (**)
        ut_PASSED, (**)
        ut_FAILED (**)
    );    
    
    utErrors :
    (
        ut_NO_ERROR, (**)
        ut_NO_TEST_CASES_DEFINED (**)
    ); 
    
    utTestCase :    
	    STRUCT
	        id : UINT; (*Identifier of the test*)
	        desc : ARRAY[0..4] OF STRING[255]; (*Description of the test case*)
	        state : utTestCaseStates; (*State of the test*)
	        msg : STRING[255]; (*Result of the test*)
	    END_STRUCT;
    
    utTestCaseSummary :    
	    STRUCT
	        Id : UINT; (*Id of the test object. Must be unique number*)
	        Name : STRING[250]; (*Name of the test object*)
	        TotalTests : UINT; (*Total number of tests existing*)
	        TestsPassed : UINT; (*Number of tests passed*)
	        TestsFailed : UINT; (*Number of tests failed*)
	        PassRate : REAL; (*Pass rate % of the tests*)
	        TestsRunning : BOOL; (*One or more tests are running*)
	        Error : utErrors; (*Error code if error occured*)
	    END_STRUCT;
END_TYPE


