@Radiology_With_Image
Feature: Phis Feature

  @Btris1

Scenario Outline: 9.0 Imports sample feature test.
  #Login to the system.
  Given the user navigates to / on browser
  And the user must see "Login to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
  And the user clicks on "btris home: login button" element on "Btris/Portal" page
  And the user enters "<Test User>" into "btris: user name" on "Btris/Portal" page
  And the user enters "<Password>" into "btris: password" on "Btris/Portal" page
  And the user clicks on "btris: login to dashboard button" element on "Btris/Portal" page
  And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
  And the user clicks on "btris: accept button" element on "Btris/Portal" page

  #And the user click on accept on the warning message if applicable

  #Sign out.
  And the user logged out of the system

  Examples:
    | Test User   | Password        |
    | btris_test2 | Nomorecognos11$ |

  @Btris2

  Scenario Outline: 9.0 Imports sample feature test.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Login to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user clicks on "btris home: login button" element on "Btris/Portal" page
    And the user enters "<Test User>" into "btris: user name" on "Btris/Portal" page
    And the user enters "<Password>" into "btris: password" on "Btris/Portal" page
    And the user clicks on "btris: login to dashboard button" element on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    And the user clicks on "btris: accept button" element on "Btris/Portal" page

    #And the user click on accept on the warning message if applicable



  #Sign out.
    And the user logged out of the system


    Examples:
      | Test User   | Password        |
      | btris_test2 | Nomorecognos11$ |