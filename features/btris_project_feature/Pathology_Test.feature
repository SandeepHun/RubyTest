@BTRIS_Quick_Test
  @Pathology_Test
Feature: Pathology Test Feature

  @Pathology1

  Scenario Outline: 10.1 Pathology Test Reports without ALL Test.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Login to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user clicks on "btris: pathology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Report" text in "btris: pathology report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user waits for 5 seconds
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | Filtered Subject |
      | 00-C-0133 | AGUILAR          |


  @Pathology2

  Scenario Outline: 10.2 Pathology Test Reports without ALL Test.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Login to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user clicks on "btris: pathology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Report" text in "btris: pathology report page" field on "Btris/Portal" page
    #Uncheck the select all pathology test.
    And the user clicks on "select all pathology test" element on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | Filtered Subject |
      | 00-C-0133 | AGUILAR          |