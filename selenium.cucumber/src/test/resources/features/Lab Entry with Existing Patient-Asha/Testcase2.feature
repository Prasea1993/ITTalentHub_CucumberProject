Feature: Testcase2.feature
  As Privileged user, I can registration to Bahmni portal

  @DataTableHeaders
  Scenario: Lab entry | with existing patient data suggested from clinical observation
    Given Registration page is displayed
    When  User click on Registration button to create patient record
    Then  Click on search or create new and fill all the mandatory information
    And Click on save
    Then user should be able to see the patient record on registration app
