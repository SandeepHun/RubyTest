@BTRIS_Quick_Prod_Test
@Pathology_Test_Prod_Data
Feature: BTRIS Pathology Test Feature Prod Data

  @Pathology_Prod_Data1

  Scenario Outline: 1.1 Pathology Test Reports without ALL Test with non-test protocols.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: pathology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: pathology report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Pathology Criteria" text in "btris: pathology report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 4 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system


    Examples:
      | Subject   | Filtered Subject |
      | 00-C-0078 | ALDERMAN         |


  @Pathology_Prod_Data2

  Scenario Outline: 2.2 Pathology Test Reports without ALL Test with non-test protocols.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: pathology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: pathology report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Pathology Criteria" text in "btris: pathology report page" field on "Btris/Portal" page
    #Uncheck the select all pathology test.
    And the user remembers the value of "pathology test list" field into "Pathology Tests" on "Btris/Portal" page
    And the user clicks on "select all pathology test" element on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 4 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system


    Examples:
      | Subject   | Filtered Subject |
      | 00-C-0078 | ALDERMAN         |
