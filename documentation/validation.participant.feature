
Feature: check rule that every trainee has a sponsor in every category
  As an project leader
  I want to check that every trainee has a sponsor for every sponsor role
  In order to knwow if I can continue

  Scenario: the project leader validate that every trainee has a sponsor for every role
    Given the project is created with trainee
    When I validated the rule
    Then I see if some trainee has no sponsor for some role
