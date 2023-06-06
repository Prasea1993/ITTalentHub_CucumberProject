#Author - Dinesh
Feature: Testing Bahmni Clinic | All options on observations tab

  Background: Admin & Doctor User able to Login Successfully
    Given Open the Browser
    And Enters the URL "https://docker.lite.mybahmni.in/"
    Then WELCOME TO BAHMNI EMR FOR CLINICS Dashboard Page should be Visible
    When Clicked on Clinical Service
    Then User should be Navigated to BAHMNI EMR LOGIN Page
    When Input credentials to login with headers table '<Username>', '<Password>' and '<Location>'
      | Username             | Password     | Location           |
      | superman             | Admin123     | Bahmni Clinic      |
      | dr_neha              | Admin123     | Bahmni Clinic      |
    And Click Login
    Then User should be navigated to Bahmni Clinic Dashboard
    When Click on the Clinical CTA Button
    Then User should be able to get Clinical OPD Page
    Given Please Click on a Random a user profile
    Then User should be able open the user profile successfully.
    When Get the Patient ID Number
    And Click on Consultation CTA Button
    Then User should be navigated to Selected Patient Observation Tab
    And Verify the Patient ID Matches Patient ID from background

  Scenario: Adding a New Observation From Option
    Given Click on the Add New bs Form CTA
    Then User should be able to see the list of Observation to be added
    And Verify if Observation present is disabled
    When User should select the First Observation which is not disabled
    Then Verify Selected Observation should be added to the Observation Tab
    And Click on the Save Button
    And Click on the Patient Search Button
    When Go back to the selected Patient Observation Tab
    Then Verify the Newly Added Observation is Present
    And Close the Browser

  Scenario: Expand & Collapse Option
    Given Check if History and Examination Form is Present
    When History and Examination Form is Present
    Then Click on History and Examination on Observation Tab
    And Verify if all the field option are Visible
    When all the field option are visible click on collapse Icon
    Then Verify if all the field options are now hidden
    When Click on Expand Icon
    Then  Verify if all the field option are Visible again
    And Close the Browser

  Scenario: PIN Option
    Given Click on the PIN Icon on the first Observation Form Present
    When Verify the PIN Icon is Selected
    Then Click on the Save Button
    And Click on the Patient Search Button
    When Go back to the selected Patient Observation Tab
    Then Verify the PIN ICON is selected on the First Observation Form

  Scenario: Delete Option
    Given Click on the Delete Icon on the first Observation Form Present
    When Verify the Observation Form has been Deleted
    Then Click on the Save Button
    And Click on the Patient Search Button
    When Go back to the selected Patient Observation Tab
    Then Verify the Observation Form has been Deleted







