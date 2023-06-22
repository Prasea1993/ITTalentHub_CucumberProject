#Author
Feature: Login Data Invalid
  As a new user
  I want to log in to the Bahmni application
  So that the system can remember my data


  @InvalidCredentials
  Scenario Outline: Login with invalid credentials
    When Input credentials to login "<Username>" and "<Password>" and "<LoginType>"
    Then User should be able to see error message "<ErrorMessage>"
    Examples:
      | Username         | Password | LoginType    | ErrorMessage       |
      | ParU@gmail.com   | Admin123 | General Ward | Invalid credentials |
      | superman         | 1234     | General Ward | Invalid credentials |
      | paru123          | 1234     | General Ward | Invalid credentials |

  @MissingUsername
  Scenario Outline: Login with blank username
    When User enters Username as "< >" and Password "<Password>" and as LoginType "<LoginType>"
    Then User should be able to see a message "You are not authenticated or your session expired. Please login" below Username
      Examples:
      | Username         | Password | LoginType    |
      |                  | Admin123 | General Ward |