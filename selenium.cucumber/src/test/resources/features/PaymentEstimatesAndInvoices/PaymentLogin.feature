Feature: PaymentLogin tests
  As a admin user, I can login to payment portal

  @DataTableHeaders
  Scenario: Login to Payment portal using valid Credentials
    Given Admin opens the browser
    And Enters the URL "https://payments-docker.lite.mybahmni.in/"
    When Input credentials to login with headers table
      | Username             | Password               |
      | superman@bahmni.org            | Crater123      |
    And Click login button
    Then Admin should land on Dashboard of the portal

  Scenario: Login to Payment portal using invalid Credentials
    Given Admin opens the browser
    And Enters the URL "https://payments-docker.lite.mybahmni.in/"
    When Input credentials to login with headers table
      | Username             | Password               |
      | superma@bahmni.org            | Crater1234     |
    And Click login button
    Then Admin should get Error message for invalid credentials