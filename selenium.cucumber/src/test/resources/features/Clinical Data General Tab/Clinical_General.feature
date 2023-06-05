
#Author
Feature: Testing General Tab functionality of Clinical Data in EMR Module

  Background: User is Logged In
    Given User opens the Browser
    And Enters the URL "https://docker.lite.mybahmni.in/bahmni/home/index.html#/login"
    When Input credentials to login with headers table
      | Username             | Password     | Location           |
      | superman             | Admin123     | Bahmni Clinic       |
    Then I should be logged in to EMR Dashboard Page

  Scenario Outline: Verify Patient Data in Clinical Home Page
    Given User is logged in EMR Dashboard Page
    When User click on Clinical Button
    Then User should be able to get Clinical Home Page
    And User enters the '<search>' data
    Then User verifies the data with '<Id>'
    Then User Closes the Browser
    Examples:
      |search|Id|
      |Hanuma|ABC200024|

  Scenario Outline: Verify Quick Links in Clinical General Tab

    Given User is logged in EMR Dashboard Page
    When User click on Clinical Button
    Then User should be able to get Clinical Home Page
    And User enters the '<Patient>' data
    When User click on Home Dashboard Link
    Then User should be able to navigate to EMR Home Page
    When User click on Patient Visit Page Link
    Then User should be able to navigate to Patient Visit Dashboard Page
    When User click on Visit Attributes Link
    Then User should be able to navigate to Registration Visit Attributes Page
    Then User changes the '<Height>'and '<Weight>' attributes
    When User click on Registration Link
    Then User should be able to navigate to Patient Registration Page
    When User click on Lab Entry Link
    Then User should be able to navigate to Patient Registration Page
    Then User closes the Browser
    Examples:
      | Patient |Height|Weight|
      | Hanuma |154|60|

  Scenario Outline: Verify if Medical History is properly captured under the proper section

    Given User is logged in EMR Dashboard Page
    When User click on Clinical Button
    Then User should be able to get Clinical Home Page
    And User enters the '<Patient>' data
    Then User should be able to get Dashboard page for that Patient
    When User click on Treatment button
    Then User should be able to see Prescriptions prescribed
    When User click on Lab results button
    Then User should be able to see Lab orders
    When User click on Diagnosis button
    Then User should be able to see any Diagnosis
    When User click on Visits button
    Then User should be able to see '<Date>' and '<Type>' of Visit
    When User click on Lab Entry Link
    Then User should be able to navigate to Patient Registration Page
    Then User closes the Browser
    Examples:
      | Patient | Date|Type|
      | Hanuma |01 Jun 23|OPD|
