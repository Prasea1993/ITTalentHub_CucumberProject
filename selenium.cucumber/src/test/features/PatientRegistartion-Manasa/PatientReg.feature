Feature: Bahmni-Patient Registration
  Scenario: Verifies User able to Register the patient with valid details
    Given user opens the browser
When User Enters the  "https://docker.lite.mybahmni.in/bahmni/home/index.html#/dashboard"
    Then user clicks on the register button
    Then user clicks on the create new patient button
    When user enters Patient  'First Name' in the text box
    And user enters Patient  'Last Name' in the text box
    Then user selects the gender from drop down menu
    And  user selects the Date of birth from the calender
    Then user clicks on the start OPD visit button
    Then User clicks on the Patient Registration card button
    And Save the Patient Registartion card
      Then user Registered sucessfully
      
      
      
      Examples:
      |First Name|Last Name|
      |manasa|reddy|
      |Aruna|sri|
      |shravanya|Reddy|