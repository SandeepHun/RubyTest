@BTRIS_Unstable_Test_RL12
@Subject_List_Laboratory_Test
Feature: BTRIS Subject List Template Report

  @Subject_List1

  Scenario Outline: 1.1 Adding and maneging Subject List Template.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user clicks on "reference list laboratory" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #verify the select report page.
    And the user must see "Laboratory Criteria" text in "reference list laboratory report filter page" field on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user clicks on "left nav: subject list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Subject List data>" into "find subject list search box" on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user verify if existing subject "<Subject List data>" data exist and remove it
    And the user clicks on "subject list upload button" element on "Btris/Portal" page
    And the user waits for 6 seconds
    And the user enters "<User>" into "subject list: user field" on "Btris/Portal" page
    And the user waits for 4 seconds
    And the user clicks on "subject list: user" element on "Btris/Portal" page
    And the user waits for 6 seconds
    And the user clicks on "subject list overwrite checkbox" element on "Btris/Portal" page
    And the user waits for 4 seconds
    And the user enters "<List Name>" into "subject list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "subject list: description" text area box on "Btris/Portal" page
    And the user waits for 4 seconds
    And user attached "<Subject List Document>" file into "subject list: brows upload" on "Btris/Portal" page
    And the user clicks on "subject list: upload doc button" element on "Btris/Portal" page
    And the user waits for 7 seconds

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject List data         | List Name                 | User                     | Subject List Document |
      | Subject List Test Data DN | Subject List Test Data DN | BTRIS_TEST2 - TEST2 null | Subject_List_Doc.xlsx |

