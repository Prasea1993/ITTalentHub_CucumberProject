Feature: Bahmni-Patient Registration

  Scenario Outline: Verifies User able to Register the patient with valid details
    Given Login page is displayed
    When Input credentials to login "<username>" and "<password>" and "<logintype>"
    And Click login button
    And user clicks on the register button
    And user clicks on the Create New button
    And user entered the details "<firstname>"  "<lastname>" "<gender>" "<age>" "<village>"
    And user clicks on the start save button

    Examples: 
      | firstname | lastname | gender | age | village | username      | password   | logintype |
      | Manasaas    | reddy    | Female |  30 | India   | superman      | Admin123   | General Ward |
      | Prashanthsd    | Sam    | Male |  35 | India   | superman      | Admin123   | General Ward |
