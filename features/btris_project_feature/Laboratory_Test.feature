@Laboratory
Feature: Laboratory Feature

  @Laboratory1

  Scenario Outline: 2.0 Laboratory Test Reports.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Login to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user enters "<Test User Name>" and "<Password>" to login to btris
    #Verify the condition page to accespt it.
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user clicks on "laboratory test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Laboratory Report" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: laboratory select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify report page.
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the laboratory report on the table
    #Sign out.
    And the user logged out of the system

    Examples:
      | Test User Name | Password        | Subject   | Filtered Subject |
      | btris_test2    | Nomorecognos11$ | 00-C-0018 | HUSTON           |
