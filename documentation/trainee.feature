Feature: create a trainee
  As an project leader
  I want to create a trainee
  In order to record it in the project

  Scenario: the project leader create th trainee
    Given the project is created
    When I add a trainee with names: ''
    And adresse : ''
    #ettre infos creation trainee
    Then 'persona1' is added to the project

Feature: upload a list of trainee
  As an project leader
  I want to upload a list of trainee
  In order to create the list of trainee in the project

  Scenario: the project leader create a lit of trainee from file
    Given the project is created
    When I add a list trainee from file with info:
    #ettre infos creation trainee
    Then list of 'persona1' are added to the project

Feature: upload a list of trainee
  As an project leader
  I want to upload a list of trainee
  In order to create the list of trainee in the project

  Scenario: the project leader create a lit of trainee from file
    Given the project is created
    When I add a list trainee from file with info:
    #ettre infos creation trainee
    Then list of 'persona1' are added to the project

Feature: edit a trainee
  As an project leader
  I want to edit a trainee
  In order to modify the infos of a existing trainee

  Scenario: the project leader create th trainee
    Given the project is created
    When I edit a trainee by changing infos : ''
    #ettre infos creation trainee
    Then 'persona1' has new infos

Feature: delete a trainee
  As an project leader
  I want to delete a trainee
  In order to remove the trainee from the project

  Scenario: the project leader delete the trainee
    Given the project is created
    When I delete a trainee ''
    #ettre infos creation trainee
    Then 'persona1' is removed from project



