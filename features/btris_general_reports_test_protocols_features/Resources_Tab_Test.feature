@BTRIS_Quick_Prod_Test
@Resources_Menu
Feature: BTRIS Resources Menu Links Report

  @Resource_Tabl.1

  Scenario Outline: 1.1 Verify and validate Training page under Resources.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user clicks on "resource dropdown" element on "Resource" page
    And the user clicks on "training link" element on "Resource" page
    And the user remembers the value of "resource on header" field into "Resource" on "Resource" page
    And the user must see "<Resource Page>" text in "training page" field on "Resource" page
    And the user must see "<Page>" text in "resource on header" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user must see "<Topic>" text in "training page topic header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user clicks on "resource dropdown" element on "Resource" page
    And the user clicks on "training link" element on "Resource" page
    And the user remembers the value of "resource on header" field into "Resource" on "Resource" page
    And the user must see "<Page>" text in "resource on header" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user must see "<Topic>" text in "training page topic header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page

    #Sign out.
    And the user logged out of the system
    Examples:
      | Resource Page | Page     | Topic                  | Header                                             |
      | TRAINING      | Resource | Group Classes Schedule | Training, user guides, and other helpful materials |


  @Resource_Tabl.2

  Scenario Outline: 1.2 Verify and validate References page under Resources.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user clicks on "resource dropdown" element on "Resource" page
    And the user clicks on "references link" element on "Resource" page
    And the user remembers the value of "references page" field into "References" on "Resource" page
    And the user must see "<Page Tittle>" text in "references page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user clicks on "resource dropdown" element on "Resource" page
    And the user clicks on "references link" element on "Resource" page
    And the user remembers the value of "references page" field into "References" on "Resource" page
    And the user must see "<Page Tittle>" text in "references page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Sign out.
    And the user logged out of the system
    Examples:
      | Page Tittle | Header                                             |
      | REFERENCES  | Training, user guides, and other helpful materials |


  @Resource_Tabl.3

  Scenario Outline: 1.3 Verify and validate User Guides page under Resources.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user clicks on "resource dropdown" element on "Resource" page
    And the user clicks on "user guides link" element on "Resource" page
    And the user remembers the value of "user guides page" field into "References" on "Resource" page
    And the user must see "<Page Tittle>" text in "user guides page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user clicks on "resource dropdown" element on "Resource" page
    And the user clicks on "user guides link" element on "Resource" page
    And the user remembers the value of "user guides page" field into "References" on "Resource" page
    And the user must see "<Page Tittle>" text in "user guides page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Sign out.
    And the user logged out of the system
    Examples:
      | Page Tittle | Header                                             |
      | USER GUIDES | Training, user guides, and other helpful materials |

  @Resource_Tabl.4

  Scenario Outline: 1.4 Verify and validate Tutorials page under Resources.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user clicks on "resource dropdown" element on "Resource" page
    And the user clicks on "tutorials link" element on "Resource" page
    And the user remembers the value of "tutorials page" field into "Tutorials" on "Resource" page
    And the user must see "<Page Tittle>" text in "tutorials page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user clicks on "resource dropdown" element on "Resource" page
    And the user clicks on "tutorials link" element on "Resource" page
    And the user remembers the value of "tutorials page" field into "Tutorials" on "Resource" page
    And the user must see "<Page Tittle>" text in "tutorials page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Page Tittle | Header                                             |
      | TUTORIALS   | Training, user guides, and other helpful materials |
