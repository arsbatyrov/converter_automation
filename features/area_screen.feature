Feature: User is able to convert area units

  Scenario: User is able to dismiss help
    Given I land on Help popup
    When I click on Got it button
    Then I land on Area screen

  Scenario: User is able to swap values
    Given I click on Got it button
    Given I see "Sq Kilometre" in From header
    Given I see "Sq Metre" in To header
    When I click on Swap button
    And I see "Sq Metre" in From header
    And I see "Sq Kilometre" in To header

  @wip
  Scenario:
    Given I click on Got it button
    And I click on Clear button
    When I enter "2" in From field
    Then I get "2000000" in To field



