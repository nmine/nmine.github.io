
Feature: add coach to the basket
  As an project leader
  I want to add a coach to the basket
  In order to complete all the coach for the project

  Scenario: the project leader add a coach to the basket
    Given the project is created wit the coaches 'persona1'
    When I go to the catalogue
    And I select 'persona1'
    Then 'persona1' is added to the basket

Feature: delete coach from the basket
  As an project leader
  I want to add delete a coach from the basket
  In order to remove it from basket

  Scenario: the project leader delete a coach from the basket
    Given the project is created wit the coaches 'persona1'
    When I go to the basket
    And I delete 'persona1'
    Then basket doesn't contain 'persona1' any more

Feature: project leader validate validate
  As an project leader
  I want to validate the basket
  In order to continue to next step

  Scenario: the project validate basket with not enought coach in it
    Given the project is created wit one coaches 'persona1'
    When I go to the basket
    And I validate it
    Then I see a error : ot enought coach in the basket

  Scenario: the project validate basket with t enought coach in it
    Given the project is created wit two coaches 'persona1'
    When I go to the basket
    And I validate it
    Then basket is validated