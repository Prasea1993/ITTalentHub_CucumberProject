Feature:Radiology testcase 2
  As Privileged user, I can  click Clinical tab in Bahmni portal


  @DataTableHeaders
  Scenario:Clinical data with observations
    Given Clinical tab is displayed
    When Input patient record
    And Click patient record
    And User should see the Consultation button
    Then User should able to display Consultation tab


