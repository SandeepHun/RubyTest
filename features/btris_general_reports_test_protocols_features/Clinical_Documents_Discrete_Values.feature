@BTRIS_Quick_Test
  @Clinical_Documents_Discrete
Feature: BTRIS Clinical Documents - Discrete Values Test Report

  @ClinicalDocuments1

  Scenario Outline: 4.1 Clinical Documents - Discrete Values without red search.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user waits for 3 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Clinical Documents: Discrete Values Test.
    And the user waits for 3 seconds
    And the user clicks on "clinical documents: discrete values" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Clinical Documents - Discrete Values Criteria" text in "btris: clinical documents: discrete values filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user waits for 6 seconds
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    #And the user check "protocol check button" checkbox on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user waits for 25 seconds
    #Verify the document report table.
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Clinical Documents - Discrete Values Results Preview - Standard" text in "clinical documents: discrete report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the clinical documents discrete values report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Clinical Documents - Discrete Values Results Preview - Standard" text in "clinical documents: discrete report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-04 | NIHCCTEST        |

  @ClinicalDocuments2

  Scenario Outline: 4.2 Clinical Documents - Discrete Values with red search for Clinical documentsi.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user waits for 3 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Clinical Documents: Discrete Values Test.
    And the user waits for 3 seconds
    And the user clicks on "Clinical Documents: Discrete Values" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Clinical Documents - Discrete Values Criteria" text in "btris: clinical documents: discrete values filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user waits for 6 seconds
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the document report table.
    And the user waits for 25 seconds
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Clinical Documents - Discrete Values Results Preview - Standard" text in "clinical documents: discrete report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the clinical documents discrete values report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Clinical Documents - Discrete Values Results Preview - Standard" text in "clinical documents: discrete report page" field on "Btris/Portal" page
    And the return to main page
    #Click on Enter Report Criteria.
    And the user clicks on "top nav: enter report criteria" element on "Btris/Portal" page
    #Click on Add Clinical Document button:
    And the user clicks on "labs: add clinical doc button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type>" from "red search: clinical doc search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc done search button" element on "Btris/Portal" page
    #Verify search data.
    And the user waits for 8 seconds
    And the user can see text "Point of Care Testing Document (CC, CRIS)"
    #And the user must see "Point of Care Testing Document (CC, CRIS)" text in "red search for clinical doc" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Clinical Document button:
    And the user clicks on "labs: add clinical doc button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 1>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 1>" from "red search: clinical doc search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc done search button" element on "Btris/Portal" page
    #Verify search data.
    And the user waits for 8 seconds
    And the user can see text "Serial/Research Testing (CC, CRIS)"
    #And the user must see "Serial/Research Testing (CC, CRIS)" text in "red search: serial research" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Clinical Document button:
    And the user clicks on "labs: add clinical doc button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 2>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 2>" from "red search: clinical doc search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc done search button" element on "Btris/Portal" page
    #Verify search data.
    And the user waits for 8 seconds
    And the user can see text "Document Format (as indicated in CRIS)"
    #And the user must see "Document Format (as indicated in CRIS)" text in "red search: start with research" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Clinical Document button:
    And the user clicks on "labs: add clinical doc button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 3>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 3>" from "red search: clinical doc search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc done search button" element on "Btris/Portal" page
    And the user waits for 8 seconds
    And the user can see text "Serial Testing or Serial/Research Testing Document"
    #Verify search data.
    #And the user must see "Serial Testing or Serial/Research Testing Document" text in "red search: exact phrase research" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Observation button:
    And the user clicks on "labs: add observation button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 4>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 3>" from "labs: search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc done search button" element on "Btris/Portal" page
    #And the user waits for 6 seconds
    And the user waits for 8 seconds
    And the user can see text "Glasgow Coma Scale Observation"
    #Verify search data.
    #And the user must see "Glasgow Coma Scale Observation" text in "red search clinical: contains phrase research" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Observation button:
    And the user clicks on "labs: add observation button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 5>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 1>" from "labs: search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc done search button" element on "Btris/Portal" page
    #And the user waits for 5 seconds
    And the user waits for 8 seconds
    And the user can see text "Glasgow Coma Scale Observation"
    #Verify search data.
    #And the user must see "Glasgow Coma Scale Observation" text in "red search clinical: contains any search for add observation" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Observation button:
    And the user clicks on "labs: add observation button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 6>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 2>" from "labs: search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc done search button" element on "Btris/Portal" page
    #And the user waits for 5 seconds
    And the user waits for 8 seconds
    And the user can see text "Body Site Associated With Heart Rate and/or Blood Pressure"
    #Verify search data.
    #And the user must see "Body Site Associated With Heart Rate and/or Blood Pressure" text in "red search clinical: start with search for add observation" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject | Red Search Data | Search Type                    | Red Search Data 1                  | Search Type 1                  | Search Type 2                     | Red Search Data 2 | Search Type 3 | Red Search Data 3                                  | Red Search Data 4              | Red Search Data 5              | Red Search Data 6 |
      | BTRIS-TEST-04 | NIHCCTEST        | Potassium Test  | Contains any of these keywords | Serial Research Testing (CC, CRIS) | Contains all of these keywords | Starts with any of these keywords | Serial (CC, CRIS) | Exact Phrase  | Serial Testing or Serial/Research Testing Document | Glasgow Coma Scale Observation | Glasgow Coma Scale Observation | Body  DTM         |


