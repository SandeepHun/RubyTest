@Role_Management
Feature: Role Management

  @Tc_61a.1

  Scenario Outline: 61a.1 Add a "Service Account Administrator" role under the "MISC" business area.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on user management.
    And the user clicks on "user management: left nav" element on "Role/Management" page
    #Click on manage user.
    And the user clicks on "manage user: left nav" element on "Role/Management" page
    #Select account type.
    And the user selects "<Account Type>" from "account type drop down" drop down on "Role/Management" page
    #Select the user you wish to manage the role.
    And the user click on the user to manage his or her role
    #click on the role tab.
    And the user clicks on "user profile: role tab" element on "Role/Management" page
    #Delete role added by test.
    And the user deletes any existing saa role added by the test
    #Click on Add role link. 
    And the user clicks the link with text "Add a Role..."
    #Verify that user navigate to the right page. 
    And the user can see "Add a New Role (FELICITAS ABDEEN)" text in "add a role: page title" field on "Role/Management" page
    #Click on the save button to validate required fields.
    And the user clicks on "add a role: save button" element on "Role/Management" page
    And the user can see "Business area is required." text in "add a role: required filed alert business area" field on "Role/Management" page
    And the user can see "Role is required." text in "add a role: required alert role" field on "Role/Management" page
    #Select business area.
    And the user selects "<Business Area>" from "add a role: business area drop down" drop down on "Role/Management" page
    And the user selects "<Role Type>" from "add a role: role drop down" drop down on "Role/Management" page
    #Click on the save  and go back button.
    And the user clicks on "add a role: save and go back button" element on "Role/Management" page
    And the user clicks the link with text "Run PHIS Data Feed"
    And the user can see "The PHIS Data Feed was executed successfully." text in "add a role: phis data feed success message" field on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<SAA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role1>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on service account from the left navigation.
    And the user clicks on "service account: left nav" element on "Role/Management" page
    And the user can see "Select Organization" text in "select organization: page title" field on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User         | Role         | Account Type          | Business Area | Role Type                     | SAA User          | Role1                         |
      | Westgerdes, Neal | System Admin | FSIS Federal Employee | MISC          | Service Account Administrator | Glodowske, Angela | Service Account Administrator |

  @Tc_61a.2

  Scenario Outline: 61a.2 Add a "Export Viewer" role under the "MISC" business area.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on user management.
    And the user clicks on "user management: left nav" element on "Role/Management" page
    #Click on manage user.
    And the user clicks on "manage user: left nav" element on "Role/Management" page
    #Select account type.
    And the user selects "<Account Type>" from "account type drop down" drop down on "Role/Management" page
    #Select the user you wish to manage the role.
    And the user click on the user to manage his or her role
    #click on the role tab.
    And the user clicks on "user profile: role tab" element on "Role/Management" page
    #Delete role added by test.
    And the user deletes any existing export viewer role added by the test
    #Click on Add role link.
    And the user clicks the link with text "Add a Role..."
    #Verify that user navigate to the right page.
    And the user can see "Add a New Role (FELICITAS ABDEEN)" text in "add a role: page title" field on "Role/Management" page
    #Click on the save button to validate required fields.
    And the user clicks on "add a role: save button" element on "Role/Management" page
    And the user can see "Business area is required." text in "add a role: required filed alert business area" field on "Role/Management" page
    And the user can see "Role is required." text in "add a role: required alert role" field on "Role/Management" page
    #Select business area.
    And the user selects "<Business Area>" from "add a role: business area drop down" drop down on "Role/Management" page
    And the user selects "<Role Type>" from "add a role: role drop down" drop down on "Role/Management" page
    #Click on the save  and go back button.
    And the user clicks on "add a role: save and go back button" element on "Role/Management" page
    And the user clicks the link with text "Run PHIS Data Feed"
    And the user can see "The PHIS Data Feed was executed successfully." text in "add a role: phis data feed success message" field on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<SAA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role1>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on service account from the left navigation.
    And the user clicks on "service account: left nav" element on "Role/Management" page
    And the user can see "Select Organization" text in "select organization: page title" field on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User         | Role         | Account Type          | Business Area | Role Type     | SAA User          | Role1                         |
      | Westgerdes, Neal | System Admin | FSIS Federal Employee | MISC          | Export Viewer | Glodowske, Angela | Service Account Administrator |