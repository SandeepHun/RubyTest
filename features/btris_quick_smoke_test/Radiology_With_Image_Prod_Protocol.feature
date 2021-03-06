@BTRIS_Quick_Smoke_Test
@Radiology_With_Image_Smoke_Test
  Feature: BTRIS Radiology Prod Data

  @Radiology_Smoke_Test1

  Scenario Outline: 1.0 Radiology with image including demographic data with non-test protocols.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the radiology test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: radiology filter report page" field into "Page Attribute" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Criteria" text in "btris: radiology filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 4 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify radiology report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user must see "<Subject>" text in "search subject s4" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    Examples:
      | Subject   | Filtered Subject | Radiology Image Name |
      | 00-C-0069 | AABERG           | BOWEN JEANNE DOLORES |
