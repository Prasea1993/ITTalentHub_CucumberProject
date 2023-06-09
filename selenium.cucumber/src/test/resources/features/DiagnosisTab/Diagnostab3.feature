Feature: Diagnostab3 feature

  As Privileged user, I can use Consultation tab to Bahmni portal


  @DataTableHeaders
  Scenario: Display pationts observation tab in patients profile

    Given Click on Diagnoses button

    When Input search diagnoses type

    And Click Accept button

    And Select order from primary / secondory

    Then user should be able to accept Diagnosis Status and select order

    Then User can check status As Ruled out
