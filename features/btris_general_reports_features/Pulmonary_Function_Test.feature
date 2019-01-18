@BTRIS_Quick_Test
@Pulmonary_Function_Test
Feature: Pulmonary Function Test

  @PulmonaryFT1

  Scenario Outline: 8.1 Pulmonary Function Test Lab Report without PFT Tests.
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
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the pulmonary report Test.
    And the user waits for 3 seconds
    And the user clicks on "btris: pulmonary test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pulmonary Function Test Lab Report Criteria" text in "btris: pulmonary report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user waits for 5 seconds
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user waits for 20 seconds
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pulmonary Function Test Lab Report Results Preview - Standard" text in "pulmonary result report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the pulmonary report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pulmonary Function Test Lab Report Results Preview - Standard" text in "pulmonary result report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-02 | NIHCCTEST        |


  @PulmonaryFT2

  Scenario Outline: 8.1 Pulmonary Function Test Lab Report with PFT Tests.
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
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the pulmonary report Test.
    And the user waits for 3 seconds
    And the user clicks on "btris: pulmonary test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pulmonary Function Test Lab Report Criteria" text in "btris: pulmonary report page" field on "Btris/Portal" page
    #Click on add PFT Tests and verify the data
    And the user clicks on "pulmonary: add pft test button" element on "Btris/Portal" page
    And the user waits for 6 seconds
    And the user can see text "Pulmonary Function Test (PFT) Panel and Panel Component"
    And the user clicks on "pulmonary: add pft done button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | PFT Test Data                                           |
      | Pulmonary Function Test (PFT) Panel and Panel Component |