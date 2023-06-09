Feature: Testcase4.feature
  As Privileged user, I can login to Bahmni General portal

  @DataTableHeaders
  Scenario: Lab entry | with existing patient data suggested from clinical observation
    Given Patient general report page is displayed
    When  Select the consultation button
    Then  Laboratory page is displayed
    And  Select the lab test according to the patient requirement
    Then user should be able to book lab test