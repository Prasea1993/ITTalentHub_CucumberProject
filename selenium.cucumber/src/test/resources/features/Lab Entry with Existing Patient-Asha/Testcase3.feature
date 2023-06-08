Feature: Testcase3.feature
  As Privileged user, I can login to clinical Bahmni portal

  @DataTableHeaders
  Scenario: Lab entry | with existing patient data suggested from clinical observation
    Given Clinical page is displayed
    When  User click on clinical button
    Then  Input the patient id or name on search button
    And Click on selected patient record
    Then user should be able to see the patient general report
