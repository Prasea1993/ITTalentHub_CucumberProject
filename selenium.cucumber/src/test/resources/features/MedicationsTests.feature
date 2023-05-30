Feature: Medications Tab tests
As a doctor , I can click on the Medications button and write a prescription

  @DateTableheaders
  Scenario: Validate all the option available in the Medications tab
  Given Medication page is displayed
  When the doctor enters the valid drug name with the headers table and click on the Accept button
  | Drug Name          |
  | Metformin 500mg    |
  |  Paracetamol 650mg |
  Then the doctor enters the dose, units and frequency using the dropdown
  And doctor selects the start date and the duration 
  And doctor enter the days, total quantity and units
  Then doctor selects the instructions
  And doctor writes the additional instructions
  When the doctor clicks on the Add button 
  Then a New Prescription with medicine information should be displayed
  When the doctor click on the Save button 
  Then the prescription should be saved in the patients records
