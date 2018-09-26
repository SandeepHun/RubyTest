@BTRIS_Quick_Test
  @Echocardiogram_Test
Feature: Echocardiogram

  @Echocardiogram1

  Scenario Outline: 14.1 Echocardiogram Report testing.
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
    #click on the Echocardiogram test.
    And the user clicks on "btris: echocardiogram test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 5 seconds
    #verify the select report page.
    And the user must see "Echocardiogram Report" text in "btris: echocardiogram report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user waits for 20 seconds
    And the user must see "Subject Name" text in "assessment report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Echocardiogram Results Preview - Standard" text in "echocardiogram result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user verify the echocardiogram report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | Filtered Subject |
      | 00-C-0078 | BOSTON           |

  @Echocardiogram2

  Scenario Outline: 14.1 Echocardiogram Report Including All echocardiogram Tests.
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
    #click on the Echocardiogram test.
    And the user clicks on "btris: echocardiogram test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 5 seconds
    #verify the select report page.
    And the user must see "Echocardiogram Report" text in "btris: echocardiogram report page" field on "Btris/Portal" page
    #Click on select all Echocardiogram Test.Scenario:
    And the user waits for 5 seconds
    And the user clicks on "select all echocardiogram tests checkbox" element on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user waits for 20 seconds
    And the user must see "Subject Name" text in "assessment report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Echocardiogram Results Preview - Standard" text in "echocardiogram result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user verify the echocardiogram report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | Filtered Subject |
      | 00-C-0078 | BOSTON           |
