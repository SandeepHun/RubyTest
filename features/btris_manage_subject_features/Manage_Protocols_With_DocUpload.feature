@BTRIS_Quick_Test
@Manage_Protocol
Feature: Manage Protocol Feature

  @ManagingProtocol.1

  Scenario Outline: 1.1 Verify and validate Consented protocols.
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
    And the user waits for 13 seconds
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

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      |
      | BTRIS-TEST-00 |
      | 00-C-0018     |
      | 00-C-0181     |
      | BTRIS-TEST-02 |
      | BTRIS-TEST-04 |


  @ManagingProtocol1.2

  Scenario Outline: 1.2 Managing and existing subject in a protocol.
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
    And the user waits for 13 seconds
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
    And the user enters "<MRN>" into "subject search field" on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user must see "<MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user clicks on "subject consented switch" element on "Manage/Subjects" page
    #And the user enters "Todays Date" into "initial consent date" on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user clicks on "back error" element on "Manage/Subjects" page

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | MRN     |
      | BTRIS-TEST-00 | 4859613 |



  @ManagingProtocol2.2

  Scenario Outline: 2.2 Managing and existing subject in a protocol.
  #Login to the system.
    And the user waits for 3 seconds
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
    And the user waits for 13 seconds
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
    And the user enters "<MRN>" into "subject search field" on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user must see "<MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user clicks on "subject consented switch" element on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user enters "Todays Date" into "initial consent date" on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user clicks on "initial consent info icon" element on "Manage/Subjects" page
    And the user must see "<Content Info>" text in "initial consent info pop-up" field on "Manage/Subjects" page
    And the user clicks on "initial consent info pop-up close button" element on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user clicks on "back error" element on "Manage/Subjects" page
    And the user waits for 2 seconds

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | MRN     | Content Info          |
      | BTRIS-TEST-00 | 4859613 | About Initial Consent |


  @AddSubjects1.3

  Scenario Outline: 1.3 Adding an Invalid subject to an existing protocol using MRN.
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
    And the user waits for 13 seconds
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
    And the user enters "<MRN>" into "subject search field" on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user must see "<MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user clicks on "add subject button" element on "Manage/Subjects" page
    And the user enters "<Invalid MRN Number>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user must see "<MRN Validation Message 1>" text in "display mrn message header" field on "Manage/Subjects" page
    And the user enters "<New MRN Number>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user must see "<MRN Validation Message 2>" text in "display mrn message header" field on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user clicks on "back error" element on "Manage/Subjects" page
    And the user waits for 2 seconds

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | MRN     | New MRN Number      | MRN Validation Message 1             | Invalid MRN Number | MRN Validation Message 2               |
      | BTRIS-TEST-00 | 4859613 | 656554,987675,98987 | We've noticed that 1 MRN is invalid. | 67654342           | We've noticed that 3 MRNs are invalid. |


  @AddSubjects1.4

  Scenario Outline: 1.4 Adding an MRN that already exist to a protocol.
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
    And the user waits for 13 seconds
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
    And the user enters "<MRN>" into "subject search field" on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user must see "<MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user clicks on "add subject button" element on "Manage/Subjects" page
    And the user enters "<MRN>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user must see "<Existing MRN Validation Message>" text in "display mrn message header" field on "Manage/Subjects" page
    And the user waits for 3 seconds
    And the user clicks on "back error" element on "Manage/Subjects" page
    And the user waits for 2 seconds

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | MRN     | Existing MRN Validation Message                       |
      | BTRIS-TEST-00 | 7806760 | We've noticed that 1 MRN is already in BTRIS-TEST-00. |

