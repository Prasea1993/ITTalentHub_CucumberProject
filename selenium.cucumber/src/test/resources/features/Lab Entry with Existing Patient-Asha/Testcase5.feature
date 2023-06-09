Feature: Testcase5.feature
  As Privileged user, I can login to Bahmni Laboratory portal

  @DataTableHeaders
  Scenario: Lab entry | with existing patient data suggested from clinical observation
    Given user should be able to book lab test
    When  select the blood and urine test for the patient
    Then  click on the lab entry button
    And   Patient pending lab order page is displayed
    Then  User should be able to save and upload the report
