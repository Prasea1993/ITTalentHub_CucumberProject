Feature: Login tests
  As Privileged user, I can login to Bahmni portal


  @DataTableHeaders
  Scenario: Login to Bahmni using valid account
    Given Login page is displayed
    When Input credentials to login with headers table
      | Username             | Password     | LoginType           |
      | superman             | Admin123     | General Ward        |
    And Click login button
    Then user should be able to login to the app

