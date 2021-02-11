Feature: Create New Sponsor roles
  As a product leader
  I want to create new Sponsor role
  In order to add a role to every sponsor of the projects
  Scenario: te project leader create a new sponsor role with a definitions
    Given the project is created
    #avoir des examples de sponsor role
    When I create a sponsor role
    And with name 'new Sponsor role' and definition 'new Sponsor role definition'
    Then all tr will have to

#avoir des examples de sponsor role avec definitions
Feature: Edit pre defined Sponsor roles definition
  As a product leader
  I want to edit pre defined Sponsor role definition
  In order that every trainee in the project will have a sponsor for this role
  Scenario: Edit Sponsor role
    Given the project is created
    When I select 02/01/2022 at 15h30 as project milestone time
    And the milestone name : Kick off
    Then the project milestone 'Kick off' should appear in calendar of the project at 02/01/2022 at 15h30


    #avoir des examples de sponsor role avec definitions
Feature: Assign global credit number
  As a product leader
  I want to assign global credit number to all trainees
  In order that every trainee in the project have the same number of credits to take they coaching sessions
  Scenario: Assign global credit number
    Given the project is created
    When I assign a credit number of 50 to all trainee
    Then the all trainee will receive 50 credits to pay they coaching sessions