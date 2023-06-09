Feature: Diagnostab2 feature
  As Privileged user, I can use Diagnos tab to Bahmni portal


  @DataTableHeaders
  Scenario: Display Consultation in diagnos tab of the bahmni app

    Given click on clinical button

    When Input pationt's record

    And Click consultaion button

    And select Diagnos tab

    Then user should be able to display diagnos tab in the app

