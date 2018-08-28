@NIAAA_Assessment_Report
  @NIAAA_Assessment
Feature: NIAAA Assessment

  @NIAAA1

  Scenario Outline: 1.1 NIAAA Assessment Report testing.
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
    #click on the assessment test.
    And the user clicks on "btris: assessment report test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "NIAAA Assessment Report" text in "btris: assessment filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "assessment report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "NIAAA Assessment Report Results Preview - Standard" text in "assessment report page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user verify the laboratory report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject    | Filtered Subject |
      | 08-AA-0137 | ADEBISI          |

  @NIAAA2

  Scenario Outline: 1.2 NIAAA Assessment Report testing with ALL assessment.
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
    #click on the assessment test.
    And the user clicks on "btris: assessment report test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "NIAAA Assessment Report" text in "btris: assessment filter report page" field on "Btris/Portal" page
    And the user waits for 5 seconds
    #click on the select all check box.
    And the user clicks on "select all assessment button" element on "Btris/Portal" page
    #Clcik on the select report button.
    #And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user waits for 3 seconds
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "assessment report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "NIAAA Assessment Report Results Preview - Standard" text in "assessment report page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user verify the laboratory report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Test User Name | Password       | Subject    | Filtered Subject |
      | btris_test2    | Nomorecognos11 | 08-AA-0137 | ADEBISI          |