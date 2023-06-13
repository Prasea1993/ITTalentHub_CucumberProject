#Author

Feature: Checking Users Details For Payment And Billing
  Scenario: User wants to verify Payment Data

    And User click on Payment Button
    Then User click on the Add Payment
    When Input credentils add nee payment details with tableheaders
      | Date       | Payment number | Customer | Amount    | Payment mode  | Comments |
      | 2023/06/02 |  PAY-000005    | Kirsty   | ₹ 20.00   | Cash          | Valid    |
      | 2023/06/02 |  PAY-000006    | Cane     | ₹ 200.00  | Check         | Valid    |
      | 2023/06/02 |  PAY-000007    | Paul     | ₹ 2000.00 | Credit card   | Valid    |
      | 2023/06/02 |  PAY-000008    | Arjun    | ₹ 1.00    | Bank Transfer | Valid    |

    Then User verify add Notes
    Then User click on <insert field> selecting drop down options

    When Input credentils add Notes details with tableheaders
      | Customer     | Payment | Company | Comments |
      | Display Name | Date    | Company Name | Valid |
      | Contact Name | Mode    | Country | Valid |
      | Email        | Number  | State   | Valid |
      | Phone        | Amount  | City   | Valid |
      | Website      |  Date   | Address  Street 1 | Valid |
      | Display Name |  Mode   | Address  Street 2 | Valid |
      | Contact Name |  Number | Phone  | Valid |
      | Email        |  Amount | Zip Code | Valid |


