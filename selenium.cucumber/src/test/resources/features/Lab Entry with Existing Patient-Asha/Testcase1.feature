Feature: Testcase1.feature
  As Privileged user, I can login to Bahmni portal

  @DataTableHeaders
Scenario: Lab entry | with existing patient data suggested from clinical observation
Given User is on EMR portal
When  User click on EMR login with valid username and passwrord
| Username             | Password     | LoginType           |
| superman             | Admin123     | Bahmni Clinic       |
And Click on login button
Then user should be able to navigate to home page









