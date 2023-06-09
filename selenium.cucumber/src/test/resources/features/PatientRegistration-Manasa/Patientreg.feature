Feature: Bahmni-Patient Registration


  @DataTableHeaders
  Scenario : Verifies User able to Register the patient with valid details
    Given user opens the browser
    When User Enters the  "https://docker.lite.mybahmni.in/bahmni/home/index.html#/dashboard"
    Then user clicks on the register button
    Then user clicks on the create new patient button

    When Input credentials to register patient with tableheaders
    |Patient  first name|Patient Last name|Gender|Age|
    |Manasa             | reddy           |Female|30 |
    |Rakesh             |Reddy            |Male  |34 |
    |Samanvi            |Reddy            |Female|25 |
    Then user clicks on the start OPD visit button
    Then User clicks on the Patient Registration card button
    And Save the Patient Registartion card
    Then user Registered sucessfully
