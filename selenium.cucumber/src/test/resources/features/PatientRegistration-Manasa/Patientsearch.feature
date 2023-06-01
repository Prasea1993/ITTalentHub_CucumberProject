Feature: Bahmni- To search Registered patient
  Scenario: Searching Registered patient with valid details
    Given user opens the browser
    When User Enters the  "https://docker.lite.mybahmni.in/bahmni/home/index.html#/dashboard"
    Then user clicks on the search button
    And user enters the '<name>' in the search box
    Then User able to see the patient details

    Example:
      |name|
      |Manasa Reddy|
      |rakesh Reddy|
      |Samanvi|


