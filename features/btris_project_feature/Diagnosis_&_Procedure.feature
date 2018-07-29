@BTRIS_Quick_Test
  @Diagnosis_And_Procedure
Feature: Diagnosis & Procedure Feature

  @Diagnosis1

  Scenario Outline: 3.1 Diagnosis & Procedure Report without Observation Types.
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
    #click on the diagnosis and procedure Test.
    And the user clicks on "diagnosis and procedure test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Diagnosis & Procedure Report" text in "btris: diagnosis and procedure filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: diagnosis and procedure select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the diagnosis report table.
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Diagnosis & Procedure Results Preview - Standard" text in "diagnosis and procedure report page" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the diagnosis and procedure report on the table
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Diagnosis & Procedure Results Preview - Standard" text in "diagnosis and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | Filtered Subject |
      | 00-C-0133 | BEATON           |

  @Diagnosis2

  Scenario Outline: 3.2 Diagnosis & Procedure Report including all Observation Types.
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
    #click on the diagnosis and procedure Test.
    And the user clicks on "diagnosis and procedure test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Diagnosis & Procedure Report" text in "btris: diagnosis and procedure filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: diagnosis and procedure select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the diagnosis report table.
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Diagnosis & Procedure Results Preview - Standard" text in "diagnosis and procedure report page" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the diagnosis and procedure report on the table
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Diagnosis & Procedure Results Preview - Standard" text in "diagnosis and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Click on Enter Report Criteria.
    And the user clicks on "top nav: enter report criteria" element on "Btris/Portal" page
    #click on select report.
    And the user clicks on "bottom button: select subject" element on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report" element on "Btris/Portal" page
    #Verify the diagnosis report table.
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Diagnosis & Procedure Results Preview - Standard" text in "diagnosis and procedure report page" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the diagnosis and procedure report on the table 2
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Diagnosis & Procedure Results Preview - Standard" text in "diagnosis and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | Filtered Subject | Filtered Subject 2 |
      | 00-C-0133 | ANDERSON         | AABERG             |
