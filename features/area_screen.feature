Feature: User is able to conver area units

  Scenario: User is able to dismiss Help
    Given I land on Help popup
    When I click on Got it button
    Then I land on Area screen

  Scenario: User is able to swap values
    Given I see "Sq Kilometre" in From header
    Given I see "Sq Metre" in To header
    When I click on Swap button
    And I see "Sq Metre" in From header
    And I see "Sq Kilometre" in To header