Feature:Radiology testcase 4
  As Privileged user, I can  Radiology order tab in Bahmni portal


  @DataTableHeaders
  Scenario:Radiology orders should be display
    Given Chest tab is display and click
    When chest tab is displayed it will display different types of x.ray are displayed
    And Click Chest x.ray single view
    Then User should be able to  see in selected Ordered tab

