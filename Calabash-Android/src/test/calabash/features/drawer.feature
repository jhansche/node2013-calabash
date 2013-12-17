Feature: Navigation Drawer

  Scenario: The navigation drawer is open on first launch
    Given my app is running
    Then I see the text "Node 2013"
    And I take a screenshot

  Scenario: I can open the navigation drawer myself
    Given I see the text "Node 2013"
    And I press "Navigate up"
    And I don't see the text "Node 2013"
    And I press "Navigate up"
    And I see the text "Node 2013"
    And I take a screenshot

  Scenario: The next launch will not show the drawer after I opened it myself
    Given my app is running
    Then I don't see the text "Node 2013"
    And I see the text "Section 1"
    And I take a screenshot

  Scenario: Navigation Drawer can be used to switch between sections
    Given I press "Navigate up"
    And I press "Section 3"
    Then I see the text "Section 3"
    And I don't see the text "Section 1"
    And I take a screenshot

  Scenario: Settings appears in the overflow
    Given my app is running
    And I don't see the text "Settings"
    When I press the menu key
    Then I see the text "Settings"
    And I take a screenshot