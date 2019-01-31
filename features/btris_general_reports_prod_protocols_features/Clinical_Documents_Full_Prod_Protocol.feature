@BTRIS_Quick_Test
@Clinical_Documents_Full_Text_Prod_Data
Feature: Clinical Documents - Full Text Feature Prod Data

  @ClinicalDocumentsFull1.1

  Scenario Outline: 9.1 Clinical Documents - Full Text Feature without red search.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user waits for 4 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Clinical Documents: full tex Test.
    And the user waits for 3 seconds
    And the user clicks on "btris: clinical documents full tex test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #verify the select report page.
    And the user must see "Clinical Documents - Full Text Criteria" text in "btris: clinical documents full tex report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user waits for 4 seconds
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the document report table.
    And the user waits for 23 seconds
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
    #Click on the download report button.
    #And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | Filtered Subject |
      | 00-C-0133 | BEATON           |

  @ClinicalDocumentsFull2.2

  Scenario Outline: 9.2 Clinical Documents - Full Text Feature with red search for Clinical documentsi.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user waits for 4 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Clinical Documents: full tex Test.
    And the user waits for 3 seconds
    And the user clicks on "btris: clinical documents full tex test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #verify the select report page.
    And the user must see "Clinical Documents - Full Text Criteria" text in "btris: clinical documents full tex report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user waits for 4 seconds
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the document report table.
    And the user waits for 23 seconds
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
    #Click on the download report button.
    #And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
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
    And the user waits for 5 seconds
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
    And the user waits for 5 seconds
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
    And the user waits for 5 seconds
    #Click the search button.
    And the user clicks on "red search: clinical doc done search button" element on "Btris/Portal" page
    #Verify search data.
    And the user waits for 5 seconds
    And the user can see text "Document Format (as indicated in CRIS)"
    #And the user must see "CRIS PDF Web Service Document (Document Image)" text in "red search: start with research" field on "Btris/Portal" page
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
    #And the user can see text "Serial Testing or Serial/Research Testing Document"
    #Verify search data.
    And the user waits for 10 seconds
    And the user can see text "Serial Testing or Serial/Research Testing Document"
    #And the user must see "Serial Testing or Serial/Research Testing Document" text in "red search: exact phrase research" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | Filtered Subject | Red Search Data | Search Type                    | Red Search Data 1                  | Search Type 1                  | Search Type 2                     | Red Search Data 2 | Search Type 3 | Red Search Data 3                                  |
      | 00-C-0133 | BEATON           | Potassium Test  | Contains any of these keywords | Serial Research Testing (CC, CRIS) | Contains all of these keywords | Starts with any of these keywords | Serial (CC, CRIS) | Exact Phrase  | Serial Testing or Serial/Research Testing Document |