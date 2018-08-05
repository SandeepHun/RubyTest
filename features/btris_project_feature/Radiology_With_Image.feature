@BTRIS_Quick_Test
  @Radiology_With_Image
  Feature: BTRIS Radiology

  @Radiology1

  Scenario Outline: 1.0 Radiology with image including demographic data.
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
    #click on the radiology test.
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Report" text in "btris: radiology filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify radiology report results.
    And the user must see "Subject Name" text in "laboratory report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user click on the radiology record to verify the image
    And the switch to new tab page
    #Verify and validate the image.
    And the user must see "ADAMS MARI ELIZABETH" text in "radiology image display" field on "Btris/Portal" page
    #Verify image date
    And the user must see "10/18/2011" text in "report creation date" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject    | Filtered Subject |
      | 00-AR-0222 | ADAMS            |

  @Radiology2

  Scenario Outline: 1.2 Radiology without image without demographic data.
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
    #click on the radiology test.
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user must see "Radiology Report" text in "btris: radiology filter report page" field on "Btris/Portal" page
    #Uncheck the demographic data.
    And the user clicks on "demographic data check box" element on "Btris/Portal" page
    #Click on the select subject button.
    And the user clicks on "btris: select subject button" element on "Btris/Portal" page
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify radiology report results.
    And the user must see "Subject Name" text in "laboratory report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user click on the radiology record to verify the image
    And the switch to new tab page
    And the user must see "ADAMS MARI ELIZABETH" text in "radiology image display" field on "Btris/Portal" page
    #Verify and validate the image.
    And the user must see "ADAMS MARI ELIZABETH" text in "radiology image display" field on "Btris/Portal" page
    And the return to main page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject    | Filtered Subject |
      | 00-AR-0222 | ADAMS            |