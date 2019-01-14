@BTRIS_Quick_Test
  @Radiology_Administration
Feature: Radiology Administration Feature

  @Radiology_Administration1

  Scenario Outline: 1.1 Radiology  Administration Report Without Radiology Tests.
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
    #Verify and click on Admin Report.
    And the user clicks on "navigation: admin report" element on "Btris/Portal" page
    #click on the  Radiology Administration Test.
    And the user waits for 3 seconds
    And the user clicks on "report: radiology administration" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Administration Criteria" text in "btris: radiology administrative report filter page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
    And the user waits for 25 seconds
#    #Verify the document report table.
#    And the user must see "Subject Name" text in "admin report table: subject name column" field on "Btris/Portal" page
#    #Verify report page.
#    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
#    #Verify and validate the report display and click on the the image to view.
#    And the user verify the radiology administration report on the table
#    #Click on the download report button.
#    And the user clicks on "download full report button" element on "Btris/Portal" page
#    #click on the open report in another tab button.
#    And the user clicks on "admin: open results in new tab button" element on "Btris/Portal" page
#    And the switch to new tab page
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-00 | NIHCCTEST        |


  @Radiology_Administration2

  Scenario Outline: 1.2 Radiology  Administration Report With Radiology Image.
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
    #Verify and click on Admin Report.
    And the user clicks on "navigation: admin report" element on "Btris/Portal" page
    #click on the  Radiology Administration Test.
    And the user waits for 3 seconds
    And the user clicks on "report: radiology administration" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Administration Criteria" text in "btris: radiology administrative report filter page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
#    And the user waits for 20 seconds
#    #Verify the document report table.
#    And the user must see "Subject Name" text in "admin report table: subject name column" field on "Btris/Portal" page
#    #Verify report page.
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
#    And the user clicks on "admin: administrative report image" element on "Btris/Portal" page
#    #And the user verify the radiology administration report with image
#    And the switch to new tab page
#    And the user waits for 5 seconds
#    And the user must see "AARON EVAN CHRISTOPHER" text in "admin: administrative report image report" field on "Btris/Portal" page
#    And the return to main page
    And the user waits for 3 seconds
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-00 | NIHCCTEST        |


  @Radiology_Administration3

  Scenario Outline: 1.3 Radiology  Administration Report With Red Search.
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
    #Verify and click on Admin Report.
    And the user clicks on "navigation: admin report" element on "Btris/Portal" page
    #click on the  Radiology Administration Test.
    And the user waits for 3 seconds
    And the user clicks on "report: radiology administration" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Administration Criteria" text in "btris: radiology administrative report filter page" field on "Btris/Portal" page
    #Clcik on the Add Radiology Test button.
    And the user clicks on "admin: add radiology report tests button" element on "Btris/Portal" page
    And the user enters "Imaging by Procedure Type" into "admin: radiology search text box" on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "admin: radiology search button" element on "Btris/Portal" page
    #Verify search data.
    And the user waits for 15 seconds
    #And the user must see "Imaging by Procedure Type" text in "admin: radiology search red search result" field on "Btris/Portal" page
    And the user clicks on "admin: radiology red search done button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Clcik on the select report button.
    And the user clicks on "btris: top select button" element on "Btris/Portal" page
    And the user waits for 25 seconds
    #Verify the document report table.
#    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
#    And the user clicks on "admin: administrative report image" element on "Btris/Portal" page
#    And the user waits for 8 seconds
#    #And the user verify the radiology administration report with image
#    And the switch to new tab page
#    And the user waits for 5 seconds
#    And the user must see "AARON EVAN CHRISTOPHER" text in "admin: administrative report image report" field on "Btris/Portal" page
#    And the return to main page
    And the user waits for 3 seconds
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-00 | NIHCCTEST        |