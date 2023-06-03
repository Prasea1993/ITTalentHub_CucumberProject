
Feature: Medications Tab tests
As a doctor , I can click on the Medications button and write a prescription
  Background:
    Given User provides the valid Username and Password
    And the user clicks on login
    Then user should be able to login to the app

  @DateTableheaders
  Scenario: Validate all the options available in the Medications tab
  Given Medication page is displayed
  When the doctor enters the valid drug name with the headers table and clicks on the Accept button
  | Drug Name          |
  | Metformin 500mg    |
  |  Paracetamol 650mg |
  Then the doctor enters the dose
  |Dose |
  |1    |
  And the doctor enters units
  |Units   |
  |Tablets |
  And the doctor enters frequency using the dropdown menu
  |Frequency   |
  |Twice a day | 
  And the doctor enters the route
  |Route  |
  |Oral   |
  And the doctor selects the start date 
  |Start Date  |
  |01/06/2023  |
  And the doctor selects duration 
  |Duration  |
  |56        |
  And doctor enter the days
  |Units  |
  |Days   |
  And the doctor enters total quantity 
  |Quantity  |
  |112       |
  And the doctor enters units
  |Units  |
  |Tablets
  Then doctor selects the Instructions
  |Instructions   |
  |As directed    |
  And doctor writes the additional instructions
  When the doctor clicks on the Add button 
  Then a New Prescription with medicine information should be displayed
  When the doctor clicks on the Save button
  Then the prescription should be saved in the patients records
