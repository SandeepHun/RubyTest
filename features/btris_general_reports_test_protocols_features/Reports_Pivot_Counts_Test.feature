@BTRIS_Quick_Test
@Pivot_Counts_Test
Feature: BTRIS Pivot Counts Test Report

  @EKG_Pivot_Counts1

  Scenario Outline: 12.1 EKG Report testing the pivot counts for subjects and records.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user waits for 2 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the EKG test.
    And the user waits for 3 seconds
    And the user clicks on "btris: ekg test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 5 seconds
    #verify the select report page.
    And the user must see "EKG Criteria" text in "btris: ekg report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "select ekg subject top button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user remembers the value of "report table: subject name" field into "Subject Name" on "Btris/Portal" page
    And the user must see "Subject Name" text in "report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    #Verify pivot count for all reports views.
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Report View 1>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Report View 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Report View 2>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Report View 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Report View 3>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Report View 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Report View 4>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Report View 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject | Report View 1            | Report View 2                     | Report View 2                     | Report View 0 | Report View 3 | Report View 4       |
      | BTRIS-TEST-05 | NIHCCTEST        | Pivot By Day & Order Set | Pivot By Day & Order Set Detail 1 | Pivot By Day & Order Set Detail 1 | Standard      | Pivot By Day  | Pivot By Day & Time |
      | 00-AR-0222    | ACEVEDO          | Pivot By Day & Order Set | Pivot By Day & Order Set Detail 1 | Pivot By Day & Order Set Detail 1 | Standard      | Pivot By Day  | Pivot By Day & Time |


  @Laboratory_Pivot_Counts2

  Scenario Outline: 1.2 Laboratory Test Reports, testing the pivot counts for subjects and records.
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
    #click on the Laboratory Test.
    And the user waits for 4 seconds
    And the user clicks on "laboratory test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user remembers the value of "laboratory report table: subject name" field into "Subject Name" on "Btris/Portal" page
    And the user must see "Subject Name" text in "laboratory report table: subject name" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory and procedure report page" field on "Btris/Portal" page
    #Verify pivot count for all reports views.
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Report View 1>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Report View 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Report View 2>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Report View 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Report View 3>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Report View 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Report View 4>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Report View 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject | Report View 1            | Report View 2                     | Report View 2                     | Report View 0 | Report View 3 | Report View 4       |
      | BTRIS-TEST-03 | NIHCCTEST        | Pivot By Day & Order Set | Pivot By Day & Order Set Detail 1 | Pivot By Day & Order Set Detail 1 | Standard      | Pivot By Day  | Pivot By Day & Time |
      | 00-C-0181     | ABBOTT           | Pivot By Day & Order Set | Pivot By Day & Order Set Detail 1 | Pivot By Day & Order Set Detail 1 | Standard      | Pivot By Day  | Pivot By Day & Time |
