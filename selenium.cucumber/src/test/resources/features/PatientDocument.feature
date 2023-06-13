Feature:Patient document,data already existing to submit existing patient records.

  Scenario: Verify patient document appear on dashboard
    Given User has launched the application
    When user clicks on clinical service
    Then login page should appear
    When User login to the application
    Then Patient document should appear on dashboard


    Scenario: Verify user able to select patient from active patient
      Given User has launched the application
      When user clicks on clinical service
      Then login page should appear
      When User login to the application
      Then Patient document should appear on dashboard
      When User clicks on patient dashboard
      Then Active patients should appear
      When User clicks on a patient
      Then User should navigated to patient details

    Scenario: Verify user able to search patient
      Given User has launched the application
      When user clicks on clinical service
      Then login page should appear
      When User login to the application
      Then Patient document should appear on dashboard
      When User clicks on patient dashboard
      Then Active patient should appear
      When User searches the active patient "Test patient"
      Then Searched result "Test patient" should appear
      When User clicks on a patient
      Then User should navigated to patient details

  Scenario: Verify user able to upload documents for the patient.
    Given User has launched the application
    When user clicks on clinical service
    Then login page should appear
    When User login to the application
    Then Patient document should appear on dashboard
    When User clicks on patient dashboard
    Then Active patients should appear
    When User clicks on a patient "Test patient"
    Then User should navigated to patient details
    When User creates a visit and uploads the document
    Then The uploaded document should be saved sucessfully
