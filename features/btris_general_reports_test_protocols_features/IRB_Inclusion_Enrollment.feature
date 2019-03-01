 @BTRIS_Quick_Test
@IRB_Inclusion_Enrollment_Test
Feature: BTRIS IRB Inclusion Enrollment Test Report

  @IRBInclusionEnrollment1

  Scenario Outline: 11.1 IRB Inclusion Enrollment.
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
    And the user waits for 3 seconds
    And the user remembers the value of "irb test" field into "IRB Criteria" on "Btris/Portal" page
    #click on the IRB Inclusion Test.
    And the user clicks on "btris: irb inclusion enrollment test" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "IRB Inclusion Enrollment Criteria" text in "btris: irb inclusion enrollment report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "irb inclusion select protocol" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify report page.
    And the user must see "Cumulative Inclusion Enrollment Report" text in "irb inclusion enrollment result page" field on "Btris/Portal" page
    #Verify searched protocol
    And the user remembers the value of "irb inclusion enrollment search protocol" field into "Subject" on "Btris/Portal" page
    And the user must see "<Subject>" text in "irb inclusion enrollment search protocol" field on "Btris/Portal" page
    #Click on the download report button.
    #And the user clicks on "download pd report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "irb inclusion open report in new tab" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Cumulative Inclusion Enrollment Report" text in "irb inclusion enrollment result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-01 | NIHCCTEST        |


  @IRBInclusionEnrollment2

  Scenario Outline: 11.1 IRB Inclusion Enrollment with different protocol.
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
    And the user waits for 3 seconds
    And the user remembers the value of "irb test" field into "IRB Criteria" on "Btris/Portal" page
    #click on the IRB Inclusion Test.
    And the user clicks on "btris: irb inclusion enrollment test" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "IRB Inclusion Enrollment Criteria" text in "btris: irb inclusion enrollment report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "irb inclusion search protocol2" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify report page.
    And the user must see "Cumulative Inclusion Enrollment Report" text in "irb inclusion enrollment result page" field on "Btris/Portal" page
    #Verify searched protocol
    And the user remembers the value of "irb inclusion enrollment search protocol" field into "Subject" on "Btris/Portal" page
    And the user must see "<Subject>" text in "irb inclusion enrollment search protocol" field on "Btris/Portal" page
    #Click on the download report button.
    #And the user clicks on "download pd report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "irb inclusion open report in new tab" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Cumulative Inclusion Enrollment Report" text in "irb inclusion enrollment result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-05 | NIHCCTEST        |