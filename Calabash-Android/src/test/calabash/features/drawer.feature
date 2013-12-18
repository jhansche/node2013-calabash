Feature: Navigation Drawer

  Scenario: The navigation drawer is open on first launch
    Given my app is running
    Then I wait for the view with id "drawer_layout" to appear
    And I take a screenshot

  Scenario: I can open the navigation drawer myself
  # "Node 2013" is the main app's title, which is only displayed when the drawer is open
    Given I see the text "Node 2013"
  # BACK cancels the open drawer
    And I go back
    And I don't see the text "Node 2013"
  # This time since we open it ourselves, the shared pref will indicate we've already done this.
    And I press "Navigate up"
    And I see the text "Node 2013"
    And I take a screenshot

  Scenario: The next launch will not show the drawer after the previous scenario
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

  Scenario: I can open the drawer via swipe
    When I swipe right
    Then I see the text "Node 2013"