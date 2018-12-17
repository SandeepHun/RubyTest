@BTRIS_Unstable_Test11
@Manage_Protocol
Feature: Manage Protocol Feature

  @ManagingProtocol1

  Scenario Outline: 1.1 Manage Subject: Turn on protocol.
  #Login to the system.
    Given the user navigates to .gov on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user waits for 4 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on Manage Protocol.
    And the user clicks on "top navigation: manage subject" element on "Manage/Subjects" page
    And the user waits for 8 seconds
    #Search a protocol.
    And the user enters "<Protocol>" into "search protocol text box" on "Manage/Subjects" page
    And the user waits for 2 seconds
    #Verify search result for the searched protocol.
    And the user must see "<Searched protocol result>" text in "searched protocol count" field on "Manage/Subjects" page
    And the user clicks on "searched protocol" element on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user must see "<Filtered MRN>" text in "searched protocol page" field on "Manage/Subjects" page

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | Searched protocol result | Filtered MRN |
      | BTRIS-TEST-00 | 1 Protocol               | 4122252      |