@area

Feature: User is able to convert area units

#  @test_a
#  Scenario:
#    Given I land on Help popup
#    When I click on Got it button
#    Then I land on Area screen
  Background:
    Given I click on Got it button
    And I land on Area screen

  @test_b
  Scenario:
    Given I see "Sq Kilometre" in From header
    Given I see "Sq Metre" in To header
    When I click on Swap button
    And I see "Sq Metre" in From header
    And I see "Sq Kilometre" in To header

  @test_c
  Scenario:
    Given I click on Clear button
    When I enter "2" in From field
    Then I get "2000000" in To field

  @test_c
  Scenario Outline:
    Given I click on Clear button
    When I enter "<target>" in From field
    Then I get "<result>" in To field
  Examples:
    |target|result|
    |1     |1000000|
    |2     |2000000|
    |3     |3000000|

  @test_d
  Scenario:
    Given I click on Clear button
    When I click on From field
    And I press "1" on soft keyboard
    Then I get "1000000" in To field

  @test_f
  Scenario:
    Given I click on Clear button
    When I click on From field
    And I tap "12" on soft keyboard
    Then I get "12000000" in To field

  @test_g
  Scenario:
    When I select "Hectare" from left column
    Then I see "Hectare" in From header
    And I get "10000" in To field





