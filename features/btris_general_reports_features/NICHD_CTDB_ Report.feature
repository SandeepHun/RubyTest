@BTRIS_Quick_Test
 @NICHD_CTDB_Report_Test
Feature: NICHD - CTDB Report Feature

  @NICHD_CTDB_Report1

  Scenario Outline: 5.1 NICHD/CTDB Report Test.
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
    #click on the NICHD/CTDB Forms.
    And the user waits for 3 seconds
    And the user clicks on "nichd ctdb forms" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "NICHD/CTDB Forms Criteria" text in "btris: nichd ctdb forms page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user waits for 5 seconds
    And the user enters "00-CH-0127" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "ABDELGHANI" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the document report table.
    And the user waits for 15 seconds
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "NICHD/CTDB Forms Results Preview - Standard" text in "nichd ctdb forms report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the nichd ctdb forms report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "NICHD/CTDB Forms Results Preview - Standard" text in "nichd ctdb forms report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-02 | NIHCCTEST        |

  @NICHD_CTDB_Report2

  Scenario Outline: 5.2 NICHD/CTDB Report Test with all searched protocols.
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
    #click on the NICHD/CTDB Forms.
    And the user waits for 3 seconds
    And the user clicks on "nichd ctdb forms" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "NICHD/CTDB Forms Criteria" text in "btris: nichd ctdb forms page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user waits for 4 seconds
    And the user enters "02-CH-0287" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "ANDERSON" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the document report table.
    And the user waits for 20 seconds
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "NICHD/CTDB Forms Results Preview - Standard" text in "nichd ctdb forms report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the nichd ctdb forms report on the table with all protocol
    #Click on the download report button.
    #And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "NICHD/CTDB Forms Results Preview - Standard" text in "nichd ctdb forms report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-02 | NIHCCTEST        |
