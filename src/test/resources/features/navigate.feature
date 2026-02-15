Feature: HomePage

  @navigate
  Scenario: Verify HomePage title is displayed
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    Then User verifies HomePage title is displayed
    And User closes browser


  @navigationLinks
  Scenario: Verify navigation panel contains 5 links on Search page
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    Then User verifies that navigation panel contains 5 links on Search page
    And User closes browser
