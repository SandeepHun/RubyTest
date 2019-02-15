@BTRIS_Quick_Test
  @Microbiology_Test
  Feature: BTRIS Microbiology Test Report

  @Microbiology1

  Scenario Outline: 13.1 Microbiology Report testing.
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
    #click on the Microbiology test.
    And the user waits for 4 seconds
    And the user clicks on "btris: microbiology test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 5 seconds
    #verify the select report page.
    And the user must see "Microbiology Criteria" text in "btris: microbiology report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user waits for 15 seconds
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user waits for 25 seconds
    And the user must see "Subject Name" text in "assessment report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Microbiology Results Preview - Standard" text in "microbiology result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user verify the microbiology report on the table
    #Click on the download report button.
    #And the user clicks on "download full report button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-02 | NIHCCTEST        |

  @Microbiology2

  Scenario Outline: 13.2 Microbiology with Blinded Results Report testing.
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
    #click on the Microbiology test.
    And the user waits for 4 seconds
    And the user clicks on "btris: microbiology test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 5 seconds
    #verify the select report page.
    And the user must see "Microbiology Criteria" text in "btris: microbiology report page" field on "Btris/Portal" page
    And the user selects "<Blinded Results>" from "blinded results drop down" drop down on "Btris/Portal" page
    And the user waits for 2 seconds
    #Clcik on the select report button.
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user waits for 15 seconds
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user waits for 25 seconds
    And the user must see "Subject Name" text in "assessment report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Microbiology Results Preview - Standard" text in "microbiology result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user verify the microbiology report on the table
    #Click on the download report button.
    #And the user clicks on "download full report button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject | Blinded Results |
      | BTRIS-TEST-02 | NIHCCTEST        | Show            |