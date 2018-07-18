@Radiology_With_Image
Feature: BTRIS Radiology

  @RWI1

  Scenario Outline: 1.0 Radiology with image including demographic data.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Login to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user clicks on "btris home: login button" element on "Btris/Portal" page
    And the user enters "<Test User>" into "btris: user name" on "Btris/Portal" page
    And the user enters "<Password>" into "btris: password" on "Btris/Portal" page
    And the user clicks on "btris: login to dashboard button" element on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user must see "Radiology Report" text in "btris: radiology filter report page" field on "Btris/Portal" page
    And the user clicks on "btris: select subject button" element on "Btris/Portal" page
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user clicks on "check all button" element on "Btris/Portal" page
    And the user clicks on "check all button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user waits for 2 minutes
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    And the user clicks on "download full report button" element on "Btris/Portal" page
    And the user click on the radiology record to verify the image
    And the switch to new tab page
    And the user must see "AABEL BRAD COLLETT" text in "radiology image display" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Test User   | Password        | Subject    | Filtered Subject |
      | btris_test2 | Nomorecognos11$ | 00-AR-0222 | ADAMS            |

  @RWI2

  Scenario Outline: 1.2 Radiology without image including demographic data.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Login to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user clicks on "btris home: login button" element on "Btris/Portal" page
    And the user enters "<Test User>" into "btris: user name" on "Btris/Portal" page
    And the user enters "<Password>" into "btris: password" on "Btris/Portal" page
    And the user clicks on "btris: login to dashboard button" element on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user must see "Radiology Report" text in "btris: radiology filter report page" field on "Btris/Portal" page
    #Uncheck the demographic data.
    And the user clicks on "demographic data check box" element on "Btris/Portal" page
    #Click on the select subject button.
    And the user clicks on "btris: select subject button" element on "Btris/Portal" page
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user clicks on "check all button" element on "Btris/Portal" page
    And the user clicks on "check all button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user waits for 2 minutes
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    And the user clicks on "download full report button" element on "Btris/Portal" page
    And the user click on the radiology record to verify the image
    And the switch to new tab page
    And the user must see "AABEL BRAD COLLETT" text in "radiology image display" field on "Btris/Portal" page
    And the return to main page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Test User   | Password        | Subject    | Filtered Subject |
      | btris_test2 | Nomorecognos11$ | 00-AR-0222 | ADAMS            |


