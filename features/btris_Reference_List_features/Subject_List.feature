@BTRIS_Unstable_Test_RL12
@Subject_List_Laboratory_Test
Feature: Subject List

  @Subject_List1

  Scenario Outline: 1.1 Adding Subject List Documents.
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
      | Subject List data         | List Name                 | User                     | Domain          | Subject List Document | Reference Name    | Reference Date Type | Reference Term Document      |
      | Subject List Test Data DN | Subject List Test Data DN | BTRIS_TEST2 - TEST2 null | Lab Observation | Subject_List_Doc.xlsx | Reference List DN | MM/DD/YYYY          | Reference_List_Template.xlsx |









  @AddSubjects1.5

  Scenario Outline: 1.5 Adding a valid MRN to a protocol.
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
    #Verify and click on Manage Protocol.
    And the user clicks on "top navigation: manage subject" element on "Manage/Subjects" page
    And the user waits for 8 seconds
    #Search a protocol.
    And the user enters "<Protocol>" into "search protocol text box" on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user remembers the value of "number of subjects" field into "Consented Subjects" on "Manage/Subjects" page
    #Verify search result for the searched protocol.
    And the user must see "<Protocol>" text in "searched protocol table" field on "Manage/Subjects" page
    And the user clicks on "searched subject" element on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user must see "<Protocol>" text in "manage subject page" field on "Manage/Subjects" page
    And the user can see current value of "Consented Subjects" in "number of consented subjects" field on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user clicks on "add subject button" element on "Manage/Subjects" page
    And user attached "<Valid MRN Doc>" file into "brows button" on "Manage/Subjects" page
    And the user clicks on "upload subjects button" element on "Manage/Subjects" page
    And the user verify if MRN "<New MRN>" has already been added and "<Existing MRN Validation Message>" is display




    And the user enters "<New MRN>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user verify if MRN "<New MRN>" has already been added and "<Existing MRN Validation Message>" is display
    And the user must see "<New MRN Validation Message>" text in "display mrn message banner" field on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user clicks on "affirm consent button" element on "Manage/Subjects" page
    And the user must see "<Added Subject Success Message>" text in "affirm consent message" field on "Manage/Subjects" page
    And the user clicks on "return to subject button" element on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user enters "<New MRN>" into "manage subject protocol text box" on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user verify if the "<Protocol Validation Message>" is display on the table for "<New MRN>" added
    And the user must see "<New MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user clicks on "back error" element on "Manage/Subjects" page
    And the user waits for 2 seconds

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | Valid MRN Doc                       | New MRN Validation Message                                              | New MRN                 | Added Subject Success Message | Existing MRN Validation Message        | Protocol Validation Message |
      | BTRIS-TEST-04 | Valid_Subject_Attribution_MRN1.xlsx | The following 3 records are ready to be added to protocol BTRIS-TEST-04 | 4513952,6033830,4221904 | Success!                      | We've noticed that 1 MRN is already in | No subjects found           |
