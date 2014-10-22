Feature: Show header of current column

  Background:
    Given I am in buffer "notes.org"
    And I clear the buffer
    And I turn on org-mode
    And I turn on orgtbl-show-header

  Scenario: Show header of current column in simple table
    When I insert:
    """
    | header 1 | header 2 | header 3 |
    | 1.1 | 1.2 | 1.3 |
    """
    And I place the cursor between "1.1" and " "

    And I press "<tab>"
    Then last message should be "header 2"

    And I press "<tab>"
    Then last message should be "header 3"

    And I press "S-<tab>"
    Then last message should be "header 2"

    And I press "S-<tab>"
    Then last message should be "header 1"
