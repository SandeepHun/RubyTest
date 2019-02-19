@BTRIS_Quick_Test
@EKG_Test_Report
Feature: BTRIS EKG Test Report

  @EKG_Test1

  Scenario Outline: 12.1 EKG Report testing without Any Observations.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user waits for 2 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the EKG test.
    And the user waits for 5 seconds
    And the user clicks on "btris: ekg test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 5 seconds
    #verify the select report page.
    And the user must see "EKG Criteria" text in "btris: ekg report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "select ekg subject top button" element on "Btris/Portal" page
    And the user waits for 7 seconds
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user waits for 25 seconds
    And the user must see "Subject Name" text in "report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user verify the ekg report on the table
    #Click on the download report button.
    #And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-05 | NIHCCTEST        |

  @EKG_Test2

  Scenario Outline: 12.2 EKG Report testing with ALL Observations.
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
    #click on the EKG test.
    And the user waits for 3 seconds
    And the user clicks on "btris: ekg test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 4 seconds
    #verify the select report page.
    And the user must see "EKG Criteria" text in "btris: ekg report page" field on "Btris/Portal" page
    And the user waits for 5 seconds
    #click on the select all check box.
    And the user clicks on "select all ekg observation checkbox" element on "Btris/Portal" page
    And the user waits for 5 seconds
    #Clcik on the select report button.
    And the user clicks on "select ekg subject bottom button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user waits for 7 seconds
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user waits for 25 seconds
    And the user must see "Subject Name" text in "report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user verify the ekg report on the table
    #Click on the download report button.
    #And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-05 | NIHCCTEST        |