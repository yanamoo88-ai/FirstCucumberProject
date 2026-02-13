Feature: Login

  @loginPositive
  Scenario: Successful login
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    And User clicks on Login link
    And User enters correct data
    And User clicks on Yalla button
    Then User verifies Success message is displayed
    And User closes browser

  @wrongPassword
  Scenario Outline: Login with correct email and wrong password
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    And User clicks on Login link
    And User enters correct email and wrong password
      |email |password |
      |<email> |<password> |
    And User clicks on Yalla button
    Then User verifies Error message is displayed
    And User closes browser
    Examples:
      | email | password |
      |lika13@gmail.com |aaNEetADBH8XfR|
      |lika13@gmail.com |aannetadb@h8xfr|
      |lika13@gmail.com |AANEEtADB@H8XFR|
      |lika13@gmail.com |ЯНАПРО@Ф8пра|
