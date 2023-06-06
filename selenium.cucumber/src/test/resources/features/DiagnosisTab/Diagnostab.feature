Feature: Diagnostab feature
  As Privileged user, I can use Diagnos tab to Bahmni portal


  @DataTableHeaders
Scenario: Display diagnos tab in the bahmni app

    Given open clinical portal "https://docker.lite.mybahmni.in/bahmni/clinical/index.html#/default/patient/search / Active pationts are displayed

    When Input search name/id to display with headers table

      | clinical           | Searchname/PationtID     | LoginType           |
      | Hanuma             | ABC200024                |  Bahmni clinic      |

    And Click Search button

    Then user should be able to display diagnos tab in the app

