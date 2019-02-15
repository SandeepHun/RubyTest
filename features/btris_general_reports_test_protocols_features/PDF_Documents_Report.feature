@BTRIS_Quick_Test
@PDF_Documents_Report
Feature: BTRIS PDF Documents Test Report

  @PDF_Documents_Repor1

  Scenario Outline: 5.1 NICHD/CTDB Report Test without PDF/Scanned Documents.
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
    #click on the  PDF Documents.
    And the user waits for 3 seconds
    And the user clicks on "pdf documents" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 6 seconds
    #verify the select report page.
    And the user must see "PDF Documents Criteria" text in "btris: pdf documents page" field on "Btris/Portal" page
    #Clcik on the select report button.
    #And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Click on Select All for PDF/Scanned Documents.
    And the user clicks on "pdf documents select all button" element on "Btris/Portal" page
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user waits for 18 seconds
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user waits for 28 seconds
   #Verify the document report table.
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "PDF Documents Results Preview - Standard" text in "pdf documents result page" field on "Btris/Portal" page
    #And the user verify the pdf documents report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "PDF Documents Results Preview - Standard" text in "pdf documents result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-05 | NIHCCTEST        |

  @PDF_Documents_Repor2

  Scenario Outline: 5.2 NICHD/CTDB Report Test with All PDF/Scanned Documents.
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
    #click on the  PDF Documents.
    And the user waits for 3 seconds
    And the user clicks on "pdf documents" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user waits for 7 seconds
    #verify the select report page.
    And the user must see "PDF Documents Criteria" text in "btris: pdf documents page" field on "Btris/Portal" page
    #Click on Select All for PDF/Scanned Documents.
    And the user clicks on "pdf documents select all button" element on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user waits for 15 seconds
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user waits for 25 seconds
    #Verify the document report table.
    And the user must see "Subject Name" text in "diagnosis report table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "PDF Documents Results Preview - Standard" text in "pdf documents result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user must see "BTRIS-TEST-05" text in "search subject pn" field on "Btris/Portal" page
    #And the user verify the pdf documents report on the table
    #Click on the download report button.
    #And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "PDF Documents Results Preview - Standard" text in "pdf documents result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-05 | NIHCCTEST        |
