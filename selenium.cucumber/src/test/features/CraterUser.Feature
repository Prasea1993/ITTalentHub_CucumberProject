#Author

Feature: Checking Users Details For Payment And Billing
  Scenario: User wants to verify Users Data

    And User click on Users Button
    Then User click on the Add User
    When Input credentils add new user details with tableheaders
    | Name | Email           | Companies | Select roll for Bahmni | Password | Phone |
    | Emma | emma@gmail.com  | Bahmni    | super admin            | Abcd12*  | 0123456789 |
    | Raju | raju@gmail.com  | Bahmni    | doctor                 | Asdfg_09 | 7859647372 |
    | Aum  | Aum@gmail.com   | Bahmni    | front desk             | Dosti2023 | 8765321112 |

    And User click on save user
    And User able to see Added Data
    When User verify User Data click on Filter options
