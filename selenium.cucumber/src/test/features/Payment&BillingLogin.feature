#Author

@DataTableHeaders
Feature: Checking the Title of application
  Scenario: User wants to check whether application is working or not
    Given User open the browser
    Then User enter the URL "https://docker.lite.mybahmni.in/"
    And User verifies the title of the application
    Then User click on Payment and Billing options

    When Input crater credentials to login with tableheaders
      | Email | Password | Combinations |
      | superman@bahmni.org | Crater123 | Valid |
      | RAJU@gmail.com      | 1234      | Invalid |
      | manju@bahmni.org    | 1234      | Invalid |
      | Abbey123@hotmail.com| Abcd1234  | Invalid |
