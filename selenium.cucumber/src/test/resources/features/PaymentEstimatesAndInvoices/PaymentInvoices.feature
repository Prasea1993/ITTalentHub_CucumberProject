Feature: PaymentInvoices tests
  Verifying the Invoices tab functionality

  Background: Admin is Logged in the Portal
    Given Admin opens the Browser
    And Enters the URL "https://payments-docker.lite.mybahmni.in/"
    When Input credentials to login with headers table
      | Username             | Password               |
      | superman@bahmni.org            | Crater123      |
    And Click login button
    Then Admin should land on Dashboard of the portal

  @DataTableHeaders
  Scenario Outline: Verify New Invoice Tab Functionality

    When Admin clicks on Invoices tab from sidebar Menu
    Then Admin lands on Invoices Page
    And Clicks on New Invoice tab
    Then Admin will be directed to New Invoice Page
    When Admin clicks on New customer tab
    And Selects the '<Patient Name>' from the drop down list
    And Selects the '<Estimate Date>' from the calender
    And Selects the '<Expiry Date>' from the calender
    Then Estimate number will be generated automatically
    When Admin Clicks on Add item tab
    Then Choose '<item>' from the dropdown list
    And Selects the '<Quantity>'
    Then Price will be displayed
    And Amount will be Calculated accordingly and displayed
    And Admin clicks on Add tax button
    And Selects the '<tax>' from drop down list
    Then Total Amount will be calculated and diplayed
    Then Admin Clicks on Save invoice button on the top right corner of the page
    Then Successfully saved invoice message will be displayed and admin will land on Invoice preview page
    Then Admin closes the Browser
    Examples:
      | Patient Name |Estimate Date|Expiry Date|item|Quantity|tax|
      | kamal Hasan |2023/06/03|2023/06/12|ultrasound|2|gst|


  Scenario Outline: Verify the Invioces list funtionality

    When Admin clicks on Invoices tab from sidebar Menu
    Then Admin lands on Invoices Page
    And Admin clicks on filter button
    Then Filter options will appear
    When Admin choose a '<Customer>' from the drop down list
    Then Respective customer Details should appear
    And Admin clicks on Clear all button
    Then All customer list should appear
    When Admin choose the '<Status>' from the drop dwn list
    Then Respective patients with same status will appear on the page
    And Admin clicks on Clear all button
    When Admin choose the '<From>' date from the calender
    Then Respective patients with same date will appear on the page
    And Admin clicks on Clear all button
    When Admin choose the '<To>' date from the calender
    Then Respective patients with same date will appear on the page
    And Admin clicks on Clear all button
    When Admin enters the '<Invoice Number>'
    Then Patients with same Invoice Number will appear on the page
    And Admin clicks on Clear all button
    When Admin clicks on Draft tab
    Then Invoices with Draft status should appear
    And Admin Clicks on Sent tab
    Then Invoices with Sent status should appear
    When Admin clicks on Due tab
    Then Invoices with Unpaid status should appear
    And Admin close the Browser
    Examples:  | Customer| Status |From|To|Invoice Number|
    | Radha Bailey Adiga | UNPAID  |2023/05/28|2023/06/04|INV-000008

  Scenario : Verify the Action menu icon(Three dots) funtionality

    When Admin clicks on Invoices tab from sidebar Menu
    Then Admin lands on Invoices Page
    And Admin clicks on Action menu icon
    Then Mutiple Options will appear
    When Admin choose Edit from the drop down list
    Then Admin should be able to edit the Invoice for particular Patient
    And Admin clicks on Save Invoice tab
    Then Admin lands on Invoice preview page
    And Admin clicks on Invoices tab
    Then Admin clicks on Meatballs menu icon
    When Admin choose the view from the drop down list
    Then Respective patient's Invoice will appear on the page
    And Admin clicks on Mark as sent button
    And Pop up will appear to confirm the action
    Then Click Ok to confirm
    Then Admin clicks on Invoices tab on sidebar menu
    When Admin clicks on Meatballs menu icon
    Then Admin clicks on Send Invoice tab
    And Message window will appear
    Then Click preview button
    When Admin will land on new page click send button
    Then Admin should be able to send the invoice to the patient
    And Invoice sent successfully message will be displayed
    When Admin clicks on Invoices tab on sidebar menu
    Then Admin clicks on Meatballs menu icon
    And Admin clicks on Mark As Sent button
    When Pop up will appear to confirm the action
    Then Click OK to confirm
    And Admin clicks on Clone invoice button
    When Pop up will appear to confirm the action
    Then Click OK/cancel to confirm
    When Admin clicks on Meatballs menu icon
    And Admin clicks on Delete tab
    Then pop up will appear to confirm the action
    And Click OK/cancel to confirm
    And Admin close the Browser