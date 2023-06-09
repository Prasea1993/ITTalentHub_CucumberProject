Feature: Diagnostab3 feature

  As Privileged user, I can use Consultation tab to Bahmni portal


  @DataTableHeaders
  Scenario: Display pationts observation tab in patients profile

    Given Click on Diagnoses button and able to Condition

    When Input search condition type

    And Click Accept button

    And Select status from active / inactive / History of

    Then user should be able to accept Condition Status and date

    Then User can Add pationt's condition
