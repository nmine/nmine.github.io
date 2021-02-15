Feature: Select Project dates
  As a product leader
  I want to choose project dates
  In order to know when project start and end
  
  Scenario: Select Project start date
    Given the project is created
    When I select 01/01/2021 as project start date
    Then the project should start the 01/01/2021
    
  Scenario: Select Project end date
    Given the project is created
    When I select 01/01/2022 as project end date
    Then the project should end the 01/01/2022

Feature: Create project milestone
  As a product leader
  I want to create project milestone
  In order to define project global date that every trainee will follow
  Scenario: The project leader create a milestone in the calendar
    Given the project is created
    When I select 02/01/2022 at 15h30 as project milestone time
    And the milestone name : Kick off
    Then the project milestone 'Kick off' should appear in calendar of the project at 02/01/2022 at 15h30
