Feature:Radiology testcase 3
  As Privileged user, I can  click ordered  tab in Bahmni portal


  @DataTableHeaders
  Scenario:Clinical data with observations
    Given Ordered tab is displayed on app
    When Input patient record scroll down Radiology orders button is displayed
    And Click Radiology ordered button
    And User should see the Radiology orders display like neck , check , knee hip,all information laboratory test
    Then User should be able display Ordered tab


