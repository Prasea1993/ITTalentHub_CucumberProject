#Author
Feature: Login unable
  As a new user
  I want to log in to the Bahmni application
  So that the system can remember my data



@DataTableHeaders
Scenario: Login to Bahmni using an invalid username
  Given Login page is displayed
  When Input credentials to login with headers table
  | Username         | Password | LoginType    | error message |
  | ParU@gmail.com   | Admin123 | General Ward | Authentication failed |
  And A user click on login button
  Then A user should not able to login
  Then Error should display "<You are not authenticated or your session expired. Please login>"


  Scenario: Login to Bahmni using an invalid password
  Given Login page is displayed
    When Input credentials to login with headers table
    | Username         | Password | LoginType    | error message |
    | superman         | 1234     | General Ward | Authentication failed |
  And A user click on login button
  Then A user should not able to login
  Then Error should display "<You are not authenticated or your session expired. Please login>"


  Scenario: Login to Bahmni using an invalid username and password
    When Input credentials to login with headers table
    | Username         | Password | LoginType    | error message |
    | paru123          | 1234     | General Ward | Authentication failed |
  And A user click on login button
  Then A user should not able to login
  Then Error should display "<You are not authenticated or your session expired. Please login>"


