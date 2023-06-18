Feature: Bahmni-Patient Registration

  Scenario Outline: Verifies User able to Register the patient with valid details
    Given Login page is displayed
    When Input credentials to login "<username>" and "<password>" and "<logintype>"
    And Click login button
    And user clicks on the register button
    And user clicks on the Create New button
    And user entered the details "<firstname>"  "<lastname>" "<gender>" "<age>" "<village>"

    Then A user should not able click on save button
    Then Error should display "<Please match the format requested>"

    Examples:
      | firstname | lastname | gender | age | village | username    | password   | logintype |
      | MANASaas   | reddy123 | Female |  30  | India   | superman     | Admin123   | General Ward |
      | Prashant   | Sam  | Male   |  Thirty-five  | India         | superman      | Admin123   | General Ward |
      | 11manasaas | REDDT | Female |  30  | India  | superman      | Admin123   | General Ward |
      | Prashan123 | Sam   | Female |  35  | UK     | superman      | Admin123   | General Ward |
