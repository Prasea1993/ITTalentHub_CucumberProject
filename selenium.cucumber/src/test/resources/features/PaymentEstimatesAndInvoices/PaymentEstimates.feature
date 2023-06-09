Feature: PaymentEstimates tests
  Verifying the Estimates functionality

  Background: Admin is Logged in the Portal
  Given Admin opens the Browser
  And Enters the URL "https://payments-docker.lite.mybahmni.in/"
  When Input credentials to login with headers table
  | Username             | Password               |
  | superman@bahmni.org            | Crater123      |
  And Click login button
  Then Admin should land on Dashboard of the portal

  @DataTableHeaders
  Scenario Outline: Verify New Estimate Tab Functionality

   When Admin clicks on Estimates tab from sidebar Menu
    Then Admin lands on Estimates Page
    And Clicks on New Estimate tab
    Then Admin will be directed to New Estimate Page
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
    Then Admin Clicks on Save estimate button on the top right corner of the page
    Then Successfully saved estimate message will be displayed and admin will land on Estimate preview page
    Then Admin close the Browser
    Examples:
      | Patient Name |Estimate Date|Expiry Date|item|Quantity|tax|
      | Honey Singh |2023/06/03|2023/06/12|medication|2|gst|

    Scenario Outline: Verify the Estimate list funtionality

      When Admin clicks on Estimates tab from sidebar Menu
      Then Admin lands on Estimates Page
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
      When Admin enters the '<Estimate No.>'
      Then Patients with same Estimate no. will appear on the page
      And Admin clicks on Clear all button
      When Admin clicks on Draft tab
      Then Estimates with Draft status should appear
      And Admin Clicks on Sent tab
      Then Estimates with Sent status should appear
      And Admin close the Browser
      Examples:  | Customer| Status |From|To|Estimate No.|
      | Radha Bailey Adiga | DRAFT  |2023/05/28|2023/06/04|EST-000003


  Scenario : Verify the Meatballs menu icon funtionality

    When Admin clicks on Estimates tab from sidebar Menu
    Then Admin lands on Estimates Page
    And Admin clicks on Meatballs menu icon
    Then Mutiple Options will appear
    When Admin choose Edit from the drop down list
    Then Admin should be able to edit the estimate for particular Patient
    And Admin clicks on save estimate tab
    Then Admin clicks on Meatballs menu icon
    When Admin choose the view from the drop down list
    Then Respective patient's Estimate will appear on the page
    And Admin clicks on Mark as sent button
    And Pop up will appear to confirm the action
    Then Click Ok to confirm
    Then Admin clicks on Estimate tab on sidebar menu
    When Admin clicks on Meatballs menu icon
    Then Admin clicks on Convert to Invoice tab
    And Pop up will appear to confirm the action
    Then Click OK to confirm
    When Admin will land on invoices page
    Then Admin will click on Save invoice Tab
    And Invoice updated successfully message will be displayed
    And Admin will land on invoice preview page
    When Admin clicks on Estimate tab on sidebar menu
    Then Admin clicks on Meatballs menu icon
    And Admin clicks on Mark As Accepted button
    When Pop up will appear to confirm the action
    Then Click OK to confirm
    And Admin clicks on Mark as Rejected button
    When Pop up will appear to confirm the action
    Then Click OK to confirm
    When Admin clicks on Meatballs menu icon
    And Admin clicks on Delete tab
    Then op up will appear to confirm the action
    And Click OK/cancel to confirm
    And Admin close the Browser







