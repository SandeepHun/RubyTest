@BTRIS_Quick_Test
@Vital_Signs_Report
Feature: BTRIS Vital Signs Test Report

  @VitalSign1

  Scenario Outline: 6.1 Vital Signs Report with Demographic.
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
    #click on the Vital Signs Test.
    And the user waits for 4 seconds
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user remembers the value of "vital signs test table: subject name column" field into "Subject Name" on "Btris/Portal" page
    And the user must see "Subject Name" text in "vital signs test table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "vital signs test result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the vital signs report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Vital Signs Results Preview - Standard" text in "vital signs test result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-04 | NIHCCTEST        |



  @VitalSign2

  Scenario Outline: 6.2 Vital Signs Report with Demographic.
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
    #click on the Vital Signs Test.
    And the user waits for 4 seconds
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user waits for 4 seconds
    #Uncheck the include demographic report radio button.
    And the user clicks on "include demographic report radio button" element on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user remembers the value of "vital signs test table: subject name column" field into "Subject Name" on "Btris/Portal" page
    And the user must see "Subject Name" text in "vital signs test table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "vital signs test result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the vital signs report on the table
    #And the user clicks button with text "Open in New Window" on "Btris/Portal" page
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Vital Signs Results Preview - Standard" text in "vital signs test result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-04 | NIHCCTEST        |
