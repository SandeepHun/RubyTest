@BTRIS_Unstable_Test
@ReferenceList_Pathology_Test.2
Feature: Laboratory Feature Reference List

  @ReferenceListPathology1

  Scenario Outline: 1.1 Adding Search Term List Document and Reference List Documents.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the verify if existing search term data exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user waits for 6 seconds
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user waits for 4 seconds
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user waits for 6 seconds
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user waits for 4 seconds
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    And the user waits for 4 seconds
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 13 seconds
    And the user clicks on "reference list" element on "Btris/Portal" page
    #Filter and remove Reference list added by the test.
    And the user enters "<Reference Name>" into "reference list: search box" on "Btris/Portal" page
    And the verify if existing reference list data exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user enters "<Reference Name>" into "reference list: list name field" on "Btris/Portal" page
    And the user clicks on "reference list: overwrite checkbox" element on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "reference list: description" text area box on "Btris/Portal" page
    And the user enters "<Reference Date Type>" into "reference list: date type" on "Btris/Portal" page
    And user attached "<Reference Term Document>" file into "reference list: brows upload" on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user clicks on "reference list: upload button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data   | List Name          | User                     | Domain                          | Search Term Document            | Reference Name    | Reference Date Type | Reference Term Document      |
      | Term1 Test Data DN | Term1 Test Data DN | BTRIS_TEST2 - TEST2 null | Pathology Consolidated Concepts | Pathology_Search_Term_List.xlsx | Reference List DN | MM/DD/YYYY          | Reference_List_Template.xlsx |


  @ReferenceListPathology2.1

  Scenario Outline: 1.2 Running Reports Search for Search Term List Document and Reference List Documents Reports, 10days.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the reference list pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs              | Number of Values | Number of Days Before | Reference Name    | Number of Days After |
      | Term1 Test Data DN | 10               | 90                    | Reference List DN | 80                   |



  @ReferenceListPathology3

  Scenario Outline: 1.3 Running Reports Search for Search Term List Document and Reference List Documents Reports, 15 days.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the reference list pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs              | Number of Values | Number of Days Before | Reference Name    | Number of Days After |
      | Term1 Test Data DN | 15               | 60                    | Reference List DN | 40                   |



  @ReferenceListPathology4

  Scenario Outline: 1.4 Running Reports Search for Search Term List Document and Reference List Documents Reports, 5 days.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the reference list pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs              | Number of Values | Number of Days Before | Reference Name    | Number of Days After |
      | Term1 Test Data DN | 5                | 30                    | Reference List DN | 30                   |


  @ReferenceListPathology5

  Scenario Outline: 1.5 Running Reports Search for Search Term List Document and Reference List Documents Reports, 1 day.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the reference list pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs              | Number of Values | Number of Days Before | Reference Name    | Number of Days After |
      | Term1 Test Data DN | 1                | 15                    | Reference List DN | 15                   |


  @ReferenceListPathology6

  Scenario Outline: 1.6 Running Reports Search for Search Term List Document and Reference List Documents Reports, 7 day.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the reference list pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs              | Number of Values | Number of Days Before | Reference Name    | Number of Days After |
      | Term1 Test Data DN | 7                | 365                   | Reference List DN | 365                  |

  @ReferenceListPathology7

  Scenario Outline: 1.7 Running Reports Search for Search Term List Document and Reference List Documents Reports, 13 day.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the reference list pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs              | Number of Values | Number of Days Before | Reference Name    | Number of Days After |
      | Term1 Test Data DN | 13               | 200                   | Reference List DN | 150                  |

  @ReferenceListPathology8

  Scenario Outline: 1.8 Running Reports Search for Search Term List Document and Reference List Documents Reports, 8 day.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user verify the reference list pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs              | Number of Values | Number of Days Before | Reference Name    | Number of Days After |
      | Term1 Test Data DN | 8                | 200                   | Reference List DN | 150                  |


  @ReferenceListPathology9

  Scenario Outline: 1.8 Adding Search Term List Document and Reference List Documents with negative MRN Number.
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
    And the user waits for 2 seconds
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Pathology Test.
    And the user waits for 2 seconds
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the verify if existing search term data exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user waits for 6 seconds
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user waits for 4 seconds
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user waits for 4 seconds
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    And the user waits for 4 seconds
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 4 seconds
    And the user must see "Line 1 - MRI Brain (CC, RADNET) is not in domain Laboratory" text in "laboratory error message line 1" field on "Btris/Portal" page
    And the user must see "Line 2 - CT Abdomen (CC, MIS) is not in domain Laboratory" text in "laboratory error message line 2" field on "Btris/Portal" page
    And the user clicks on "upload cancel button" element on "Btris/Portal" page
    And the user clicks on "reference list" element on "Btris/Portal" page
    #Filter and remove Reference list added by the test.
    And the user enters "<Reference Name>" into "reference list: search box" on "Btris/Portal" page
    And the verify if existing reference list data exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user enters "<Reference Name>" into "reference list: list name field" on "Btris/Portal" page
    And the user clicks on "reference list: overwrite checkbox" element on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "reference list: description" text area box on "Btris/Portal" page
    And the user enters "<Reference Date Type>" into "reference list: date type" on "Btris/Portal" page
    And user attached "<Reference Term Document Negative>" file into "reference list: brows upload" on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user clicks on "reference list: upload button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user must see "Line 2 - Unknown MRN" text in "reference document with negative mrn number" field on "Btris/Portal" page
    And user attached "<Reference Term Document>" file into "reference list: brows upload" on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user clicks on "reference list: upload button" element on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data   | List Name          | User                     | Domain                          | Search Term Document            | Reference Name    | Reference Date Type | Reference Term Document      | Reference Term Document Negative      |
      | Term1 Test Data DN | Term1 Test Data DN | BTRIS_TEST2 - TEST2 null | Pathology Consolidated Concepts | Pathology_Search_Term_List.xlsx | Reference List DN | MM/DD/YYYY          | Reference_List_Template.xlsx | Reference_List_Negative_Template.xlsx |
