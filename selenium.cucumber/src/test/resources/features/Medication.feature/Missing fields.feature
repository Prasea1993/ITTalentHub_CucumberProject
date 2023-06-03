Feature: Medications Tab tests
  As a doctor , I can click on the Medications button and write a prescription
  Background:
    Given User provides the valid Username and Password
    And the user clicks on login
    Then user should be able to login to the app

  @DateTableheaders
  Scenario: Validate all the options available in the Medications tab by giving invalid data
    Given Medication page is displayed
    When the doctor enters the invalid drug name with the headers table and clicks on the Accept button
      | Drug Name          |
      | Metformin 500mg    |
      |  Paracetamol 650mg |
    Then the doctor enters the dose
      |Dose |
      |1    |
    And the doctor miss entering units
      |Units   |
      |        |
    And the doctor enters frequency using the dropdown menu
      |Frequency   |
      |Twice a day |
    And the doctor enters the route
      |Route  |
      |Oral   |
    And the doctor selects the start date
      |Start Date  |
      |01/06/2023  |
    And the doctor does not selects duration
      |Duration  |
      |          |
    And doctor enter the days
      |Units  |
      |Days   |
    And the doctor does not enter total quantity
      |Quantity  |
      |          |
    And the doctor enters units
      |Units  |
      |Tablets
    Then doctor selects the Instructions
      |Instructions   |
      |As directed    |
    And doctor writes the additional instructions
    And  doctor clicks on the add button
    Then a message in a popup should be displayed to fill in the fields
    When the doctor clicks on the Save button
    Then the prescription should not be saved in the patients records
