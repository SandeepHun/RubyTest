@BTRIS_Unstable_Test
@MyPratice_Test
Feature: Laboratory Feature

  @Laboratory1

  Scenario Outline: 2.1 Laboratory Test Reports without red-search.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    And the user waits for 3 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "first login test" field on "Test/Page" page


    #Sign out.
    #And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-03 | NIHCCTEST        |

